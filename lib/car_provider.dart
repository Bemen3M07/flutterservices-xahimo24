import 'package:flutter/material.dart';
import 'car_http_service.dart';
import 'car_model.dart';

class CarProvider with ChangeNotifier {
  List<CarModel> _cars = [];
  bool _isLoading = false;

  List<CarModel> get cars => _cars;
  bool get isLoading => _isLoading;

  Future<void> fetchCars() async {
    _isLoading = true;
    notifyListeners();

    CarService carService = CarService();
    _cars = await carService.getCars();

    _isLoading = false;
    notifyListeners();
  }
}