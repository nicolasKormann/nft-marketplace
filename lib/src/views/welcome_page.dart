import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/welcome.png',
              height: 182,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Hey! Welcome',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Create and Sell your NFT in 1 seconds',
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
