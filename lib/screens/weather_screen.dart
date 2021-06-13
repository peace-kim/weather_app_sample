import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  // const WeatherScreen({Key? key}) : super(key: key);

  final dynamic parseWeatherData;  
  WeatherScreen({this.parseWeatherData});

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  String? cityName;
  int? temp;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherdata){
      double temp2 = weatherdata['main']['temp'];
      temp = temp2.round();
      cityName = weatherdata['name'];

      print(temp);
      print(cityName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$cityName',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '$temp',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
