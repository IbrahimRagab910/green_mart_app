import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/auth/widgets/custom_text_field.dart';

class CustomInputSection extends StatelessWidget {
  const CustomInputSection({
    super.key,
    required this.fieldTitle,
    required this.hint,
    this.validator,
  });
  final String fieldTitle;
  final String hint;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: .start,
      children: [
        Text(
          fieldTitle,
          style: TextStyles.small14.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 8),
        CustomTextField(hint: hint, validator: validator),
      ],
    );
  }
}
