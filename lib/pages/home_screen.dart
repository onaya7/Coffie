import 'package:coffie/widgets/home_header_widget.dart';
import 'package:coffie/widgets/home_listview_widget.dart';
import 'package:coffie/widgets/home_promocontainer_widget.dart';
import 'package:coffie/widgets/home_searchbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    // var h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        body: Stack(
          children: <Widget>[
            Container(
              height: 280,
              width: w,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xff131313), Color(0xff303030)],
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SafeArea(
                child: Column(
                  children: <Widget>[
                    const HomeHeaderWidget(),

                    // Searchbar
                    HomeSearchBarWidget(w: w),

                    const SizedBox(
                      height: 20,
                    ),

                    // promo container
                    PromoContainerWidget(w: w),

                    const SizedBox(
                      height: 24,
                    ),

                    // Listview
                    HomeListViewWidget(w: w),

                    const SizedBox(
                      height: 24,
                    ),

                    // Gridview
                    Container(
                        width: 149,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            const Image(
                                image: AssetImage(
                              'assets/images/c1.png',
                            )),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                        ))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
