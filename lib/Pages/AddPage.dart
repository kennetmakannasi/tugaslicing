import 'package:flutter/material.dart';
import 'package:food_app/Pages/FormPage.dart';
import 'package:food_app/Widgets/AllBarWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPage extends StatelessWidget {
  
  AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Allbarwidget(),
            Container(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 2,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      onPressed: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context) => Formpage()));
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Add Data',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                          const SizedBox(width: 2),
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Text("Foto"),
                  ),
                  Padding(padding: EdgeInsets.only(left: 50),
                  child: Text("Nama Produk"),
                  ),
                  Padding(padding: EdgeInsets.only(left: 50),
                  child: Text("Harga"),
                  ),
                  Padding(padding: EdgeInsets.only(left: 50),
                  child: Text("Aksi"),
                  ),
                  
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Image.asset(
                      'burger.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Burger King Medium',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Rp.50.000',
                          style: TextStyle(color: Colors.grey,fontSize: 14),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(CupertinoIcons.trash, color: Colors.red),
                      onPressed: () {},
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Image.asset(
                      'teh_botol.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Row(
                      children: [
                        Text(
                          'Teh Botol',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          'Rp.4.000',
                          style: TextStyle(color: Colors.grey,fontSize: 14),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(CupertinoIcons.trash, color: Colors.red),
                      onPressed: () {},
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
