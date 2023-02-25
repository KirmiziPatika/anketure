import 'package:flutter/material.dart';

void main() {
  runApp(const Anketure());
}

class Anketure extends StatelessWidget {
  const Anketure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Center(),
    );
  }
}
