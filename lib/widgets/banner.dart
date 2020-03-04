import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBanner extends StatefulWidget {
  final List<String> _images;
  final double height;
  final ValueChanged<int> onTap;
  final Curve curve;

  MyBanner(this._images,
      {this.height = 200, this.onTap, this.curve = Curves.linear})
       : assert(_images != null);

  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<MyBanner> {
  PageController _pageController;
  int _curIndex;
  Timer _timer;

  @override
  void initState() {
    super.initState();
    _curIndex = widget._images.length * 5;
    _pageController = PageController(initialPage: _curIndex);
    _initTimer();
  }

  Widget _buildPageView() {
    var length = widget._images.length;
    return AspectRatio(
      aspectRatio: (1080 + (ScreenUtil().setWidth(15) * 2)) /
          (400 - ScreenUtil().setWidth(15)),
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _curIndex = index;
            if(index == 0) {
              _curIndex = length;
              Timer(Duration(milliseconds: 350), () {
                _pageController.jumpToPage(_curIndex);
              });
            }
          });
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onPanDown: (details) {
              if(_timer != null) {
                _timer.cancel();
                _timer = null;
                _initTimer();
              }
            },
            onTap: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('当前 page 为 ${index % length}'),
                  duration: Duration(milliseconds: 500),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(ScreenUtil().setWidth(10))),
                child: CachedNetworkImage(imageUrl: widget._images[index % length], fit: BoxFit.fitWidth,),
              ),
            ),
          );
        }
      ),
    );
  }

  Widget _buildIndicator() {
    var length = widget._images.length;
    return Positioned(
      bottom: 10,
      child: Row(
        children: widget._images.map((s){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.0),
            child: ClipOval(
              child: Container(
                width: ScreenUtil().setWidth(12),
                height: ScreenUtil().setWidth(12),
                color: s == widget._images[_curIndex % length]
                    ? Colors.red : Colors.grey,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _buildPageView(),
        _buildIndicator(),
      ],
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _timer = null;
    super.dispose();
  }

  _initTimer() {
    if(_timer == null) {
      if(mounted) {
        _timer = Timer.periodic(Duration(seconds: 3), (t){
          _curIndex++;
          _pageController.animateToPage(
            _curIndex,
            duration: Duration(milliseconds: 300),
            curve: Curves.linear);
        });
      }
    }
  }
}
