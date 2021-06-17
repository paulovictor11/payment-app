import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/views/components/buttons/ws_button.dart';
import 'package:payment_app/views/components/dropdowns/ws_dropdown.dart';
import 'package:payment_app/views/components/inputs/ws_currency_input.dart';
import 'package:payment_app/views/pages/sucess/success.dart';

class RequestFromPage extends StatefulWidget {
  const RequestFromPage({ Key? key }) : super(key: key);

  @override
  _RequestFromPageState createState() => _RequestFromPageState();
}

class _RequestFromPageState extends State<RequestFromPage> {

  Color primaryColor = new Color(0xFF0A235B);
  TextEditingController _currency = new TextEditingController();

  Widget _personTile() {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: primaryColor,
        child: new Icon(Icons.person, color: Colors.white),
      ),
      title: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text(
            'Amenda Lewis',
            style: new TextStyle(
              color: primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
          new Text(
            'amenda_lewis_30@gmail.com',
            style: new TextStyle(
              color: primaryColor,
              fontSize: 13,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: new Text(
          'Request money from',
          style: new TextStyle(
            color: primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        leading: new BackButton(color: primaryColor),
        actions: [
          new Padding(
            padding: const EdgeInsets.only(right: 15),
            child: new InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () {},
              child: new Icon(
                Icons.notifications_none_rounded,
                color: primaryColor,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: new SingleChildScrollView(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            _personTile(),
            new SizedBox(height: 5),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: new Text(
                'Request amount',
                style: new TextStyle(
                  color: primaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: new Text(
                '15.00',
                style: new TextStyle(
                  color: primaryColor,
                  fontSize: 44,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            new SizedBox(height: 10),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: new Row(
                children: [
                  new WsDropdown(text: 'UYU'),
                  new SizedBox(width: 20),
                  new Text(
                    '1 UYU = 0,024 USD',
                    style: new TextStyle(
                      color: primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                    ),
                  )
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Divider(),
            ),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: new WsCurrencyInput(
                keyboardType: TextInputType.number,
                controller: _currency
              ),
            ),
            new SizedBox(height: 15),
            new Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: new WsButton(
                label: 'Request Now',
                onTap: () => Navigator.of(context).push(
                  new MaterialPageRoute(builder: (_) => new SuccessPage())
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}