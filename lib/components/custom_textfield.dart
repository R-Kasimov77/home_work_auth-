import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? textInputType;
  const CustomTextField({Key? key, this.textInputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextField(
        obscureText: true,
        keyboardType: textInputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}
