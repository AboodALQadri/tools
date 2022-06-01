import 'package:flutter/material.dart';

Widget elevatedWidget({
  required String title,
  required Color color,
  required Function() onPressed,
  Color? borderSideColor,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: BorderSide(
            color: borderSideColor = Colors.blue,
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
