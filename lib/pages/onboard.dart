import 'package:flutter/material.dart';
import 'package:memoir/model/onboard.model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardView extends StatefulWidget {
  @override
  _OnboardViewState createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView>
    with TickerProviderStateMixin {
  PageController _pageController;
  AnimationController animationController;
  Animation<double> _animation;
  int currentPage = 0;
  bool lastPage = false;
  bool seen = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: currentPage);
    animationController =
        AnimationController(duration: Duration(microseconds: 300), vsync: this);
    _animation = Tween(begin: 0.6, end: 1.0).animate(animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    animationController.dispose();
    super.dispose();
  }

  // @override
  // void _check() {
  //   if()
  // }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        width: ScreenUtil.screenWidth,
        height: ScreenUtil.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white, Colors.cyan],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      tileMode: TileMode.clamp,
                      stops: [0.3, 1.0])),
              child: PageView.builder(
                itemCount: onboardList.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                    if (currentPage == onboardList.length - 1) {
                      lastPage = true;
                      animationController.forward();
                    } else {
                      lastPage = false;
                    }
                  });
                },
                itemBuilder: (context, index) {
                  return Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          var page = onboardList[index];
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Stack(
                                  children: <Widget>[
                                    Text('Memoir',
                                        style: new TextStyle(
                                            fontSize: ScreenUtil.getInstance()
                                                .setSp(90),
                                            fontFamily: 'Lato'))
                                  ],
                                ),
                              ),
                              Image.asset(page.imageUrl),
                              Container(
                                height: ScreenUtil.getInstance().setHeight(200),
                                margin: const EdgeInsets.only(left: 12),
                                child: Stack(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 30, left: 22),
                                      child: new Text(page.title,
                                          style: TextStyle(
                                              fontFamily: 'Lato-Medium',
                                              fontSize: ScreenUtil.getInstance()
                                                  .setSp(100),
                                              letterSpacing: 1.0)),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: Text(page.body,
                                    style: TextStyle(
                                        fontSize:
                                            ScreenUtil.getInstance().setSp(50),
                                        color: Colors.blueGrey,
                                        fontFamily: 'Lato-Light')),
                              )
                            ],
                          );
                        },
                      )
                    ],
                  );
                },
              ),
            ),
            Positioned(
                right: 30,
                bottom: 30,
                child: lastPage
                    ? FloatingActionButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('login');
                        },
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.white,
                      )
                    : Container())
          ],
        ),
      ),
    );
  }
}
