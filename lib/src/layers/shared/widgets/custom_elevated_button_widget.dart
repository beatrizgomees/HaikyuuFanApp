import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomElevatedButtonWidget extends StatefulWidget {
  const CustomElevatedButtonWidget(
      {super.key,
      required this.label,
      this.color,
      required this.icon,
      required this.action});
  final String label;
  final Color? color;
  final IconData icon;
  final void Function() action;

  @override
  State<CustomElevatedButtonWidget> createState() =>
      _CustomElevatedButtonWidgetState();
}

class _CustomElevatedButtonWidgetState
    extends State<CustomElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(backgroundColor: widget.color),
        icon: Icon(widget.icon, color: Colors.white),
        onPressed: widget.action,
        label: Text(
          widget.label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
