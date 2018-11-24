import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_la_paz_wonderful_city/primerLayout.dart';
import 'principal.dart';
import 'categoryroute.dart';
//import 'package:responsive_desing_and_packages/cuentaLayout.dart';

void main() => runApp(new MyApp());


class LayoutPrincipal extends StatefulWidget{

  @override
  _tabs createState()=>_tabs();
}

class _tabs extends State<LayoutPrincipal>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            backgroundColor: CupertinoColors.lightBackgroundGray,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                  title: Text('History')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.fastfood),
                  title: Text('Food')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.local_drink),
                  title: Text('Festivities')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.directions_car),
                  title: Text('Transport')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.place),
                  title: Text('Places')),
            ],
          ),
          tabBuilder: (context,index){
            return CupertinoTabView(
              builder: (context){
                switch(index){
                  case 0:
                  //return Container();
                    return primerLayout();
                  case 1:
                    return Main();
                  case 2:
                    return Container(
                    );
                  case 3:
                  return CategoryRoute();
                  case 4:
                    return Container();
                //return cuentaLayout();
                  default:
                    return Container();
                }
              },
            );
          }),
    );
  }
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: 'This is La Paz',
      debugShowCheckedModeBanner: false,

      home: LayoutPrincipal(),
    );
  }
}