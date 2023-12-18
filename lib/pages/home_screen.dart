import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    // var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Container(
        height: 280,
        width: w,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xff131313), Color(0xff303030)],
        )),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(183, 183, 183, 1)),
                        ),
                        Row(
                          children: <Widget>[
                            const Text(
                              "Bilzen, Tanjungbalai",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(183, 183, 183, 1)),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                size: 20,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Image avatar
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/avatar.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),

                // Searchbar
                Container(
                  width: w,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color.fromRGBO(49, 49, 49, 1),
                  ),
                  child: SearchBar(
                    backgroundColor: MaterialStateProperty.all(Colors.transparent),
                    padding: MaterialStateProperty.all(const EdgeInsets.only(
                        left: 16.0, top: 4.0, right: 4.0, bottom: 4.0)),
                    elevation: MaterialStateProperty.all(0.0),
                    leading: SvgPicture.asset('assets/images/search-icon.svg'),
                    hintText: "Search coffee",
                    textStyle: MaterialStateProperty.all(const TextStyle(
                        color: Color.fromRGBO(152, 152, 152, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w400)),
                    trailing: <Widget>[
                      Row(
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: const Color.fromRGBO(198, 124, 78, 1),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/images/filter-icon.svg',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
