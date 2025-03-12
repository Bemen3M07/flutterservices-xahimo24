import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/providers/joke_provider.dart';
import '/model/joke_model.dart'; 

class JokePage extends StatefulWidget {
  @override
  _JokePageState createState() => _JokePageState();
}

class _JokePageState extends State<JokePage> {
  @override
  void initState() {
    super.initState();
    // Llama a fetchJokes cuando el widget se inicializa
    Provider.of<JokeProvider>(context, listen: false).fetchJokes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Random Jokes"),
      ),
      body: Consumer<JokeProvider>(
        builder: (context, jokeProvider, child) {
          if (jokeProvider.isLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: jokeProvider.jokes.length,
              itemBuilder: (context, index) {
                JokeModel joke = jokeProvider.jokes[index];
                return ListTile(
                  title: Text(joke.joke),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<JokeProvider>(context, listen: false).fetchJokes();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}