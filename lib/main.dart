import 'package:flutter/material.dart';
import 'page/public/home.dart';
import 'package:get/get.dart';

void main() {
  runApp(const Anketure());
}

class Anketure extends StatelessWidget {
  const Anketure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
