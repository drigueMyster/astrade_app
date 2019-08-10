import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:astrade_app/styles/app_theme.dart' as AppTheme;
import 'trade_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {
  static const String routeName = "mainpage";
  int _page  =  0;

  PageController _pageController;

   var _listTitle = ["Articles en ventes", "Déposer un article", "Mes articles", "Mon compte"];
   String _pageTittle = "Articles en ventes";

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context){
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(this._pageTittle, style: TextStyle(fontFamily: "ExoRegular")),
        ),
        body: PageView(
          children: <Widget>[
            TradePage("Articles en ventes"),
            TradePage("Vendre un article"),
            TradePage("Mes expositions"),
            TradePage("Mon compte"),
          ],
          onPageChanged: onPageChanged,
          controller: _pageController,
        ),
        bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
                canvasColor: AppTheme.Colors.appGradientEnd,
                // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                primaryColor: Colors.white70,
                textTheme: Theme
                    .of(context)
                    .textTheme
                    .copyWith(caption: new TextStyle(color: Colors.white))
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text("En ventes", style: TextStyle(fontFamily: "ExoRegular"),),
                ),
                BottomNavigationBarItem(
                  title: Text("Vendre" ,style: TextStyle(fontFamily: "ExoRegular")),
                  icon: Icon(Icons.settings),

                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.featured_play_list),
                  title: Text("Mes expos", style: TextStyle(fontFamily: "ExoRegular")),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box),
                  title: Text("Mon compte", style: TextStyle(fontFamily: "ExoRegular")),
                ),
              ],
              onTap: navigationTapped,
              currentIndex: _page,
            )
        )
    );
  }
  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
      this._pageTittle = this._listTitle[page];
    });
  }
}


