import 'package:flutter/material.dart';

class WsCurrencyInput extends StatelessWidget {

  final TextInputType keyboardType;
  final TextEditingController controller;

  const WsCurrencyInput({
    Key? key,
    required this.keyboardType,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = new Color(0xFF0A235B);

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        new Text(
          'Remarks',
          style: new TextStyle(
            color: primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        new TextField(
          keyboardType: keyboardType,
          controller: controller,
          decoration: new InputDecoration(
            border: InputBorder.none
          ),
        ),
        new Divider(
          height: 1,
          thickness: 3,
          color: primaryColor,
        )
      ],
    );
  }
}
