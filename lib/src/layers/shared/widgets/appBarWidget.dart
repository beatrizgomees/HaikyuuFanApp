import 'package:app_haikyuu/src/layers/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  final String labelAppBar;
  final String? image;
  const AppBarWidget({super.key, required this.labelAppBar, this.image});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          labelAppBar,
          style: const TextStyle(fontSize: 15),
        ),
        elevation: 5.0,

        // leading: Padding(
        //   padding: const EdgeInsets.only(left: 20),
        //   child: Image(
        //     image: AssetImage(image!),
        //   ),
        // ),
        leadingWidth: 60,
        backgroundColor: lightTheme.primaryColor);
  }
}
