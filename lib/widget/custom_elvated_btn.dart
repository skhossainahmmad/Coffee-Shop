import 'package:flutter/material.dart';

class CustomElevatedBtn extends StatelessWidget {
  final String? elevatedButtonText;
  final Color backgroundcolor;
  final Color forgroundcolor;
  final VoidCallback onTap;
  // final double width;
  // final double height;

  const CustomElevatedBtn({
    super.key,
    // required this.width,
    // required this.height,
    required this.elevatedButtonText,
    required this.backgroundcolor,
    required this.forgroundcolor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: width,
      // height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundcolor,
          foregroundColor: forgroundcolor,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          "$elevatedButtonText",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        ),
      ),
    );
  }
}
