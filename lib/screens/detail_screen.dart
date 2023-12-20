import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 31.0),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/home'),
            child: SvgPicture.asset(
              'assets/images/caret-left.svg',
              color: Colors.black,
              width: 24,
              height: 24,
            ),
          ),
        ),
        title: const Text(
          'Detail',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2F2D2C)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 29.0),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/images/heart2.svg',
                color: Colors.black,
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 31.0, top: 5, right: 29.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                width: w,
                height: 226,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.black,
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/d1.png'))),
              ),
            ),
            const SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Cappucino
                    Text(
                      'Cappucino',
                      style: TextStyle(
                          color: Color(0xFF2E2D2C),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    // with Chocolate
                    Text(
                      'with Chocolate',
                      style: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ]),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SvgPicture.asset(
                      'assets/images/star-icon.svg',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text.rich(TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: '4.8',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2F2D2C))),
                      TextSpan(text: ' '),
                      TextSpan(
                          text: '(230)',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7F7F7F)))
                    ])),
                    Container(
                      color: Colors.blue,
                      child: SvgPicture.asset(
                        'assets/images/heart2.svg',
                        height: 44,
                        width: 44,
                        fit: BoxFit.contain,
                        color: Colors.transparent,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
