import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/pages/session_3/main_page.dart';
//import 'package:untitled/pages/session_1/splash.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenScreenState createState() => _HomeScreenScreenState();
}

class _HomeScreenScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const MainPage())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 26,
          ),
        )
      ),
    );
  }
}