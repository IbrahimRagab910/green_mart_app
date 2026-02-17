import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/auth/widgets/custom_password_field.dart';

class CustomPasswordSection extends StatefulWidget {
  const CustomPasswordSection({super.key, this.validator});
  final String? Function(String?)? validator;

  @override
  State<CustomPasswordSection> createState() => _CustomPasswordSectionState();
}

class _CustomPasswordSectionState extends State<CustomPasswordSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          'Password',
          style: TextStyles.small14.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        CustomPasswordField(validator: widget.validator,),
      ],
    );
  }
}
