import 'package:flutter/material.dart';
import 'package:app_la_paz_wonderful_city/category.dart';
//Color van desde 0 hasta 200
final _backgroudColor =Colors.green[90];

class CategoryRoute extends StatelessWidget{
  const CategoryRoute ();


  Widget _buildWidget (List<Widget> categories){
    return ListView.builder(
      itemBuilder: (BuildContext context, int index)=> categories[index],
      itemCount: categories.length,
    );
  }


  @override
  Widget build(BuildContext context) {
    final categories  = <Category>[];
    categories.add(
        Category(
            name: 'Mini Buses',
            color: Colors.redAccent,
            iconLocation: Icons.airline_seat_flat)
    );
    categories.add(
        Category(
            name: 'Taxi',
            color: Colors.green,
            iconLocation: Icons.local_taxi)
    );

    categories.add(
        Category(
            name: 'CableCar',
            color: Colors.grey,
            iconLocation: Icons.place)
    );
    categories.add(
        Category(
            name: 'Airport',
            color: Colors.blue,
            iconLocation: Icons.local_airport)
    );
    categories.add(
        Category(
            name: 'Puma Katari',
            color: Colors.redAccent,
            iconLocation: Icons.directions_bus)
    );
    categories.add(
        Category(
            name: 'Trufis',
            color: Colors.yellowAccent,
            iconLocation: Icons.local_taxi)
    );
    categories.add(
        Category(
            name: 'Directions',
            color: Colors.amber,
            iconLocation: Icons.directions)
    );

    /*
    for(var i =0; i<10; i++){
      categories.add(
          Category(
              name: 'Food of La Paz',
              color: Colors.lime,
              iconLocation: Icons.local_drink)
      );

    }*/

    final ListView = Container(
      color: _backgroudColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildWidget(categories),

    );

    final appBar = AppBar(
      elevation: 10.0,
      centerTitle: true,
      title: Text('This is La Paz'),
    );

    return Scaffold(
      appBar: appBar,
      body: ListView,
    );
  }


}