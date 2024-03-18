import 'package:flutter/material.dart';

Widget buildCustomButton({
  required Widget child,
  required Color backgroundColor,
  required Function()? onPressed,
  double elevation = 10,
  double borderRadius = 30.0,
  double widthFactor = 0.9
}) {
  return FractionallySizedBox(
    widthFactor: widthFactor,
    child: Material(
      elevation: elevation,
      borderRadius: BorderRadius.all(
        Radius.circular(borderRadius)
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: onPressed,
        child: SizedBox(
          width: double.infinity,
          child: child,
        ),
      ),
    ),
  );
}