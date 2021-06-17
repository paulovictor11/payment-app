import 'package:flutter/material.dart';

class WsContactTile extends StatelessWidget {

  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const WsContactTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = new Color(0xFF0A235B);

    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: primaryColor,
        child: new Icon(icon, color: Colors.white),
      ),
      title: new Text(
        title,
        style: new TextStyle(
          color: primaryColor,
          fontSize: 16,
          fontWeight: FontWeight.bold
        ),
      ),
      trailing: new IconButton(
        onPressed: onTap,
        icon: new Icon(
          Icons.more_vert_rounded,
          color: primaryColor,
        )
      )
    );
  }
}
