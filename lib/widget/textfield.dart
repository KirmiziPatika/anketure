import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;

  /// 1 = normal
  /// </br>2 = parola
  /// </br>3 = email
  /// </br>4 = name
  /// </br>5 = phone
  final int type;
  final TextEditingController textfieldController;
  final bool addPageStatus;
  final Color? textColor;
  final double? textSize;
  final double? maxWidth;
  final String text;
  const CustomTextField({
    super.key,
    required this.textfieldController,
    required this.labelText,
    required this.type,
    this.addPageStatus = false,
    this.textColor = Colors.white70,
    this.textSize = 14,
    this.maxWidth = 300,
    this.text = "",
  });

  @override
  Widget build(BuildContext context) {
    return type == 1
        ? normal()
        : type == 2
            ? password()
            : type == 3
                ? email()
                : type == 4
                    ? name()
                    : type == 5
                        ? phone()
                        : normal();
  }

  Padding normal() {
    if (!addPageStatus) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          controller: textfieldController,
          style: const TextStyle(color: Colors.white70, fontSize: 14),
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: Colors.white30),
            labelText: labelText,
            hintText: labelText,
            labelStyle: const TextStyle(color: Colors.white70),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(width: 1, color: Colors.white70),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                  width: 1, color: Color.fromARGB(255, 105, 105, 105)),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
        ),
      );
    } else {
      textfieldController.text = text;
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
            controller: textfieldController,
            style: TextStyle(color: textColor, fontSize: textSize),
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
                constraints: BoxConstraints(maxWidth: maxWidth as double))),
      );
    }
  }

  Padding password() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: textfieldController,
        style: const TextStyle(color: Colors.white70, fontSize: 14),
        obscureText: true,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.white30),
          labelText: labelText,
          hintText: labelText,
          labelStyle: const TextStyle(color: Colors.white70),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: Colors.white70),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
                BorderSide(width: 1, color: Color.fromARGB(255, 105, 105, 105)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }

  Padding email() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: textfieldController,
        style: const TextStyle(color: Colors.white70, fontSize: 14),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.white30),
          labelText: labelText,
          hintText: labelText,
          labelStyle: const TextStyle(color: Colors.white70),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: Colors.white70),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
                BorderSide(width: 1, color: Color.fromARGB(255, 105, 105, 105)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }

  Padding name() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: textfieldController,
        style: const TextStyle(color: Colors.white70, fontSize: 14),
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.white30),
          labelText: labelText,
          hintText: labelText,
          labelStyle: const TextStyle(color: Colors.white70),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: Colors.white70),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
                BorderSide(width: 1, color: Color.fromARGB(255, 105, 105, 105)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }

  Padding phone() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: textfieldController,
        style: const TextStyle(color: Colors.white70, fontSize: 14),
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: Colors.white30),
          labelText: labelText,
          hintText: labelText,
          labelStyle: const TextStyle(color: Colors.white70),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(width: 1, color: Colors.white70),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide:
                BorderSide(width: 1, color: Color.fromARGB(255, 105, 105, 105)),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
