import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memoir/model/traveler.model.dart';

class TravelerList extends StatefulWidget {
  @override
  _TravelerListState createState() => _TravelerListState();
}

class _TravelerListState extends State<TravelerList> {
  List<TravelerModel> data = travelerDist;
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
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Material(
                elevation: 0.4,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: ScreenUtil().setHeight(200),
                  width: ScreenUtil().setWidth(250),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(13),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: ScreenUtil().setHeight(80),
                            width: ScreenUtil().setWidth(80),
                            decoration: BoxDecoration(
                                color: data[index].color,
                                borderRadius: BorderRadius.circular(6)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              data[index].name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: ScreenUtil().setHeight(25)),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              data[index].count.toString() + ' narratives',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: ScreenUtil().setSp(20),
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(data[index].likes.toString() + ' likes'),
                            Icon(Icons.favorite, color: Colors.grey)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
