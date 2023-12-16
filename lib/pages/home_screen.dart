import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 280,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xff131313), Color(0xff303030)],
        )),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Location',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(183, 183, 183, 1)),
                          ),
                          Row(
                            children: <Widget>[
                              const Text(
                                'Bilzen, Tanjungbalai',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(221, 221, 221, 1)),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_down,
                                ),
                                iconSize: 30,
                                color: const Color.fromRGBO(221, 221, 221, 1),
                              )
                            ],
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/avatar.png"),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
