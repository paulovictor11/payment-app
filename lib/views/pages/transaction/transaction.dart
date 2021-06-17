import 'package:flutter/material.dart';
import 'package:payment_app/views/components/inputs/ws_input.dart';
import 'package:payment_app/views/components/tiles/ws_transations_tile.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({ Key? key }) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  Color primaryColor = new Color(0xFF0A235B);
  TextEditingController _search = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: new Text(
          'Transactions',
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
                Icons.filter_list_rounded,
                color: primaryColor,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: new SingleChildScrollView(
        child: new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              new WsInput(
                text: 'Name, Email or Mobile number',
                keyboardType: TextInputType.text,
                controller: _search,
                icon: Icons.search_rounded
              ),
              new SizedBox(height: 25),
              new Text(
                'Pending',
                style: new TextStyle(
                  color: primaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                ),
              ),
              new SizedBox(height: 15),
              new ListView(
                shrinkWrap: true,
                physics: new NeverScrollableScrollPhysics(),
                children: [
                  new Text(
                    '25/02/2021',
                    style: new TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  new SizedBox(height: 5),
                  new WsTransactionsTile(
                    icon: Icons.person,
                    title: 'Amenda Lewis',
                    subtitle: 'Payment received',
                    currency: '57.01',
                    onTap: () {}
                  ),
                  new WsTransactionsTile(
                    icon: Icons.person,
                    title: 'Jose Young',
                    subtitle: 'Payment sended',
                    currency: '19.63',
                    isNegative: true,
                    onTap: () {}
                  ),
                ],
              ),
              new SizedBox(height: 5),
              new Divider(color: primaryColor, thickness: 2),
              new SizedBox(height: 15),
              new Text(
                'Completed',
                style: new TextStyle(
                  color: primaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700
                ),
              ),
              new SizedBox(height: 15),
              new ListView(
                shrinkWrap: true,
                physics: new NeverScrollableScrollPhysics(),
                children: [
                  new Text(
                    '23/02/2021',
                    style: new TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  new SizedBox(height: 5),
                  new WsTransactionsTile(
                    icon: Icons.person,
                    title: 'Janice Brewer',
                    subtitle: 'Payment received',
                    currency: '114.00',
                    onTap: () {}
                  ),
                  new WsTransactionsTile(
                    icon: Icons.person,
                    title: 'Phoebe Buffay',
                    subtitle: 'Payment received',
                    currency: '70.16',
                    onTap: () {}
                  ),
                  new SizedBox(height: 10),

                  new Text(
                    '15/02/2021',
                    style: new TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  new SizedBox(height: 10),
                  new WsTransactionsTile(
                    icon: Icons.person,
                    title: 'Monica Geller',
                    subtitle: 'Payment received',
                    currency: '44.50',
                    onTap: () {}
                  ),
                  new WsTransactionsTile(
                    icon: Icons.person,
                    title: 'Rachel Green',
                    subtitle: 'Payment sended',
                    currency: '85.50',
                    isNegative: true,
                    onTap: () {}
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}