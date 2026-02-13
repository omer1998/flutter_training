import 'package:flutter/material.dart';
import 'package:flutter_basic_training/facebook/core/ColorManager.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    required this.text,
    required this.textColor,
    required this.filledColor,
    required this.onTap,
    super.key,
  });

  Color textColor;
  Color filledColor;
  String text;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: ColorManager.blue, width: 1),
            borderRadius: BorderRadiusGeometry.circular(16),
          ),

          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 16),
          backgroundColor: filledColor,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
