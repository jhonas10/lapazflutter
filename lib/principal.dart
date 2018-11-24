import 'package:flutter/material.dart';
class Main extends StatefulWidget {
  @override
  _MainState createState() => new _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    final comida =Center(
        child:InkWell(
          splashColor: Colors.green,
            onTap: (){
              debugPrint("Presionado");
            },
            child: Column(
              children: <Widget>[
                //Icon(_icono,size: 40.0,color: Colors.white,),
                Image.asset('assets/comida.jpg',height: 250.0,),
                Container(
                    padding: EdgeInsets.only(top:5.0),
                    child:Text("Comida",style: TextStyle(fontSize: 25.0,color: Colors.red),)
                ),
                Container(

                    padding: EdgeInsets.only(top:5.0),
                  child:Text("The salteña is a juicy pie, stuffed with beef, hard-boiled egg, olives, spices and baked, usually accompanied by a juice that is part of the jigote preparation.It represents one of the most consumed foods in La Paz at midmorning and it is generally consue in squares and streets at the pass.Salteña is consumed in several parts of the country, but it is in La Paz that consumption of almost 50% is consumed throughout Bolivia.",style: TextStyle(fontSize: 25.0,color: Colors.blueGrey)),

                ),
              ],
            )
        )
    );
   /* final transporte =Center(
        child:InkWell(
            splashColor: Colors.green,
            onTap: (){
              debugPrint("Presionado 2");
            },
            child: Column(
              children: <Widget>[
                //Icon(_icono,size: 40.0,color: Colors.white,),
                Image.asset('assets/transporte.jpg',height: 240.0),
                Container(

                    padding: EdgeInsets.only(top:5.0),
                    child:Text("Transporte",style: TextStyle(fontSize: 25.0,color: Colors.red,))
                ),

              ],
            )
        )
    );

    final plazas =Center(
        child:InkWell(
            splashColor: Colors.green,
            onTap: (){
              debugPrint("Presionado 3");
            },
            child: Column(
              children: <Widget>[
                //Icon(_icono,size: 40.0,color: Colors.white,),
                Image.asset('assets/plazas.jpg',height: 250.0,),
                Container(

                    padding: EdgeInsets.only(top:5.0),
                    child:Text("Plazas",style: TextStyle(fontSize: 25.0,color: Colors.red,))
                ),

              ],
            )
        )
    );*/
    return Scaffold(
      appBar: AppBar(centerTitle: true,
       elevation: 10.0,
        title: Text('This is La Paz'),
      ), //appBar
      body: Column(
        children: <Widget>[
          comida,
          //ansporte,
          //plazas
        ],
      ),

    );
  }
}

