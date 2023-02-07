import 'package:flutter/material.dart';

/* COLOR THEME */
Color white = Color(0xffFFFFFF);
Color lightGrey = Color(0xffFBFBFB);
Color grey = Color(0xffBCBCBC);
Color darkGrey = Color(0xff848484);
Color darkerGrey = Color(0xff6B6B6B);
Color lightBlack = Color(0xff404040);
Color black = Color(0xff2C2C2C);
Color blue = Color(0xff3AACFE);
Color darkBlue = Color(0xff3590D1);

/* TEXT STYLE */
TextStyle bigText = TextStyle(
  fontFamily: 'Plus Jakarta Sans',
  fontWeight: FontWeight.w700,
  color: black,
  fontSize: 100,
);

TextStyle menuText = TextStyle(
  fontFamily: 'Plus Jakarta Sans',
  color: darkerGrey,
  fontSize: 15,
  fontWeight: FontWeight.w400,
);

TextStyle menuDarkText = menuText.copyWith(
  fontWeight: FontWeight.w700,
  color: lightBlack,
);

TextStyle taglineText = TextStyle(
  fontFamily: 'Plus Jakarta Sans',
  fontWeight: FontWeight.w600,
  fontSize: 20,
  color: black,
);

TextStyle hashtagText = TextStyle(
  fontFamily: 'Plus Jakarta Sans',
  fontWeight: FontWeight.w700,
  fontSize: 15,
  color: black,
);

TextStyle buttonText = hashtagText.copyWith(
  color: white,
);

TextStyle titleText = TextStyle(
  fontFamily: 'Plus Jakarta Sans',
  fontWeight: FontWeight.w700,
  fontSize: 25,
  color: black,
);

TextStyle subTitleText = TextStyle(
  fontFamily: 'Plus Jakarta Sans',
  fontWeight: FontWeight.w500,
  fontSize: 15,
  color: darkGrey,
);

TextStyle miniSubText = TextStyle(
  fontFamily: 'PLus Jakarta Sans',
  fontWeight: FontWeight.w400,
  fontSize: 12,
  color: grey,
);
