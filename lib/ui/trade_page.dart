import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:astrade_app/styles/app_theme.dart' as AppTheme;

class TradePage extends StatelessWidget{

  String pageContent ;

  TradePage(this.pageContent);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              height: 200.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds:  3),
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: AppTheme.Colors.appGradientStart
                        ),
                        child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            ),
          Text(this.pageContent,
          style: TextStyle(color: Colors.black, fontSize: 20.0,fontFamily: "ExoRegular")
      )
      ],
    ),
    );
  }
}
