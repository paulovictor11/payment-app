import 'package:flutter/material.dart';
import 'package:payment_app/views/components/inputs/ws_input.dart';
import 'package:payment_app/views/components/tiles/ws_contact_tile.dart';
import 'package:payment_app/views/pages/request/from.dart';

class RequestLayout extends StatefulWidget {
  const RequestLayout({ Key? key }) : super(key: key);

  @override
  _RequestLayoutState createState() => _RequestLayoutState();
}

class _RequestLayoutState extends State<RequestLayout> {

  Color primaryColor = new Color(0xFF0A235B);
  TextEditingController _search = new TextEditingController();

  Widget _recentTile() {
    return new CircleAvatar(
      backgroundColor: primaryColor,
      child: new Icon(Icons.person, color: Colors.white),
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
          new WsInput(
            text: 'Name, Email or Mobile number',
            keyboardType: TextInputType.text,
            controller: _search,
            icon: Icons.search_rounded
          ),
          new SizedBox(height: 25),
          new Text(
            'Recent',
            style: new TextStyle(
              color: primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.w700
            ),
          ),
          new SizedBox(height: 15),
          new Container(
            height: 40,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: [
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _recentTile(),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _recentTile(),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _recentTile(),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _recentTile(),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _recentTile(),
                ),
                new Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: _recentTile(),
                ),
              ],
            ),
          ),
          new SizedBox(height: 25),
          new Text(
            'Contacts',
            style: new TextStyle(
              color: primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.w700
            ),
          ),
          new SizedBox(height: 15),
          new Expanded(
            child: new ListView(
              children: [
                new WsContactTile(
                  icon: Icons.person,
                  title: 'Amenda Lewis',
                  onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (_) => new RequestFromPage())
                  )
                ),
                new WsContactTile(
                  icon: Icons.person,
                  title: 'Jose Young',
                  onTap: () {}
                ),
                new WsContactTile(
                  icon: Icons.person,
                  title: 'Janice Brewer',
                  onTap: () {}
                ),
                new WsContactTile(
                  icon: Icons.person,
                  title: 'Phoebe Buffay',
                  onTap: () {}
                ),
                new WsContactTile(
                  icon: Icons.person,
                  title: 'Monica Geller',
                  onTap: () {}
                ),
                new WsContactTile(
                  icon: Icons.person,
                  title: 'Rachel Green',
                  onTap: () {}
                ),
                new WsContactTile(
                  icon: Icons.person,
                  title: 'Kamila Fros',
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