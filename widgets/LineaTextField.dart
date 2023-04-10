import 'package:flutter/material.dart';

class Linea extends StatelessWidget {
  const Linea({Key? key, required this.controller, required this.text, required this.textInputType, required this.obscure}) : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: const EdgeInsets.only(left: 3),

      child: TextFormField(

        controller: controller ,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration:  InputDecoration(
            hintText: text,
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black26),
            ),
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
