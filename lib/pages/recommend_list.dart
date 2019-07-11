import 'package:flutter/material.dart';
import 'package:memoir/model/recommend.model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendList extends StatefulWidget {
  @override
  _RecommendListState createState() => _RecommendListState();
}

class _RecommendListState extends State<RecommendList> {
  List<RecommendModel> data = recommendData;
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        width: ScreenUtil.screenWidth,
        height: ScreenUtil.screenHeight,
        allowFontScaling: true);
    return ListView.builder(
      itemCount: data.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: ScreenUtil().setHeight(300),
                  width: ScreenUtil().setWidth(550),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 20)
                      ],),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: ScreenUtil().setHeight(200),
                        width: ScreenUtil().setWidth(200),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Text(data[index].title, overflow: TextOverflow.ellipsis,),
                                 Icon(Icons.favorite, color: Colors.grey,)
                               ],
                             ),
                             Text(data[index].subtitle)
                           ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: ScreenUtil().setHeight(250),
                    width: ScreenUtil().setWidth(250),
                    decoration: BoxDecoration(
                        color: data[index].color,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
