import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeGridViewWidget extends StatelessWidget {
  const HomeGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.all(0.0),
        crossAxisCount: 2,
        childAspectRatio: (149 / 250),
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    children: <Widget>[
                      const Image(
                        image: AssetImage(
                          'assets/images/c1.png',
                        ),
                        width: 141,
                        height: 132,
                      ),
                      Positioned(
                        top: 3,
                        left: 8,
                        child: SizedBox(
                            child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                                'assets/images/star-icon.svg'),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              '4.8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      // Cappucino
                      const Text(
                        "Cappucino",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      // with Chocolate
                      const Text(
                        "with Chocolate",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // $ 4.53
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$4.53",
                            style: TextStyle(
                                color: Color(0xFF2F4B4E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFC67C4E),
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/images/add-icon.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    children: <Widget>[
                      const Image(
                        image: AssetImage(
                          'assets/images/c1.png',
                        ),
                        width: 141,
                        height: 132,
                      ),
                      Positioned(
                        top: 3,
                        left: 8,
                        child: SizedBox(
                            child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                                'assets/images/star-icon.svg'),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              '4.8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      // Cappucino
                      const Text(
                        "Cappucino",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      // with Chocolate
                      const Text(
                        "with Chocolate",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // $ 4.53
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$4.53",
                            style: TextStyle(
                                color: Color(0xFF2F4B4E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFC67C4E),
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/images/add-icon.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    children: <Widget>[
                      const Image(
                        image: AssetImage(
                          'assets/images/c1.png',
                        ),
                        width: 141,
                        height: 132,
                      ),
                      Positioned(
                        top: 3,
                        left: 8,
                        child: SizedBox(
                            child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                                'assets/images/star-icon.svg'),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              '4.8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      // Cappucino
                      const Text(
                        "Cappucino",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      // with Chocolate
                      const Text(
                        "with Chocolate",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // $ 4.53
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$4.53",
                            style: TextStyle(
                                color: Color(0xFF2F4B4E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFC67C4E),
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/images/add-icon.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Stack(
                    children: <Widget>[
                      const Image(
                        image: AssetImage(
                          'assets/images/c1.png',
                        ),
                        width: 141,
                        height: 132,
                      ),
                      Positioned(
                        top: 3,
                        left: 8,
                        child: SizedBox(
                            child: Row(
                          children: <Widget>[
                            SvgPicture.asset(
                                'assets/images/star-icon.svg'),
                            const SizedBox(
                              width: 2,
                            ),
                            const Text(
                              '4.8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      // Cappucino
                      const Text(
                        "Cappucino",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      // with Chocolate
                      const Text(
                        "with Chocolate",
                        style: TextStyle(
                            color: Color(0xFF2F2D2C),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      // $ 4.53
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "\$4.53",
                            style: TextStyle(
                                color: Color(0xFF2F4B4E),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                              color: const Color(0xFFC67C4E),
                              borderRadius:
                                  BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/images/add-icon.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
