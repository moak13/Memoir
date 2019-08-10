import 'package:flutter/material.dart';
import 'package:memoir/model/homeShowcase.model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memoir/pages/post_view.dart';

class ShowCase extends StatefulWidget {
  @override
  _ShowCaseState createState() => _ShowCaseState();
}

class _ShowCaseState extends State<ShowCase> {
  final List<ShowCaseModel> data = showCaseData;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        width: ScreenUtil.screenWidth,
        height: ScreenUtil.screenHeight,
        allowFontScaling: true);
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => PostView(
                      color: data[index].color,
                      title: data[index].title,
                      subtitle: data[index].subtitle,
                      rating: data[index].rating,
                      days: data[index].day,
                      intro: data[index].intro,
                      view: data[index].view,
                    )));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: ScreenUtil().setHeight(400),
                      width: ScreenUtil().setWidth(600),
                      decoration: BoxDecoration(
                          color: data[index].color,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          alignment: Alignment.topRight,
                          child: Icon(Icons.favorite, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, bottom: 10),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: ScreenUtil().setHeight(250),
                      width: ScreenUtil().setWidth(550),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 0.9,
                                offset: Offset(0.1, 0.6))
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(data[index].title,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(30))),
                            Text(data[index].subtitle,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                height: ScreenUtil().setHeight(3),
                                width: ScreenUtil().setWidth(500),
                                decoration:
                                    BoxDecoration(color: Colors.grey[300]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.star,
                                          color: Colors.orange, size: 15),
                                      Text(
                                        'Score',
                                        style: TextStyle(
                                            fontSize: ScreenUtil().setSp(25),
                                            fontWeight: FontWeight.bold
                                      ),),
                                      Text(data[index].rating.toString(),
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(25),
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                  Icon(
                                    Icons.access_time,
                                    color: Colors.grey,
                                    size: 15,
                                  ),
                                  Text(data[index].day, style: TextStyle(fontWeight: FontWeight.bold),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
