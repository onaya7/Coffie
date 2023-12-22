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
            const EdgeInsets.only(left: 31.0, top: 5, right: 29.0, bottom: 5),
        width: w,
        color: Colors.white,
        child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[]),
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
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Color(0xFF9B9B9B),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$ 4.53',
                        style: TextStyle(
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
                      onPressed: () => Navigator.pushNamed(context, '/order'),
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
