import 'package:coffie/widgets/home_gridview_widget.dart';
import 'package:coffie/widgets/home_header_widget.dart';
import 'package:coffie/widgets/home_listview_widget.dart';
import 'package:coffie/widgets/home_promocontainer_widget.dart';
import 'package:coffie/widgets/home_searchbar_widget.dart';
import 'package:flutter/material.dart';

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
                    const HomeGridViewWidget()
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
