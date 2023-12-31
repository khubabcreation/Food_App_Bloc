import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screeen/Splash_Services.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({ this.check,Key? key}) : super(key: key);
  bool? check;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashServices services = SplashServices();
  @override
  void initState() {
    super.initState();
    services.login(context);
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF6B5E55),
              Color(0xFF5D5047),
              Color(0xFF423731),
              Color(0xFF382D27),
              Color(0xFF302720),
            ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
          ),
          child: Center(
              child: Text(
            'Maher Kitchen',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ))),
    );
  }
}
