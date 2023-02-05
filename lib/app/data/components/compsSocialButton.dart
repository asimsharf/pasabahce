import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget compsSocialButton({color, icon, text, onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 90),
    child: InkWell(
      onTap: onPressed,
      child: Container(
        width: 244,
        height: 44,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: color,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              width: 6.14,
              height: 11.67,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 15,
                color: color,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
