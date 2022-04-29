import 'package:flutter/material.dart';
import 'package:messenger_app/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final String hintText;
  final bool isObscure;

  const CustomTextField({
    Key? key,
    required this.text,
    required this.controller,
    required this.hintText,
    this.isObscure = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: Dimenstions.width20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          SizedBox(height: Dimenstions.height10),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.grey.shade400,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.grey.shade400,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1.0,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
            obscureText: isObscure,
          ),
        ],
      ),
    );
  }
}
