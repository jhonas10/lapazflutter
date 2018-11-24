import 'package:flutter/material.dart';
import 'package:app_la_paz_wonderful_city/SplashScreen.dart';

void main(){
  runApp(
      MaterialApp(
        home: SplashScreem(),
        theme: ThemeData(
            primaryColor: Colors.green,
            accentColor: Colors.green[600]
        ),
      )
  );
}