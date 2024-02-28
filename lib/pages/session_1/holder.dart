import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/pages/session_2/signUp_page.dart';

class HolderPage extends StatefulWidget {
  const HolderPage({super.key});

  @override
  _HolderPageState createState() => _HolderPageState();
}

class _HolderPageState extends State<HolderPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const SignUpPage())));
  }
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffffffff),
    );
  }
}