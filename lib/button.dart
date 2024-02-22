// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 21, 139, 224),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
            child: Text(
              "Add Images",
              style: TextStyle(
                color: Color.fromARGB(255, 214, 206, 206),
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          )),
    );
  }
}
