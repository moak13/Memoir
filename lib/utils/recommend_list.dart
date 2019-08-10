import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:memoir/model/recommend.model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:memoir/pages/post_view.dart';

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
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
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
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: ScreenUtil().setHeight(200),
                          width: ScreenUtil().setWidth(200),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 8, right: 10, bottom: 8),
                          child: Column(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    data[index].title,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              FlutterRatingBarIndicator(
                                rating: data[index].rating,
                                itemCount: 5,
                                itemSize: 15,
                                emptyColor: Colors.amber.withAlpha(50),
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
          ),
        );
      },
    );
  }
}
