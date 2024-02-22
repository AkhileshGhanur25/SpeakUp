// ignore_for_file: prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const textfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.40),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Color.fromARGB(255, 26, 26, 26),
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Color.fromARGB(179, 228, 228, 232)),
        ),
      ),
    );
  }
}
