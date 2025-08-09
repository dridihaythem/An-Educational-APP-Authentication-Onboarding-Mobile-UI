import 'package:design/constant.dart';
import 'package:flutter/material.dart';

class LoginRegisterSwitcher extends StatelessWidget {
  final void Function() onTap;
  final String mainText;
  final String switchText;
  const LoginRegisterSwitcher({
    super.key,
    required this.onTap,
    required this.mainText,
    required this.switchText,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: mainText,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            TextSpan(
              text: switchText,
              style: TextStyle(
                color: Constant.mainColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
