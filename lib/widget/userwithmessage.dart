import 'package:anketure/widget/text.dart';
import 'package:anketure/widget/usernameanddate.dart';
import 'package:flutter/material.dart';

import '../page/schema/ankets.dart';
import '../theme/color.dart';
import 'label.dart';

class UserMessage extends StatelessWidget {
  const UserMessage({
    super.key,
    required this.profilePhoto,
    required this.labelText,
    required this.message,
  });

  final String profilePhoto;
  final String labelText;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Image.network(fit: BoxFit.fill, profilePhoto)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UsernameAndDate(
              tag: Padding(
                padding: const EdgeInsets.only(left: 7),
                child: Label(labelText: labelText),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: PoppinsText(
                title: message,
              ),
            ),
          ],
        )
      ],
    );
  }
}

class IconWithEllipticalBackgorund extends StatelessWidget {
  const IconWithEllipticalBackgorund(
      {super.key, this.icon = Icons.mode_comment_outlined});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomBoxDecoration.ellipticBackgorund,
      child: Padding(
        padding: Paddings.ellipticPadding,
        child: Icon(
          color: ThemeColor.textColor,
          icon,
          size: 32,
        ),
      ),
    );
  }
}
