import 'package:flutter/material.dart';
import 'package:accuweather/screens/loading_screen.dart';
import 'package:accuweather/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoadingScreen(),
        initialRoute: 'Splash',
        routes: {

          'Splash' :(context) => const Splash(),
          'LoadingScreen':(context)=>const LoadingScreen(),
        }
    );
  }
}
