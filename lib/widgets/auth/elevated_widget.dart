import 'package:flutter/material.dart';

class ElevatedWidget extends StatelessWidget {
  const ElevatedWidget({
    required this.title,
    required this.color,
    required this.onPressed,
    this.borderSideColor = Colors.blue,
    Key? key,
  }) : super(key: key);
  final String title;
  final Color color;
  final Function() onPressed;
  final Color borderSideColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(
              color: borderSideColor,
            ),
          ),
          primary: color,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Cairo',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
