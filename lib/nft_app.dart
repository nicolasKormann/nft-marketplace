import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:nft/design_system/nft_colors.dart';
import 'package:nft/design_system/nft_theme.dart';
import 'package:nft/src/views/welcome_page.dart';
import 'package:nft/src/views/login_screen.dart';
import 'package:nft/src/views/start_screen.dart';

class NftApp extends StatefulWidget {
  const NftApp({super.key});

  @override
  State<NftApp> createState() => _NftAppState();
}

class _NftAppState extends State<NftApp> {

  @override
  void initState() {
    super.initState();
    initialization();
  }

   void initialization() async {
    FlutterNativeSplash.remove();
   }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(systemNavigationBarColor: NftColors.dark));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Galery',
      theme: NftAppTheme.nftTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/login': (context) => const LoginScreen(),
        '/welcome': (context) => const WelcomePage(),
      },
    );
  }
}
