import 'package:flutter/material.dart';
import 'package:payment_app/views/components/tiles/ws_transations_tile.dart';
import 'package:payment_app/views/pages/transaction/transaction.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({ Key? key }) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  Color primaryColor = new Color(0xFF0A235B);

  Widget _balanceCard() {
    return new Container(
      padding: const EdgeInsets.all(16),
      width: double.maxFinite,
      height: 180,
      decoration: new BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(25)
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          new Spacer(),
          new Text(
            'Available Balance',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),
          ),
          new SizedBox(height: 7),
          new Text(
            '\$ 2,219.85',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w700
            ),
          ),
        ],
      ),
    );
  }

  Widget _titleTile() {
    return new ListTile(
      onTap: () => Navigator.of(context).push(
        new MaterialPageRoute(builder: (_) => new TransactionPage())
      ),
      title: new Text(
        'Transactions',
        style: new TextStyle(
          color: primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w700
        ),
      ),
      trailing: new Icon(
        Icons.arrow_forward_rounded,
        color: primaryColor,
        size: 26,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          _balanceCard(),
          new SizedBox(height: 15),
          new Center(
            child: new Text(
              'Estimated total of all currencies',
              style: new TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          new SizedBox(height: 15),
          _titleTile(),
          new Expanded(
            child: new ListView(
              children: [
                new Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: new Text(
                    '25/02/2021',
                    style: new TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                    ),
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
                new WsTransactionsTile(
                  icon: Icons.person,
                  title: 'Monica Geller',
                  subtitle: 'Payment received',
                  currency: '44.50',
                  onTap: () {}
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}