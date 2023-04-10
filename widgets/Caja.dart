import 'package:flutter/material.dart';

class FormaCaja extends StatelessWidget {
  const FormaCaja({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.only(left: 3),
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
    );
  }
}
