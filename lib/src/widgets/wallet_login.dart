import 'package:flutter/material.dart';
import 'package:nft/design_system/nft_colors.dart';

class WalletLogin extends StatelessWidget {
  final String imagePath;
  final String nameWallet;

  const WalletLogin({
    Key? key,
    required this.imagePath,
    required this.nameWallet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/welcome');
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: const BoxDecoration(
            color: NftColors.secondary,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Row(
            children: [
              Image.asset(imagePath, height: 32),
              const SizedBox(
                width: 12,
              ),
              Text(
                nameWallet,
                style: Theme.of(context).textTheme.button,
              )
            ],
          ),
        ),
      ),
    );
  }
}
