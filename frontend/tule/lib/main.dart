import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tule/views/screens/landing.dart';
import 'package:tule/views/screens/signin.dart';
import 'package:tule/views/screens/signup.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const LandingPage()),
        GetPage(name: '/signin', page: () => const SignIn()),
        GetPage(name: '/signup', page: () => SignUp())
      ],
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}