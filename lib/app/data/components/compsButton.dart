import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget compsButton({text, onPressed, color}) {
  return SizedBox(
    width: 200.0,
    height: 44.0,
    child: CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      borderRadius: BorderRadius.circular(22),
      color: const Color(0xFFCC9D76),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
  );
}
