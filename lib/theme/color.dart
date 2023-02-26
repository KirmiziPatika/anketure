import 'package:flutter/material.dart';

class ThemeColor {
  ///Arkaplan renkleri için bu renk kullanılır.
  static Color backgroundColor = const Color(0xff1D1B1E);

  ///Arkaplan renginden bir ton açık bir renk. İlerleme çubukları gibi daha açık renkler için bunu kullanabilirsiniz.
  static Color lightBackgroundColor = const Color(0xff2D2B2E);

  ///Buton içi yazılar için bu rengi kullanabilirsiniz.
  static Color buttonTextColor = const Color(0xffecddf6);

  ///Tek başına duran, bağımsız butonlar için arkaplan rengi.
  static Color singleButtonColor = const Color(0xff653B41);

  ///Klasik butonlar için bir arkaplan rengi.
  static Color classicButtonColor = const Color(0xff4D4357);

  ///Butona odak alındığında görünen odak rengi.
  static Color buttonHoverColor = const Color(0xff5A3384);

  ///Yazılar için varsayılan renk.
  static Color textColor = const Color(0xffeeeeee);

  ///Hata belirten bir butonun arkaplan rengi.
  static Color errorColor = const Color(0xff93000a);

  ///Okunması zor ancak görüntüyü güzelleştiren bir yazı rengi.
  static Color secretColor = const Color(0xff362d3f);
}
