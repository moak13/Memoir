import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memoir/model/narrative.model.dart';

class NarrativeList extends StatefulWidget {
  @override
  _NarrativeListState createState() => _NarrativeListState();
}

class _NarrativeListState extends State<NarrativeList> {
  List<NarrativeModel> data = narrativeData;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        height: ScreenUtil.screenHeight,
        width: ScreenUtil.screenWidth,
        allowFontScaling: true)
      ..init(context);
    return ListView.builder(
      itemCount: data.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: ScreenUtil().setHeight(690),
              width: ScreenUtil().setWidth(300),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: ScreenUtil().setHeight(80),
                            width: ScreenUtil().setWidth(80),
                            decoration: BoxDecoration(
                                color: data[index].avatar,
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(data[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: ScreenUtil().setSp(30))),
                            Text(data[index].time.toString() + ' am',
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(25),
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                        IconButton(
                          icon: Icon(Icons.more_horiz),
                          color: Colors.grey,
                          iconSize: 30,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: ScreenUtil().setHeight(280),
                      width: ScreenUtil().setWidth(530),
                      decoration: BoxDecoration(
                          color: data[index].image,
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(data[index].description, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(Icons.favorite_border),
                              Text(data[index].likes.toString() + ' k')
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Icon(Icons.chat_bubble_outline),
                              Text(data[index].comment.toString() + ' k')
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
