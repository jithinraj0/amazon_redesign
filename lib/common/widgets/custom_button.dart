import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const CustomPrimaryButton(
      {Key? key, required this.buttonText, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
          primary: GlobalVariables.secondaryColor,
          minimumSize: const Size(double.infinity, 50)),
    );
  }
}

class CustomSecondaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const CustomSecondaryButton(
      {Key? key, required this.buttonText, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(buttonText),
      style: ElevatedButton.styleFrom(
          primary: GlobalVariables.secondaryColorLight,
          onPrimary: GlobalVariables.secondaryColor,
          minimumSize: const Size(double.infinity, 50)),
    );
  }
}
