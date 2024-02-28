import 'package:flutter/material.dart';

class Onboarding1Page extends StatelessWidget {
  const Onboarding1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 20),
                Image.asset('assets/images/s1_Onboarding 1.png'),
                const SizedBox(height: 50),
                const Text(
                  'Quick Delivery At Your Doorstep',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 28,
                    color: Color.fromARGB(255, 5, 96, 250),
                  ),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Enjoy quick pick-up and delivery to your destination',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color.fromARGB(255, 58, 58, 58)),
                  ),
                ),
                const SizedBox(height: 70),
                Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/onb3');
                        },
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: 
                                      BorderRadius.circular(5.0),
                                    side: const BorderSide(
                                        color: Color.fromARGB(255, 5, 96, 250),
                                        width: 1)))),
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 5, 96, 250),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/onb2');
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(5.0), 
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 5, 96, 250),
                        ),
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}