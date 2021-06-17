import 'package:flutter/material.dart';

class WsDropdown extends StatelessWidget {

  final String text;
  
  const WsDropdown({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = new Color(0xFF0A235B);

    return new Container(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primaryColor
      ),
      child: new Row(
        children: [
          new Text(
            text,
            style: new TextStyle(
              color: Colors.white,
              fontSize: 14
            ),
          ),
          new SizedBox(width: 3),
          new Icon(
            Icons.arrow_drop_down_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
