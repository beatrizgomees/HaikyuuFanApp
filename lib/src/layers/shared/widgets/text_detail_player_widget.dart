import 'package:flutter/material.dart';

class TextPlayerDetailWidget extends StatefulWidget {
  TextPlayerDetailWidget({super.key, required this.text});
  String text;

  @override
  State<TextPlayerDetailWidget> createState() => _TextPlayerDetailWidgetState();
}

class _TextPlayerDetailWidgetState extends State<TextPlayerDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 2),
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}
