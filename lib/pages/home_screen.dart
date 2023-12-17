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
                      Container(
                          padding: const EdgeInsets.only(
                              left: 30, top: 5, right: 30, bottom: 5),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    const Row(
                                      children: <Widget>[
                                        Text(
                                          'Location',
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              color: Color.fromRGBO(
                                                  183, 183, 183, 1)),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        const Text(
                                          'Bilzen, Tanjungbalai',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                221, 221, 221, 1),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          padding: const EdgeInsets.all(0.0),
                                          style: ButtonStyle(
                                            padding: MaterialStateProperty.all(
                                                const EdgeInsets.all(0.0)),
                                            iconSize:
                                                MaterialStateProperty.all(20),
                                            iconColor:
                                                MaterialStateProperty.all(
                                              const Color.fromRGBO(
                                                  221, 221, 221, 1),
                                            ),
                                          ),
                                          icon: const Icon(
                                            Icons.keyboard_arrow_down,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/avatar.png'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ))
                    ],
                  ),

                  const SizedBox(height: 10,),

                  // search bar
                  Container(
                    width: 315,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color.fromRGBO(49, 49, 49, 1),
                    ),
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
