import 'package:flutter/material.dart';

class WsInput extends StatelessWidget {
  
  final String text;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final IconData icon;
  final bool isPass;

  const WsInput({
    Key? key,
    required this.text,
    required this.keyboardType,
    required this.controller,
    required this.icon,
    this.isPass = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = new Color(0xFF0A235B);

    return new Column(
      children: [
        new Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: new BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(7),
              topRight: Radius.circular(7),
            )
          ),
          child: new TextField(
            keyboardType: keyboardType,
            controller: controller,
            obscureText: isPass,
            decoration: new InputDecoration(
              hintText: text,
              hintStyle: new TextStyle(color: primaryColor),
              icon: new Icon(
                icon, 
                color: primaryColor,
                size: 26,
              ),
              border: InputBorder.none
            ),
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
