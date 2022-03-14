import 'package:flutter/material.dart';
import 'package:flutterlab/reloadListView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LabFlutter',
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Pokemons'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
          title: Text(title),
        ),
        body: ReloadListView());
  }
}
