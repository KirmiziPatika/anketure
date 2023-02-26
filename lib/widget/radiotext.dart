import 'dart:async';

import 'package:anketure/widget/button.dart';
import 'package:anketure/widget/icon_button.dart';
import 'package:anketure/widget/text.dart';
import 'package:anketure/widget/textfield.dart';
import 'package:flutter/material.dart';

import '../theme/color.dart';

///Seçenekleri vererek şıklı bir seçim yapma kısmı yapabilirsiniz

class RadioText extends StatefulWidget {
  List<String> choices;
  String? selected;
  late TextEditingController? controller;

  ///Radio butonlarının düzenlenip düzenlenemeyeceğini kontrol eder.
  final bool editable;
  RadioText(
      {super.key,
      required this.choices,
      this.editable = false,
      this.controller}) {
    selected = choices[0];
  }

  @override
  State<RadioText> createState() => _RadioTextState();
}

class _RadioTextState extends State<RadioText> {
  @override
  Widget build(BuildContext context) {
    if (widget.editable) {
      if (widget.controller == null) {
        throw NullControllerException();
      } else {
        return Column(
          children: [
            for (var element in widget.choices)
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: Wrap(
                  direction: Axis.horizontal,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Radio(
                        value: element,
                        groupValue: widget.selected,
                        onChanged: ((value) {
                          setState(() {
                            widget.selected = value.toString();
                          });
                        })),
                    CustomTextField(
                      text: element,
                      textColor: ThemeColor.textColor,
                      textSize: 15,
                      addPageStatus: true,
                      textfieldController: TextEditingController(),
                      labelText: "",
                      type: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: CustomIconButton(
                        event: (data) {
                          setState(() {
                            widget.choices.remove(data);
                          });
                        },
                        data: element,
                        icon: Icons.delete,
                        iconColor: Colors.red.shade600,
                      ),
                    )
                  ],
                ),
              ),
            CustomButton(
              title: "Yeni Seçenek Ekle",
              event: () {
                setState(() {
                  widget.choices.add("Seçenek ${widget.choices.length + 1}");
                });
              },
            )
          ],
        );
      }
    } else {
      return Column(
        children: [
          for (var element in widget.choices)
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  Radio(
                      value: element,
                      groupValue: widget.selected,
                      onChanged: ((value) {
                        setState(() {
                          widget.selected = value.toString();
                        });
                      })),
                  PoppinsText(title: element)
                ],
              ),
            ),
        ],
      );
    }
  }
}

class NullControllerException implements Exception {
  @override
  String toString() {
    return "Eger düzenlenebilir özelliği aktif ise controller null olamaz.";
  }
}
