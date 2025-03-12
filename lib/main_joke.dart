import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/joke_provider.dart';
import 'views/view_joke.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => JokeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jokes App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JokePage(),
    );
  }
}