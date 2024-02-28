import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Onboarding3Page extends StatelessWidget {
  const Onboarding3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  const SizedBox(height: 50),
                  Image.asset('assets/images/s1_Onboarding 3.png'),
                  const SizedBox(height: 50),
                  const Text(
                    'Real-time Tracking',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 28,
                      color: Color.fromARGB(255, 5, 96, 250),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'TRack your packages/items from the comfort of your home till final destination',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color.fromARGB(255, 58, 58, 58),
                      ),
                    ),
                  ),
                  const SizedBox(height: 120),
                  SizedBox(
                    width: 342,
                    height: 50,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        backgroundColor: const Color.fromARGB(255, 5, 96, 250),
                      ),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account?',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 167, 167, 167)),
                          children: <TextSpan>[
                            TextSpan(
                            text: 'Sign in',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 5, 96, 250),
                              ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/login');
                              }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}