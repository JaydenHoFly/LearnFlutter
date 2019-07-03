import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1/index.html?index=..%2F..index#4
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
//          child: Text(wordPair.asPascalCase),
            child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Text(WordPair
        .random()
        .asPascalCase);
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RandomWordsState();
}
