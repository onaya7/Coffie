import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeGridViewWidget extends StatelessWidget {
  HomeGridViewWidget({
    super.key,
  });

  final List<double> ratings = [4.8, 4.8, 4.8, 4.8];
  final List<String> pngimageurl = [
    'assets/images/c1.png',
    'assets/images/c2.png',
    'assets/images/c3.png',
    'assets/images/c4.png',
  ];
  final List<double> amount = [4.53, 4.53, 4.53, 4.53];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 149 / 250,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        padding: const EdgeInsets.all(0.0),
        itemCount: ratings.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage(
                                pngimageurl[index].toString(),
                              ),
                              fit: BoxFit.cover)),
                      width: 141,
                      height: 132,
                    ),
                    Container(
                        width: 51,
                        height: 25,
                        decoration: BoxDecoration(
                            color:
                                Colors.black.withOpacity(0.1599999964237213),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              bottomRight: Radius.circular(16),
                            )),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 3),
                        child: Row(
                          children: <Widget>[
                            SvgPicture.asset('assets/images/star-icon.svg'),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              ratings[index].toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ))
                  ],
                ),
              ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$${amount[index].toString()}",
                          style: const TextStyle(
                              color: Color(0xFF2F4B4E),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: const Color(0xFFC67C4E),
                            borderRadius: BorderRadius.circular(10),
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
      ),
    );
  }
}
