import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WsTransactionsTile extends StatelessWidget {

  final IconData icon;
  final String title;
  final String subtitle;
  final String currency;
  final bool isNegative;
  final VoidCallback onTap;

  const WsTransactionsTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.currency,
    this.isNegative = false,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = new Color(0xFF0A235B);

    _currencySignal() => isNegative ? '-' : '+';

    return new ListTile(
      onTap: onTap,
      leading: new CircleAvatar(
        backgroundColor: primaryColor,
        child: new Icon(icon, color: Colors.white),
      ),
      title: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            title,
            style: new TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          new Text(
            subtitle,
            style: new TextStyle(
              color: Colors.grey,
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
      trailing: new Text(
        '${_currencySignal()} \$ $currency USD',
        style: new TextStyle(
          color: isNegative ? Colors.red : Colors.green,
          fontSize: 15,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
