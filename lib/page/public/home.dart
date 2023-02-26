import 'package:anketure/page/schema/top.dart';
import 'package:anketure/widget/text.dart';
import 'package:flutter/material.dart';
import '../../theme/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.backgroundColor,
      body: TopBar(
        backgroundColor: ThemeColor.backgroundColor,
        leftWidgets: PoppinsText(
          title: "Anketure",
          color: ThemeColor.textColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
        rightWidgets: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: ThemeColor.buttonTextColor,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.question_answer_rounded,
                color: ThemeColor.buttonTextColor,
                size: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.person,
                color: ThemeColor.buttonTextColor,
                size: 30,
              ),
            ),
          ],
        ),
        child: Center(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ThemeColor.singleButtonColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
