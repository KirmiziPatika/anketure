import 'package:anketure/theme/color.dart';
import 'package:anketure/widget/button.dart';
import 'package:anketure/widget/radiotext.dart';
import 'package:anketure/widget/text.dart';
import 'package:anketure/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPost extends StatelessWidget {
  const AddPost({super.key});

  @override
  Widget build(BuildContext context) {
    return PreView();
  }
}

class PreView extends StatelessWidget {
  List<String> choices = ["Seçenek 1"];
  final TextEditingController _controllerTitle = TextEditingController();
  final TextEditingController _controllerQuestion = TextEditingController();
  final TextEditingController controllerRadio =
      TextEditingController(text: "Seçenek");

  PreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ThemeColor.secretColor,
      ),
      width: Get.width / 2 - 50,
      height: Get.width / 4,
      child: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: Get.width / 2 - 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextField(
                  textfieldController: _controllerTitle,
                  labelText: "Başlık",
                  type: 1,
                ),
                CustomTextField(
                  textfieldController: _controllerQuestion,
                  labelText: "Açıklama",
                  type: 1,
                ),
                const SizedBox(
                  height: 64,
                ),
                const CustomButton(title: "Onayla")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
