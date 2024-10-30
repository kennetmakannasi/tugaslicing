import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Widgets/AllBarWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class Formpage extends StatelessWidget{
  Formpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Allbarwidget(),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("Nama Produk"),
                    padding: EdgeInsets.only(left: 30,top: 30,bottom: 10),
                  ),
                  Container( padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Text("Masukan Nama Produk",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow( 
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: const Offset(0,3),)
                    ]
                  ),
                  ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("Harga"),
                    padding: EdgeInsets.only(left: 30,top: 30,bottom: 10),
                  ),
                  Container( padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Text("Masukan Harga",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow( 
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: const Offset(0,3),)
                    ]
                  ),
                  ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("Kategori Produk"),
                    padding: EdgeInsets.only(left: 30,top: 30,bottom: 10),
                  ),
                  Container( padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Text("Makanan",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow( 
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: const Offset(0,3),)
                    ]
                  ),
                  ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("Image"),
                    padding: EdgeInsets.only(left: 30,top: 30,bottom: 10),
                  ),
                  Container( padding: EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  child: Text("Choose file",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow( 
                      color: Colors.black.withOpacity(0.6),
                      spreadRadius: 3,
                      blurRadius: 8,
                      offset: const Offset(0,3),)
                    ]
                  ),
                  ),
                  ),

                  Container( padding: EdgeInsets.only(left: 20,right: 20,top: 50),
                  child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 120),
                  child: Text("Submit",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color.fromARGB(255, 51, 71, 215),
                  ),
                  ),
                  ),

                  
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}