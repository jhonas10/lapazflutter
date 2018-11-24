import 'package:flutter/material.dart';
import 'dart:async';

import 'package:app_la_paz_wonderful_city/principal.dart';
import 'package:app_la_paz_wonderful_city/menuprincipal.dart';

class SplashScreem extends StatefulWidget {
  @override
  _SplashScreemState createState() => _SplashScreemState();
}

class _SplashScreemState extends State<SplashScreem> {
  Timer _timer;
  @override
  void initState() {
    _timer = Timer(const Duration(seconds: 5), _onShowLogin);
    super.initState();
  }

  _onShowLogin() {
    if (mounted) {
      // Pasará a la siguiente pantalla (contedido de login_page.dart)
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return LayoutPrincipal();
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //Image.asset('assets/splash.jpg',height: 250.0,),
          Container(
            decoration:  BoxDecoration(color: Colors.green),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 100.0,
                        child: Icon(
                          Icons.location_city,
                          color: Colors.redAccent,
                          size: 150.0,
                        ),
                      ),//Circle Avatar
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "This is La Paz",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],//widget
                  ),
                ),
              ),
              Expanded(flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text("All About \n La Paz",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize:18.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),//expaned
            ],
          )
        ],
      ) ,
    );
  }

}
