import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft/design_system/generate_material_color.dart';
import 'package:nft/design_system/nft_colors.dart';

class NftAppTheme {
  static ThemeData nftTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        toolbarHeight: 72,
        backgroundColor: NftColors.dark,
        elevation: 0,
        centerTitle: true,
      ),
      primarySwatch: generateMaterialColor(NftColors.primary),
      textTheme: GoogleFonts.hindTextTheme(
        const TextTheme(
          headline1: TextStyle(
              fontSize: 31,
              color: NftColors.white,
              fontWeight: FontWeight.bold),
          headline2: TextStyle(
            fontSize: 24,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: NftColors.grayLight,
          ),
          button: TextStyle(
              fontSize: 14,
              color: NftColors.white,
              fontWeight: FontWeight.bold),
          caption: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
      scaffoldBackgroundColor: NftColors.dark);
}
