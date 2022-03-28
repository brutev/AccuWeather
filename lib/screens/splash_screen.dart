import 'package:flutter/material.dart';
import 'package:accuweather/screens/loading_screen.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);


  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoadingScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'AccuWeather ⛅️',
          style: TextStyle(fontSize: 40,fontWeight:FontWeight.bold),
        ),
      ),
    );
  }
}
