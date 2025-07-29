import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final VoidCallback onTap;
  const CustomeButton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(226, 125, 25, 1),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
