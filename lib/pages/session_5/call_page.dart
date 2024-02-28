import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';

class CallPageWidget extends StatelessWidget {
  final String imgName;
  final String name;
  const CallPageWidget({
    super.key,
    required this.imgName,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/$imgName'),
                const SizedBox(height: 10),
                Text(
                  name,
                  style: const TextStyle(
                    color: Color(0xff0560FA),
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '+234 603 6543 7265',
                  style: TextStyle(
                    color: Color(0xffA7A7A7),
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                  ),
                ),
                const SizedBox(height: 120),
                Container(
                  padding: const EdgeInsets.all(55),
                  decoration: const BoxDecoration(
                    color: Color(0xffF2F2F2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/Frame 161.png'),
                          Image.asset('assets/images/Frame 160.png'),
                          Image.asset('assets/images/Frame 159.png'),
                        ],
                      ),
                      const SizedBox(height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/radix-icons_speaker-loud.png'),
                          Image.asset('assets/images/bi_mic-mute.png'),
                          Image.asset('assets/images/ion_keypad-outline.png'),
                        ],
                      ),
                      const SizedBox(height: 70),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Image.asset('assets/images/Frame 156.png'),
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
