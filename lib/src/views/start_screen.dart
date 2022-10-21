import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nft/src/widgets/primary_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SafeArea(child: SvgPicture.asset('assets/images/logo2.svg')),
        const SizedBox(
          height: 0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'All NFTs are \ncertifiably unique \nand ownable',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'A credible and excellent marketplace for non-fungible token.',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ],
        ),
        const PrimaryButton(
          route: '/login',
        )
      ],
    ));
  }
}
