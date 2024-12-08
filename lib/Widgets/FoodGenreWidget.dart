import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:food_app/Pages/CartPage.dart';

final supabase = Supabase.instance.client;

Future<List<dynamic>> fetchFood() async {
  final List<Map<String, dynamic>> response = await supabase.from('Food').select('*');
  return response as List<dynamic>;
}

class Foodgenrewidget extends StatefulWidget {
  const Foodgenrewidget({super.key});

  @override
  _FoodgenrewidgetState createState() => _FoodgenrewidgetState();
}

class _FoodgenrewidgetState extends State<Foodgenrewidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchFood(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(child: Text('No data found'));
        } else {
          final data = snapshot.data!;
          return Align(
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Wrap(
                children: data.map<Widget>((item) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: Container(
                      width: 160,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 10),
                              alignment: Alignment.center,
                              height: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: item['food_image'] != null
                                    ? Image.asset(
                                        'assets/${item['food_image']}',
                                        width: 120,
                                        height: 120,
                                        fit: BoxFit.cover,
                                      )
                                    : const Icon(Icons.image_not_supported, color: Colors.grey),
                              ),
                            ),
                            Text(
                              item['food_name'] ?? 'Unknown Item',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Rp. ${item['food_price']}',
                                  style: const TextStyle(fontSize: 14),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Passing the selected item to Cartpage
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Cartpage(
                                          addedItem: item,  // Passing the selected item
                                        ),
                                      ),
                                    ).then((_) {
                                      setState(() {});
                                    });
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          );
        }
      },
    );
  }
}
