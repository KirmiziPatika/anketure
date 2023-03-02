import 'package:anketure/widget/text.dart';
import 'package:flutter/material.dart';

import '../page/schema/ankets.dart';

class Label extends StatelessWidget {
  const Label({
    super.key,
    required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: CustomBoxDecoration.labelDecoration,
        child: Padding(
          padding: Paddings.labelTextPadding,
          child: PoppinsText(
              title: labelText,
              fontSize: FontSizes.fontSizeSmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis),
        ));
  }
}
