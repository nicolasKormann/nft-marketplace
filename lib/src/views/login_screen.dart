import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nft/src/widgets/primary_button.dart';
import 'package:nft/src/widgets/wallet_login.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/app_bar_logo.svg',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/wallet.png',
              height: 207,
            ),
            Column(
              children: [
                Text(
                  'Choose your wallet',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyText1,
                        children: const <TextSpan>[
                          TextSpan(
                              text:
                                  'By connecting your wallet you agree to our '),
                          TextSpan(
                              text: 'Terms of Service ',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'and '),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ]),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: const [
                  WalletLogin(
                    imagePath: 'assets/images/metamask.png',
                    nameWallet: 'MetaMask',
                  ),
                  WalletLogin(
                    imagePath: 'assets/images/trust.png',
                    nameWallet: 'Trust',
                  ),
                  WalletLogin(
                    imagePath: 'assets/images/bx_link-alt.png',
                    nameWallet: 'Enter ethereum address',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
