import 'package:flutter/material.dart';

class WsButton extends StatelessWidget {

  final String label;
  final VoidCallback onTap;

  const WsButton({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = new Color(0xFF0A235B);

    return new TextButton(
      style: new ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(12)
          )
        ),
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor)
      ),
      onPressed: onTap,
      child: new Container(
        padding: const EdgeInsets.all(9),
        child: new Center(
          child:  new Text(
            label,
            style: new TextStyle(
              color: Colors.white,
              fontSize: 16
            ),
          ),
        ),
      )
    );
  }
}
