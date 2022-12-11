import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// BORDER RADIUS
const kBorderRadius = 16.0;

const Color kWhite = Color(0xffffffff);
const Color kLightWhite = Color(0xffeff5f4);
const Color kLighterWhite = Color(0xfffcfcfc);

const Color kLightBlue = Color(0xff83B1FF);
const Color kLighterBlue = Color(0xffEFF5F4);
const Color kBlue = Color(0xff5474FD);
const Color kDarkBlue = Color(0xff19202D);

const Color kGrey = Color(0xff9397A0);
const Color kLighterGrey = Color(0xffA7A7A7);

final kBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: BorderSide.none,
);

final kPoppinsBold = GoogleFonts.poppins(fontWeight: FontWeight.w700);
final kPoppinsSemiBold = GoogleFonts.poppins(fontWeight: FontWeight.w600);
final kPoppinsMediumBold = GoogleFonts.poppins(fontWeight: FontWeight.w500);
final kPoppinsRegurlar = GoogleFonts.poppins(fontWeight: FontWeight.w400);
