import 'package:controlqore_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


TextStyle smallTextBlack = GoogleFonts.ptSans(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: TextColor
);

TextStyle smallTextGrey = GoogleFonts.ptSans(
    fontSize: 13,
    fontWeight: FontWeight.w500,
    color: Colors.blueGrey
);

TextStyle MediumTextGrey = GoogleFonts.ptSans(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: Colors.blueGrey
);

TextStyle mediumTextBlack = GoogleFonts.ptSansCaption(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

TextStyle smallText = GoogleFonts.ptSans(
  fontSize: 16,
  fontWeight: FontWeight.normal,
    color: Colors.black
);

TextStyle smallTextOnboard = GoogleFonts.ptSans(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.white
);

TextStyle smallTextWhite = GoogleFonts.ptSans(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white
);
TextStyle authText = GoogleFonts.ptSansCaption(
  fontSize: 15,
  decoration: TextDecoration.underline,
  decorationColor: colorWhite,
);

TextStyle normalText = GoogleFonts.ptSansCaption(
  fontSize: 15,
  fontWeight: FontWeight.bold,
);

TextStyle normalTextAuth = GoogleFonts.ptSansCaption(
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

TextStyle normalDataText = GoogleFonts.ptSansCaption(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white
);

TextStyle mediumText = GoogleFonts.ptSans(
  fontSize: 18,
  fontWeight: FontWeight.bold,
    color: colorWhite
);

TextStyle largeText = GoogleFonts.ptSans(
  fontSize: 20,
    fontWeight: FontWeight.w500,
  color: colorWhite
);
TextStyle extraLargeBoldText = GoogleFonts.ptSans(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: Colors.white
);

TextStyle extraLargeText = GoogleFonts.ptSans(
  fontSize: 35,

  color: Colors.white
);

TextStyle xxLargeText = GoogleFonts.ptSans(
  fontSize: 45,
);


final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87, backgroundColor: Colors.grey[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);