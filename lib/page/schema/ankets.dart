import 'package:anketure/theme/color.dart';
import 'package:anketure/widget/icon_button.dart';
import 'package:anketure/widget/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widget/label.dart';
import '../../widget/usernameanddate.dart';

class AnketPostShema extends StatelessWidget {
  AnketPostShema({super.key});

  final String labelText = "etiket";
  final String title = "Burası başlıktır";
  final String explanation = ("Burası açıklamadır" * 10);
  final int commentCount = 2;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: constraints.maxWidth - 40,
        decoration: CustomBoxDecoration.mainDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: Paddings.labelPadding,
              child: Label(labelText: labelText),
            ),
            const UsernameAndDate(),
            Padding(
              padding: Paddings.titlePadding,
              child: PoppinsText(
                title: title,
                fontSize: FontSizes.fontSizeSmalX,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: Paddings.explanationPadding,
              child: PoppinsText(
                title: explanation,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            CustomIconButton(
              icon: Icons.mode_comment_outlined,
              size: 16,
              event: (data) {},
              data: "comment",
              text: commentCount.toString(),
            )
          ],
        ),
      );
    });
  }
}

class CustomBoxDecoration {
  static final BoxDecoration mainDecoration = BoxDecoration(
      color: ThemeColor.lightBackgroundColor,
      borderRadius: Radius.mainBorderRadius);

  static final BoxDecoration labelDecoration = BoxDecoration(
      color: ThemeColor.secretColor, borderRadius: Radius.labelBorderRadius);

  static final BoxDecoration ellipticBackgorund = BoxDecoration(
      color: ThemeColor.lightBackgroundColor,
      borderRadius: Radius.ellipticalBackgorundRadius);
}

class Paddings {
  static const EdgeInsets labelTextPadding =
      EdgeInsets.symmetric(vertical: 5, horizontal: 16);

  static const EdgeInsets labelPadding =
      EdgeInsets.symmetric(vertical: 12, horizontal: 18);

  static const EdgeInsets titlePadding =
      EdgeInsets.symmetric(vertical: 12, horizontal: 18);

  static EdgeInsets explanationPadding =
      const EdgeInsets.fromLTRB(18, 12, 9, 12);

  static const EdgeInsets username =
      EdgeInsets.symmetric(vertical: 0, horizontal: 16);

  static const EdgeInsets date =
      EdgeInsets.symmetric(vertical: 0, horizontal: 10);

  static const EdgeInsets ellipticPadding = EdgeInsets.all(16);
}

class Radius {
  static final BorderRadius labelBorderRadius = BorderRadius.circular(18);

  static final BorderRadius mainBorderRadius = BorderRadius.circular(10);

  static final BorderRadius ellipticalBackgorundRadius =
      BorderRadius.circular(100);
}

class FontSizes {
  static const double fontSizeUltraSmall = 12;

  static const double fontSizeSmall = 16;

  static const double fontSizeSmalX = 20;

  static const double fontSizeMedium = 25;

  static const double fontSizeMediumX = 30;

  static const double fontSizeLarge = 64;
}

class TextStyles {
  static final TextStyle labelTextStyle = GoogleFonts.poppins(
      fontSize: FontSizes.fontSizeSmall, color: ThemeColor.textColor);
}
