import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final Image icon;
  final bool obscureText;
  final Widget? suffix;

  final String? Function(String? value)? validator;
  final void Function(String? values)? onSaved;
  final void Function(String value)? onChanged;

  // final character = Character();

  CustomTextFieldWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.icon,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.obscureText = false,
    this.suffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffixIcon: suffix,
        labelText: label,
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(height: 5, width: 15, child: icon),
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
