import 'package:anketure/theme/color.dart';
import 'package:anketure/widget/radiotext.dart';
import 'package:anketure/widget/text.dart';
import 'package:anketure/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [PreView()],
    );
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
      width: 900,
      height: 510,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: CustomTextField(
                        text: "Başlıksız",
                        textColor: ThemeColor.textColor,
                        textSize: 35,
                        addPageStatus: true,
                        textfieldController: _controllerTitle,
                        labelText: "",
                        type: 1,
                      )),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 40, 0, 50),
                      child: CustomTextField(
                        text: "Buraya soruyu yazın",
                        textColor: ThemeColor.textColor,
                        textSize: 20,
                        addPageStatus: true,
                        textfieldController: _controllerQuestion,
                        labelText: "",
                        type: 1,
                      )),
                  RadioText(
                    editable: true,
                    controller: controllerRadio,
                    choices: choices,
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 13, 6),
                child: PoppinsText(
                  title: "Bu önizlemedir.",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


//PoppinsText(title: title, fontSize: 35),