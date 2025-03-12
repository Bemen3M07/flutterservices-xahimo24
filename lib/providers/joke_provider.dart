import 'package:flutter/material.dart';
import '/data/joke_http_service.dart';
import '/model/joke_model.dart';

class JokeProvider with ChangeNotifier {
  List<JokeModel> _jokes = [];
  bool _isLoading = false;

  List<JokeModel> get jokes => _jokes;
  bool get isLoading => _isLoading;

  Future<void> fetchJokes() async {
    _isLoading = true;
    notifyListeners();

    JokeService jokeService = JokeService();
    List<JokeModel> fetchedJokes = await jokeService.getRandomJokes();
    _jokes = fetchedJokes;

    _isLoading = false;
    notifyListeners();
  }
}