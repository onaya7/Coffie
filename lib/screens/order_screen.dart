// ignore_for_file: deprecated_member_use, avoid_print

import 'package:coffie/models/coffee_detail_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final CoffeeDetailData data =
        ModalRoute.of(context)!.settings.arguments as CoffeeDetailData;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 31.0),
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(
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
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Delivery Address',
                    style: TextStyle(
                        color: Color(0xFF2F2D2C),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    'Jl. Kpg Sutoyo',
                    style: TextStyle(
                        color: Color(0xFF303336),
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                    style: TextStyle(
                        color: Color(0xFF7F7F7F),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          print('edit address button pressed');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFFDEDEDE)),
                                  borderRadius: BorderRadius.circular(16))),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset('assets/images/icon-edit.svg'),
                              const SizedBox(width: 4),
                              const Text(
                                'Edit Address',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF303336)),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Add Note button pressed');
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 1, color: Color(0xFFDEDEDE)),
                                  borderRadius: BorderRadius.circular(16))),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset('assets/images/icon-note.svg'),
                              const SizedBox(width: 4),
                              const Text(
                                'Add Note',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF303336)),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Color(0xFFEAEAEA),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                data.pngimageurl,
                              ),
                            )),
                        width: 54,
                        height: 54,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Cappucino',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2F2D2C)),
                          ),
                          Text(
                            'with Chocolate',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF9B9B9B)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: 90,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            print("minus button");
                          },
                          child: Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFEAEAEA)))),
                            child: SvgPicture.asset(
                              'assets/images/icon-minus.svg',
                              width: 16,
                              height: 16,
                            ),
                          ),
                        ),
                        const Text(
                          '1',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2F2D2C)),
                        ),
                        GestureDetector(
                          onTap: () {
                            print("add button");
                          },
                          child: Container(
                            width: 28,
                            height: 28,
                            alignment: Alignment.center,
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    side: const BorderSide(
                                        width: 1, color: Color(0xFFEAEAEA)))),
                            child: SvgPicture.asset(
                              'assets/images/icon-plus.svg',
                              width: 16,
                              height: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
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
