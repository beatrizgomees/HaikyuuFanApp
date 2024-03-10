import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';



class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({super.key, required this.label,  this.color, required this.icon, required this.action});
  final String label;
  final Color? color;
  final IconData icon;
  final void Function() action;
  
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
    height: 50,
    width: double.infinity,
    child: ElevatedButton.icon(
      style:ElevatedButton.styleFrom(
        backgroundColor: color
      ),
      icon: Icon(
        icon,
        color:  Colors.white
      ),
      onPressed: action, 
      label: Text(
        label,
        style: const TextStyle(
          color: Colors.white
        ),
        ),
      ),
  );
  }
}