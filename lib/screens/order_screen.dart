// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 31.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(
              context,
              '/detail',
            ),
            child: SvgPicture.asset(
              'assets/images/caret-left.svg',
              color: Colors.black,
              width: 24,
              height: 24,
            ),
          ),
        ),
        title: const Text(
          'Order',
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2F2D2C)),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(left: 30.0, top: 5, right: 30.0, bottom: 5),
        width: w,
        color: Colors.white,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  width: 315,
                  height: 48,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF2F2F2),
                      borderRadius: BorderRadius.circular(14)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print('Deliver button');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 153.50,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFFC67C4E),
                              borderRadius: BorderRadius.circular(10)),
                          child:
                              // Deliver
                              const Text(
                            'Deliver',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Pick Up button');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 153.50,
                          height: 40,
                          decoration: BoxDecoration(
                              color: const Color(0xFFF2F2F2),
                              borderRadius: BorderRadius.circular(10)),
                          child:
                              // Pick Up
                              const Text(
                            'Pick Up',
                            style: TextStyle(
                                color: Color(0xFF2E2D2C),
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color(0x3FE4E4E4),
              blurRadius: 24,
              offset: Offset(0, -10),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          color: Colors.white,
        ),
        child: const BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          height: 87,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        ),
      ),
    );
  }
}
