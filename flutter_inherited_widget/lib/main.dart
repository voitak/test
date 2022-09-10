import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget/inheritedWidget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Movies MVVM Example",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const Example(),
    );
  }
}
