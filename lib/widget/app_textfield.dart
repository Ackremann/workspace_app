import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    // required this.controller,
    // required this.labelText,
  }) : super(key: key);

  // final String labelText;
  // final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        cursorColor: Colors.white,
        // controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelStyle: const TextStyle(color: Colors.white),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.deepPurple.shade300,
              width: 1,
            ),
          ),
          // labelText: labelText,
        ),
      ),
    );
  }
}
