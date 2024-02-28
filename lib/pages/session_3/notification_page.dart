import 'package:flutter/material.dart';
import 'package:untitled/widgets/app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        elevation: 4.0,
        centerTitle: true,
        title: const AppBarWidget(
          text: 'Profile',
          isBack: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                width: 83,
                height: 83,
                child: Image.asset('assets/images/notification.png'),
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                'You have no notification',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3a3a3a)),
              )
            ],
          ),
        ),
      ),
    );
  }
}