import 'package:flutter/material.dart';

class HomeOutlineCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const HomeOutlineCard({
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
        width: 120,
        padding: const EdgeInsets.all(8),
        decoration: new BoxDecoration(
          border: Border.all(
            color: primaryColor,
            width: 2
          ),
          borderRadius: BorderRadius.circular(7)
        ),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Icon(
              icon,
              color: primaryColor,
            ),
            new Text(
              label,
              style: new TextStyle(
                color: primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}