import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String route;

  const PrimaryButton({
    Key? key,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 48.5),
          child: Text('Connect with Wallet'),
        ),
      ),
    );
  }
}
