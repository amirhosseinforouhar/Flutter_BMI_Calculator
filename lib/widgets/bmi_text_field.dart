import "package:flutter/material.dart";

class BMITextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const BMITextField({Key? key, required this.hintText, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(),
          )),
    );
  }
}
