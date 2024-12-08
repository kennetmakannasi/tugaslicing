import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Pages/HomePage.dart'; // Pastikan import HomePage yang sesuai

class Allbarwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15, 
        horizontal: 15
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              // Ganti Navigator.pop() dengan Navigator.pushReplacement() untuk kembali ke Homepage
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Homepage()), // Pastikan Homepage sudah ada
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 50,
                    offset: const Offset(0, 3),
                  )
                ]
              ),
              child: const Icon(CupertinoIcons.arrow_left),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    spreadRadius: 5,
                    blurRadius: 50,
                    offset: const Offset(0, 3),
                  )
                ]
              ),
              child: const Icon(Icons.person),
            ),
          )
        ]
      ),
    );
  }
}
