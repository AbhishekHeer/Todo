import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayText {
  static text(String text, double fontsize, FontWeight fontweight) {
    return Text(
      text,
      style: GoogleFonts.nunito(fontSize: fontsize, fontWeight: fontweight),
    );
  }

  static textfie(
      TextEditingController controller, String hinttext, double fontsize) {
    return TextField(
      style: GoogleFonts.nunito(fontSize: fontsize),
      controller: controller,
      decoration: InputDecoration(
          hintStyle: GoogleFonts.nunito(fontSize: fontsize),
          hintText: hinttext,
          border: InputBorder.none),
    );
  }
}
