import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogWithIcon extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;
  final void Function()? event;
  final Color? backgroundColor;
  final Color? titleColor;
  final Color? textColor;
  final bool? clickable;
  const DialogWithIcon({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
    this.backgroundColor,
    this.clickable,
    this.textColor,
    this.event,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: clickable ?? false == true ? event ?? () {} : null,
        hoverColor: backgroundColor ?? Colors.transparent,
        child: Container(
            //margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white24,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            width: 150,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 25,
                ),
                const SizedBox(height: 13),
                Text(
                  title,
                  style: GoogleFonts.roboto(
                      color: titleColor ?? Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 3),
                Text(
                  text,
                  style: GoogleFonts.roboto(
                    color: textColor ?? Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
