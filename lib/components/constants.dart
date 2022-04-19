import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/size_config.dart';


const kTextColor = Color(0xFF0A0909);
const kBgColor = Color(0xFFFFFFFF);
const kShadowColor = Color(0xFFEDE4E3);
const kSubTextColor = Color(0xFF868686);
const kPrimaryColor = Color(0xFF6495ED);


final buttonStyle = GoogleFonts.openSans(fontSize: getProportionateWidth(15), color: kPrimaryColor, height: 1.5, fontWeight: FontWeight.bold,);
final barTextStyle = GoogleFonts.poppins(fontSize: getProportionateWidth(20), color: kTextColor, height: 1.5, fontWeight: FontWeight.bold,);
final headingStyle = GoogleFonts.poppins(fontSize: getProportionateWidth(30), color: kTextColor, height: 1.5, fontWeight: FontWeight.bold,);
final textStyle = GoogleFonts.openSans(fontSize: getProportionateWidth(15),color: kSubTextColor, );
final cardTextStyle = GoogleFonts.openSans(fontSize: getProportionateWidth(20),color: kBgColor, height: 1.5, fontWeight: FontWeight.bold,);
final listTextStyle = GoogleFonts.openSans(fontSize: getProportionateWidth(15),color: kTextColor, height: 1.5, fontWeight: FontWeight.bold,);