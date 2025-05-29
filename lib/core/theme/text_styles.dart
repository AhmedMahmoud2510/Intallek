import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intallek/core/cache_helper/cache_helper.dart';

TextStyle robotoRegular = CacheHelper.getCurrentLanguage() == 'en'
    ? GoogleFonts.roboto(fontWeight: FontWeight.w400)
    : GoogleFonts.lateef(fontWeight: FontWeight.w400);
TextStyle robotoRegularColor = CacheHelper.getCurrentLanguage() == 'en'
    ? GoogleFonts.roboto(fontWeight: FontWeight.w400, color: Colors.grey)
    : GoogleFonts.lateef(fontWeight: FontWeight.w400, color: Colors.grey);
TextStyle robotoMedium = CacheHelper.getCurrentLanguage() == 'en'
    ? GoogleFonts.roboto(fontWeight: FontWeight.w500)
    : GoogleFonts.lateef(fontWeight: FontWeight.w500);
TextStyle robotoBold = CacheHelper.getCurrentLanguage() == 'en'
    ? GoogleFonts.roboto(fontWeight: FontWeight.w600)
    : GoogleFonts.lateef(fontWeight: FontWeight.w600);

TextStyle robotoExtraBold = CacheHelper.getCurrentLanguage() == 'en'
    ? GoogleFonts.roboto(fontWeight: FontWeight.w700)
    : GoogleFonts.lateef(fontWeight: FontWeight.w700);

TextStyle robotoBlack = CacheHelper.getCurrentLanguage() == 'en'
    ? GoogleFonts.roboto(fontWeight: FontWeight.w900)
    : GoogleFonts.lateef(fontWeight: FontWeight.w900);
