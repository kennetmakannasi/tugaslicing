import 'package:flutter/material.dart';
import 'package:food_app/Pages/CartPage.dart';
import 'package:food_app/Pages/HomePage.dart';
import 'package:food_app/Pages/AddPage.dart';
import 'package:food_app/Pages/FormPage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  const url = 'https://njmbohkejzwdqswwdmgt.supabase.co';
  const anonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5qbWJvaGtlanp3ZHFzd3dkbWd0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzExNDc0NTAsImV4cCI6MjA0NjcyMzQ1MH0.E0-LbVQBuO5qYVqju7sT4QB4J1MR16TvYvFKDy0FCDQ';
  await Supabase.initialize(
    url: url,
    anonKey: anonKey,
  );
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());

  FlutterNativeSplash.remove();
}

final supabase = Supabase.instance.client;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Makanan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffff5f5f3)),
      routes: {
        "/": (context) => Homepage(),
        "/CartPage": (context) => Cartpage(),
        "/AddPage": (context) => AddPage(),
        "/FormPage":(context) => Formpage()
      },
    );
  }
}
