import 'package:coffie/screens/detail_screen.dart';
import 'package:coffie/screens/home_screen.dart';
import 'package:coffie/screens/onbording_screen.dart';
import 'package:coffie/screens/order_screen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/home': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
         '/order': (context) => const OrderScreen()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColorLight: Colors.white,
        primaryColorDark: Colors.black,
        useMaterial3: true,
        fontFamily: 'Sora',
      ),
    );
  }
}
