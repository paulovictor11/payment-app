import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:payment_app/views/layouts/home.dart';
import 'package:payment_app/views/layouts/request.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _tabIndex = 0;
  PageController _pageController = new PageController(initialPage: 0, keepPage: true);
  Color primaryColor = new Color(0xFF0A235B);

  List<CustomNavigationBarItem> tabItem() {
    return [
      new CustomNavigationBarItem(
        icon: new Icon(Icons.account_balance_wallet_outlined),
        title: new Text(
          'Dashboard',
          style: new TextStyle(
            color: 0 == _tabIndex ? primaryColor : Colors.grey
          ),
        )
      ),
      new CustomNavigationBarItem(
        icon: new Icon(Icons.outbond_outlined),
        title: new Text(
          'Send',
          style: new TextStyle(
            color: 1 == _tabIndex ? primaryColor : Colors.grey
          ),
        )
      ),
      new CustomNavigationBarItem(
        icon: new Icon(Icons.input_rounded),
        title: new Text(
          'Request',
          style: new TextStyle(
            color: 2 == _tabIndex ? primaryColor : Colors.grey
          ),
        )
      ),
      new CustomNavigationBarItem(
        icon: new Icon(Icons.settings_outlined),
        title: new Text(
          'Settings',
          style: new TextStyle(
            color: 3 == _tabIndex ? primaryColor : Colors.grey
          ),
        )
      ),
    ];
  }

  _appBarTitle() {
    if (_tabIndex == 1) return 'Send Money';
    if (_tabIndex == 2) return 'Request Money';
    if (_tabIndex == 3) return 'Settings';
    return 'Dashboard';
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: new Text(
          'Olá, Paulo Victor',
          style: new TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          new Padding(
            padding: const EdgeInsets.only(right: 16),
            child: new InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () {},
              child: new Icon(
                Icons.notifications_none_rounded,
                color: Colors.white,
                size: 26,
              ),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(right: 16),
            child: new InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              onTap: () {},
              child: new Icon(
                Icons.settings_rounded,
                color: Colors.white,
                size: 26,
              ),
            ),
          )
        ],
      ),
      body: new PageView(
        physics: new NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: (index) => pageChanged(index),
        children: [
          new HomeLayout(),
          new Container(color: Colors.red),
          new RequestLayout(),
          new Container(color: Colors.green),
        ],
      ),
      // bottomNavigationBar: new Padding(
      //   padding: const EdgeInsets.only(bottom: 12),
      //   child: new CustomNavigationBar(
      //     backgroundColor: Colors.white,
      //     borderRadius: Radius.circular(15),
      //     selectedColor: primaryColor,
      //     unSelectedColor: Colors.grey,
      //     currentIndex: _tabIndex,
      //     onTap: (index) => onNavTap(index),
      //     items: tabItem(),
      //     isFloating: true,
      //   ),
      // ),
    );
  }

  void pageChanged(int index) {
    setState(() {
      _tabIndex = index;
    });
  }

  void onNavTap(int index) {
    setState(() {
      _tabIndex = index;
      _pageController.animateToPage(
        index,
        duration: new Duration(milliseconds: 500),
        curve: Curves.ease
      );
    });
  }
}