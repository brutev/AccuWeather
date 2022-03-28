import 'package:accuweather/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:accuweather/services/weather.dart';




class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}
class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context)
    {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.greenAccent,
          size: 100.0,
        ),
      ),
    );
  }
}

