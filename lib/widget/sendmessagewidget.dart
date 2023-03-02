import 'package:anketure/widget/icon_button.dart';
import 'package:anketure/widget/textfield.dart';
import 'package:flutter/material.dart';

class SendMessageWidget {
  SendMessageWidget();

  List<Widget> get widget {
    return [
      CustomIconButton(
        icon: Icons.add,
        event: (data) {},
        data: "data",
        size: 20,
      ),
      Expanded(
        child: CustomTextField(
            textfieldController: TextEditingController(),
            labelText: "",
            type: 1),
      ),
      CustomIconButton(
        icon: Icons.send,
        event: (data) {},
        data: "data",
        size: 20,
      )
    ];
  }
}
