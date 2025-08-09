import 'package:design/constant.dart';
import 'package:flutter/material.dart';

class AppFormField extends StatelessWidget {
  final String label;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool obscureText;
  const AppFormField({
    super.key,
    required this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 11,
      children: [
        Text(label, style: TextStyle(color: Constant.mainColor, fontSize: 16)),
        TextFormField(
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: prefixIcon != null
                ? Icon(prefixIcon, color: Constant.mainColor)
                : null,
            suffixIcon: suffixIcon != null
                ? Icon(suffixIcon, color: Constant.mainColor)
                : null,
            contentPadding: EdgeInsets.symmetric(horizontal: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Constant.mainColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Constant.mainColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Constant.mainColor, width: 1),
            ),
          ),
        ),
      ],
    );
  }
}
