// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/coffee_detail_data.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
            onTap: () => Navigator.pushNamed(context, '/home'),
            child: Container(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/images/caret-left.svg',
                color: Colors.black,
                width: 24,
                height: 24,
              ),
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
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(left: 31.0, top: 5, right: 29.0, bottom: 5),
          width: w,
          color: Colors.white,
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
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(data.pngimageurl.toString()))),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
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
                      Text.rich(TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: '${data.ratings}',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF2F2D2C))),
                        const TextSpan(text: ' '),
                        const TextSpan(
                            text: '(230)',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7F7F7F)))
                      ])),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(249, 249, 249, 1),
                            borderRadius: BorderRadius.circular(14)),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/bean.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(249, 249, 249, 1),
                            borderRadius: BorderRadius.circular(14)),
                        child: GestureDetector(
                          onTap: () {},
                          child: Image.asset(
                            'assets/images/milk.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
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
              const SizedBox(height: 20),
              // Description
              const Text(
                'Description',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 12,
              ),
              Text.rich(TextSpan(children: <TextSpan>[
                TextSpan(
                    children: <InlineSpan>[
                      WidgetSpan(
                          child: GestureDetector(
                        onTap: () {
                          // ignore: avoid_print
                          print('Read More tapped');
                        },
                        child: const Text(
                          'Read More',
                          style: TextStyle(
                              color: Color.fromRGBO(198, 124, 78, 1),
                              fontWeight: FontWeight.w600),
                        ),
                      ))
                    ],
                    text:
                        'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo..',
                    style:
                        const TextStyle(color: Color.fromRGBO(155, 155, 155, 1)))
              ])),
        
              const SizedBox(height: 20),
              const Text(
                'Size',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF2E2D2C)),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 96,
                    height: 43,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                              width: 1, color: Color(0xFFDEDEDE)),
                        ),
                      ),
                      child: const Text(
                        'S',
                        style: TextStyle(
                          color: Color(0xFF2F2D2C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 96,
                    height: 43,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.all(10),
                        shadowColor: const Color(0xFFFFF4EE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                              width: 1, color: Color(0xFFC67C4E)),
                        ),
                      ),
                      child: const Text(
                        'M',
                        style: TextStyle(
                          color: Color(0xFFC67C4E),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 96,
                    height: 43,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.all(10),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                          side: const BorderSide(
                              width: 1, color: Color(0xFFDEDEDE)),
                        ),
                      ),
                      child: const Text(
                        'L',
                        style: TextStyle(
                          color: Color(0xFF2F2D2C),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
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
        child: BottomAppBar(
            color: Colors.transparent,
            elevation: 0,
            height: 87,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Price',
                        style: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$ ${data.amount}',
                        style: const TextStyle(
                          color: Color(0xFFC67C4E),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 62,
                    width: 217,
                    child: TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/order',
                          arguments: CoffeeDetailData(
                              ratings: data.ratings,
                              pngimageurl: data.pngimageurl,
                              amount: data.amount,
                              index: data.index)),
                      style: TextButton.styleFrom(
                        elevation: 0,
                        backgroundColor: const Color(0xFFC67C4E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ])),
      ),
    );
  }
}
