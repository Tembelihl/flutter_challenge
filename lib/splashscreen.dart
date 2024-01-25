import 'package:flutter/material.dart';

import 'mapscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
void initState() {
  super.initState();
  navigatetomap();
}

navigatetomap()async{
  await Future.delayed(Duration(milliseconds: 3000), () {});
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MapScreen()));
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF5722), 

          centerTitle: false,
          title: Container(
            child: Image.asset('Images/Quickloc8-logo.png'),
            height: 32,
          ),
        ),
      ),
    );
  }
}