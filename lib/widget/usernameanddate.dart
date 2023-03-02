import 'package:anketure/widget/text.dart';
import 'package:flutter/material.dart';

import '../page/schema/ankets.dart';

class UsernameAndDate extends StatelessWidget {
  const UsernameAndDate({super.key, this.tag});

  final String username = "Username";
  final String dateAgo = "10 Gün Geçti";
  final Widget? tag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Paddings.username,
      child: Wrap(
        direction: Axis.horizontal,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          PoppinsText(
            title: username,
            fontSize: FontSizes.fontSizeSmalX,
          ),
          tag ??
              const SizedBox(
                height: 1,
                width: 1,
              ),
          Padding(
            padding: Paddings.date,
            child: PoppinsText(
              fontWeight: FontWeight.w300,
              title: dateAgo,
              fontSize: FontSizes.fontSizeUltraSmall,
            ),
          )
        ],
      ),
    );
  }
}
