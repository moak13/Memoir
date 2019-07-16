import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memoir/utils/recommend_list.dart';
import 'package:memoir/utils/showcase.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        width: ScreenUtil.screenWidth,
        height: ScreenUtil.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 10, top: 10, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Beautiful world',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: ScreenUtil().setSp(35),
                          letterSpacing: 1.5),
                    ),
                    Text(
                      'Partly Cloudy, 23 °C',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: ScreenUtil().setSp(25)),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                  tooltip: 'Search',
                  color: Colors.grey[600],
                  iconSize: 30,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              height: ScreenUtil().setHeight(500),
              child: ShowCase(),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 10, top: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Recommend',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(35)),
                ),
                FlatButton(
                    onPressed: () {},
                    child: Row(
                      children: <Widget>[
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: ScreenUtil().setSp(25)),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                          size: 12,
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
      Padding(
            padding: const EdgeInsets.only(left: 30, right: 10),
            child: RecommendList(),
          )
      ],
    ));
  }
}
