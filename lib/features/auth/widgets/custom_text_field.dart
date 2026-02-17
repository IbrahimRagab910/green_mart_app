import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.enabled = true, this.onTap, this.keyboardType,
  });
  final String? Function(String?)? validator;
  final String hint;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? enabled;
  final Function()? onTap;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      validator: validator,
      onTap: onTap,
      keyboardType: keyboardType,

      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
