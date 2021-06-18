import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/views/components/cards/home_card.dart';
import 'package:payment_app/views/components/cards/home_outline_card.dart';
import 'package:payment_app/views/layouts/request.dart';
import 'package:payment_app/views/pages/request/from.dart';
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
        borderRadius: BorderRadius.circular(12)
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          new Align(
            alignment: Alignment.centerRight,
            child: new InkWell(
              onTap: () {},
              child: new Icon(
                Icons.remove_red_eye_rounded,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
          new Spacer(),
          new Text(
            'Saldo disponível',
            style: new TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500
            ),
          ),
          new SizedBox(height: 7),
          new Text(
            'R\$ 2,219.85',
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

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          new SizedBox(height: 15),
          _balanceCard(),
          new SizedBox(height: 15),
          new Center(
            child: new Text(
              'Total estimado de todas as moedas',
              style: new TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          new SizedBox(height: 15),
          new Divider(
            height: 1,
            thickness: 3,
            color: primaryColor,
          ),
          new SizedBox(height: 15),
          new Text(
            'Como podemos te ajudar?',
            style: new TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w700
            ),
          ),
          new SizedBox(height: 20),
          new Container(
            height: 220,
            child: new ListView(
              physics: new BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                new HomeCard(
                  icon: Icons.payment_rounded,
                  label: 'Fazer Pagamento',
                  onTap: () {}
                ),
                new SizedBox(width: 10),
                new HomeCard(
                  icon: Icons.list_alt_rounded,
                  label: 'Ver Extrato',
                  onTap: () {}
                ),
                new SizedBox(width: 10),
                new HomeCard(
                  icon: Icons.arrow_right_alt_rounded,
                  label: 'Fazer Transferência',
                  onTap: () => Navigator.of(context).push(
                    new CupertinoPageRoute(builder: (_) => new TransactionPage())
                  )
                ),
                new SizedBox(width: 10),
                new HomeCard(
                  icon: Icons.arrow_upward_rounded,
                  label: 'Fazer Depósito',
                  onTap: () => Navigator.of(context).push(
                    new CupertinoPageRoute(builder: (_) => new RequestLayout())
                  )
                ),
              ],
            ),
          ),
          new Spacer(),
          new Divider(
            height: 1,
            thickness: 3,
            color: primaryColor,
          ),
          new SizedBox(height: 15),
          new Container(
            height: 80,
            child: new ListView(
              physics: new BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                new HomeOutlineCard(
                  icon: Icons.phone_android_rounded,
                  label: 'Recarga',
                  onTap: () {}
                ),
                new SizedBox(width: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}