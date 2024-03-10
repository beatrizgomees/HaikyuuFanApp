import 'package:flutter/material.dart';

class TextPlayerDetailWidget extends StatelessWidget {
  TextPlayerDetailWidget({super.key, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 2),
      child: Text(
        text,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      ),
    );
  }
}
