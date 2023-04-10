import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({Key? key, required this.controller, required this.text, required this.textInputType, required this.obscure}) : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.only(top: 2, left: 15, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.01),
            blurRadius: 7,
          ),
        ],
      ),
      child: TextFormField(

        controller: controller ,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration:  InputDecoration(
          hintText: text,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(0),
          hintStyle: const TextStyle(
            fontSize: 13,
            height: 0.5,
          )
        ),
      ),
    );
  }
}
