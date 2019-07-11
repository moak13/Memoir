import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  bool _obscureText = true;
  bool _visible = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
      if (_obscureText == false) {
        _visible = true;
      } else {
        _visible = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance = ScreenUtil(
        width: ScreenUtil.screenWidth,
        height: ScreenUtil.screenHeight,
        allowFontScaling: true)
      ..init(context);
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.white, Colors.cyan],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp,
                stops: [0.3, 1.0])),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 28, right: 28, top: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.public, size: 30),
                        Text(
                          'Memoir',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: ScreenUtil().setSp(50)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(40),
                    ),
                    Container(
                      height: ScreenUtil().setHeight(800),
                      width: ScreenUtil().setWidth(600),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 1.0)
                          ]),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'Kindly please fill the form',
                                style:
                                    TextStyle(fontSize: ScreenUtil().setSp(30)),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  hintText: 'Name',
                                  prefixIcon: Icon(Icons.person_outline)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  prefixIcon: Icon(Icons.mail_outline)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              obscureText: _obscureText,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: Icon(Icons.lock_outline),
                                suffixIcon: IconButton(
                                  color: Colors.grey,
                                  icon: (_visible
                                      ? Icon(Icons.visibility_off)
                                      : Icon(Icons.visibility)),
                                  onPressed: () {
                                    _toggle();
                                  },
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(right: 15.0, top: 20.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed('wrapper');
                                },
                                child: Container(
                                  height: ScreenUtil().setHeight(100),
                                  width: ScreenUtil().setWidth(300),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(color: Colors.cyan),
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(30),
                                        color: Colors.white),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(160),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Already have an account?"),
                          FlatButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed('login');
                            },
                            child: new Text(
                              'Login',
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(30)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
