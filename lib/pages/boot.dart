import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/api/api.dart';
import 'package:netease_cloud_music/provider/userModel.dart';
import 'package:netease_cloud_music/route/navigator.dart';
import 'package:netease_cloud_music/setup.dart';
import 'package:provider/provider.dart';

class BootPage extends StatefulWidget {
  @override
  _BootPageState createState() => _BootPageState();
}

class _BootPageState extends State<BootPage> with TickerProviderStateMixin {

  AnimationController _logoController;
  Tween _scaleTween;
  CurvedAnimation _logoAnimation;

  @override
  void initState() {
    super.initState();
    _scaleTween = Tween(begin: 0, end: 1);
    _logoController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500)
    )..drive(_scaleTween);
    Future.delayed(Duration(milliseconds: 500), () {
      _logoController.forward();
    });
    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeOutQuart
    );
    _logoController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(milliseconds: 500), () {
          goPage();
        });
      }
    });
  }

  void goPage() async{
    UserModel userModel = Provider.of<UserModel>(context);
    userModel.initUser();
    if (userModel.user != null) {
      await Api.refreshLogin(context).then((value){
        if(value.data != -1){
          NavigatorUtil.goHomePage(context);
        }
      });
    } else
      NavigatorUtil.goLoginPage(context);
  }


  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    final size = MediaQuery.of(context).size;
    Application.screenWidth = size.width;
    Application.screenHeight = size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ScaleTransition(
          scale: _logoAnimation,
          child: Hero(
            tag: 'logo',
            child: Image.asset('images/icon_logo.png'),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _logoController.dispose();
  }
}
