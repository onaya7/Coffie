import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Column(
      children: [
        Container(
          width: w,
          height: h / 2,
          color: Colors.amberAccent,
          child: Image.asset(
            "assets/"
          ),
        ),
        Expanded(
          child: Container(
            width: w,
            padding: const EdgeInsets.only(top: 52.0, right: 30.0, left: 30.0),
            decoration: const BoxDecoration(color: Color.fromARGB(243, 0, 0, 0)
                ),
            child: Column(
              children: [
                const Text(
                  'Coffee so good, your taste buds will love it.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(255, 255, 255, 1)),
                ),
                const SizedBox(height: 8),
                const Text(
                  'The best grain, the finest roast, the powerful flavor.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(169, 169, 169, 1)),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: w,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.only(
                                right: 109, left: 109, top: 21, bottom: 21)),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromRGBO(198, 124, 78, 1)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {},
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 16, color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
