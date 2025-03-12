import 'package:flutter/material.dart';
import '../data/car_http_service.dart';
import '../model/car_model.dart';

class CarProvider with ChangeNotifier {
  List<CarsModel> _cars = [];
  bool _isLoading = false;

  List<CarsModel> get cars => _cars;
  bool get isLoading => _isLoading;

  Future<void> fetchCars() async {
    _isLoading = true;
    notifyListeners();

    CarHttpService carService = CarHttpService();
    _cars = await carService.getCars();

    _isLoading = false;
    notifyListeners();
  }
}