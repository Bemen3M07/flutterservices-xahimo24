import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/model/car_model.dart'; // Asegúrate de que la ruta sea correcta
import '/providers/car_provider.dart'; // Asegúrate de que la ruta sea correcta

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    // Llama a fetchCars cuando el widget se inicializa
    Provider.of<CarProvider>(context, listen: false).fetchCars();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Car List"),
      ),
      body: Consumer<CarProvider>(
        builder: (context, carProvider, child) {
          if (carProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: carProvider.cars.length,
              itemBuilder: (context, index) {
                CarsModel car = carProvider.cars[index];
                return ListTile(
                  title: Text('${car.make} ${car.model}'),
                  subtitle: Text('Year: ${car.year}\nType: ${car.type}'),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CarProvider>(context, listen: false).fetchCars();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}