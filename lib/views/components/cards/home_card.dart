import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const HomeCard({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = new Color(0xFF0A235B);

    return new GestureDetector(
      onTap: onTap,
      child: new Container(
        width: 180,
        padding: const EdgeInsets.all(16),
        decoration: new BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(7)
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Icon(
              icon,
              color: Colors.white,
            ),
            new Text(
              label,
              style: new TextStyle(
                color: Colors.white
              ),
            )
          ],
        ),
      ),
    );
  }
}