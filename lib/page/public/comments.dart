import 'package:anketure/page/schema/ankets.dart';
import 'package:anketure/widget/label.dart';
import 'package:anketure/widget/spoonappbar.dart';
import 'package:anketure/theme/color.dart';
import 'package:anketure/widget/text.dart';
import 'package:flutter/material.dart';

import '../../widget/userwithmessage.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String title = "Burası Başlıktır";
    const String labelText = "etiket";
    const String message =
        "Burda gerçekten çok sağlıklı iyi güzel süper bir mesaj yazıyoreeeeeeeeeeeeeeeeeeeee.";
    var src =
        "https://d2k0ddhflgrk1i.cloudfront.net/BK/Onderzoek/Onderzoeksthemas/Circular_Built_Environment/Circular_Built_Environment_diagram_TUDelft.png";
    return Scaffold(
        backgroundColor: ThemeColor.backgroundColor,
        appBar: SpoonAppBar(
          leftItems: [
            Icon(
              Icons.arrow_back_ios_rounded,
              color: ThemeColor.textColor,
            )
          ],
          height: 90,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(
                  Icons.mode_comment_outlined,
                  size: 18,
                  color: Colors.grey[200],
                ),
              ),
              const PoppinsText(
                title: title,
                fontSize: FontSizes.fontSizeMedium,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: IconWithEllipticalBackgorund(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17) +
                    const EdgeInsets.only(bottom: 10),
                child: const PoppinsText(
                  title: title,
                  fontWeight: FontWeight.w600,
                  fontSize: FontSizes.fontSizeMediumX,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17) +
                    const EdgeInsets.only(bottom: 30),
                child: const Label(
                  labelText: labelText,
                ),
              ),
              UserMessage(
                  profilePhoto: src, labelText: labelText, message: message)
            ],
          ),
        ));
  }
}
