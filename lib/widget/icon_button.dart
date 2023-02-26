import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef ValueSetter<T> = void Function(T value);

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final ValueChanged<String> event;
  final void Function()? onLongPress;
  final Color? iconColor;
  final String data;
  final Color? backgroundColor;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.event,
    this.iconColor = Colors.white,
    this.onLongPress,
    this.backgroundColor,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        event(data);
      },
      onLongPress: onLongPress ?? () {},
      hoverColor: backgroundColor ?? Colors.blueAccent,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          margin: const EdgeInsets.all(5),
          child: Icon(
            size: 32,
            icon,
            color: iconColor,
          )),
    );
  }
}
