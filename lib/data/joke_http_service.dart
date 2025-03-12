import 'dart:convert';
import 'package:http/http.dart' as http;
import '/model/joke_model.dart';

class JokeService {
  Future<List<JokeModel>> getRandomJokes() async {
    final response = await http.get(Uri.parse('https://api.jokes.one/jod'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      List<JokeModel> jokes = (jsonResponse['contents']['jokes'] as List)
          .map((joke) => JokeModel.fromJson(joke['joke']))
          .toList();
      return jokes;
    } else {
      throw Exception('Failed to load jokes');
    }
  }
}