import 'package:app_haikyuu/src/layers/shared/themes/theme.dart';
import 'package:app_haikyuu/src/layers/widgets/custom_avatar_widget.dart';
import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  CardMenu({
    super.key,
    this.name,
    this.color,
    this.colorText,
    this.image,
  });
  final String? name;
  // final String school;
  final String? image;
  final Color? color;
  final TextStyle? colorText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/karasumo'),
        child: Container(
          height: 100,
          width: 170,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              name!,
              style: colorText,
            ),
          ),
        ),
      ),
    );
  }
}
