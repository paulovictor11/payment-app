import 'package:flutter/material.dart';
import 'package:payment_app/views/components/buttons/ws_button.dart';

class SuccessPage extends StatefulWidget {
  const SuccessPage({ Key? key }) : super(key: key);

  @override
  _SuccessPageState createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {

  Color primaryColor = new Color(0xFF0A235B);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: new Column(
          children: [
            new Spacer(),
            new Icon(
              Icons.verified_outlined,
              color: Colors.green,
              size: 44,
            ),
            new SizedBox(height: 15),
            new Text(
              'Found requested successfully!',
              style: new TextStyle(
                color: primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            ),
            new SizedBox(height: 10),
            new Text(
              'Requested from',
              style: new TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
            new SizedBox(height: 10),
            new CircleAvatar(
              backgroundColor: primaryColor,
              child: new Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            new SizedBox(height: 10),
            new Text(
              'Amenda Lewis',
              style: new TextStyle(
                color: primaryColor,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            new SizedBox(height: 20),
            new Text(
              '\$ 15.00',
              style: new TextStyle(
                color: primaryColor,
                fontSize: 44,
                fontWeight: FontWeight.bold
              ),
            ),
            new Spacer(),
            new WsButton(
              label: 'Done',
              onTap: () => Navigator.of(context).pop()
            )
          ],
        ),
      ),
    );
  }
}

