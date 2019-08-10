import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memoir/utils/narrative_list.dart';
import 'package:memoir/utils/traveler_list.dart';

class HarvestView extends StatefulWidget {
  @override
  _HarvestViewState createState() => _HarvestViewState();
}

class _HarvestViewState extends State<HarvestView> {
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
              padding: const EdgeInsets.only(
                  left: 30, top: 50, right: 10, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('Travel Harvest',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenUtil().setSp(35),
                          )),
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
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Traveler',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(35)),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Click to update',
                        style: TextStyle(color: Colors.cyan)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 30, right: 10, top: 5, bottom: 10),
              child: Container(
                height: ScreenUtil().setHeight(450),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: TravelerList(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Narrative',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: ScreenUtil().setSp(35)),
                  ),
                  FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text('View All',
                              style: TextStyle(color: Colors.grey)),
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
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: NarrativeList(),
        )
      ],
    ));
  }
}
