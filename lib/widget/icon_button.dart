import 'package:anketure/widget/text.dart';
import 'package:flutter/material.dart';

typedef ValueSetter<T> = void Function(T value);

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final ValueChanged<String> event;
  final void Function()? onLongPress;
  final Color? iconColor;
  final double size;
  final String data;
  final String? text;
  final Color? backgroundColor;
  const CustomIconButton({
    super.key,
    required this.icon,
    this.size = 32,
    this.text,
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
        child: text == null
            ? Icon(
                size: size,
                icon,
                color: iconColor,
              )
            : Row(
                children: [
                  Icon(
                    size: size,
                    icon,
                    color: iconColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  PoppinsText(
                    title: text!,
                    fontSize: size,
                  )
                ],
              ),
      ),
    );
  }
}
