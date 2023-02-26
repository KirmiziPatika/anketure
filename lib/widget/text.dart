import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Bu widget'ı, hızlı style verebilmemiz için hazırladım.
///<br>Projede bu widget'ı Text'in yerine kullanabilirsiniz.
///<br>Bu text widget'ı, mouse imleci ile seçilemez.
///<br>İmleç ile seçilebilir bir text widget'ı kullanmak isterseniz, lütfen [SelectablePoppinsText] widget'ını kullanın.
class PoppinsText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  const PoppinsText({
    super.key,
    required this.title,
    this.color,
    this.fontSize,
    this.textAlign,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.poppins(
        color: color ?? Colors.white,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

///Bu projede tüm metinler seçilebilir olmalıdır.
///<br>Bu yüzden imleç ile seçilebilir metinleri ekrana yazdırmak için bu widget'ı kullanın.
///<br>Eğer seçilemez bir metine ihtiyaç duyarsanız [PoppinsText] widget'ını kullanın.
class SelectablePoppinsText extends StatelessWidget {
  final String title;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  const SelectablePoppinsText({
    super.key,
    required this.title,
    this.color,
    this.fontSize,
    this.textAlign,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      title,
      textAlign: textAlign ?? TextAlign.left,
      style: GoogleFonts.poppins(
        color: color ?? Colors.white,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}
