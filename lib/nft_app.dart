import 'package:flutter/material.dart';
import 'package:nft/design_system/nft_theme.dart';
import 'package:nft/src/views/welcome_page.dart';
import 'package:nft/src/views/login_screen.dart';
import 'package:nft/src/views/splash_screen.dart';
import 'package:nft/src/views/start_screen.dart';

class NftApp extends StatelessWidget {
  const NftApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Galery',
      theme: NftAppTheme.nftTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/start': (context) => const StartScreen(),
        '/login': (context) => const LoginScreen(),
        '/welcome': (context) => const WelcomePage(),
      },
    );
  }
}
