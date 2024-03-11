import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
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
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        suffixIcon: widget.suffix,
        labelText: widget.label,
        hintText: widget.hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(height: 5, width: 15, child: widget.icon),
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}
