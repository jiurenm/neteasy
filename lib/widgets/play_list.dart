import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/model/song.dart';
import 'package:netease_cloud_music/provider/songModel.dart';
import 'package:netease_cloud_music/setup.dart';
import 'package:netease_cloud_music/util/number_util.dart';
import 'package:netease_cloud_music/widgets/RoundedNetImage.dart';
import 'package:netease_cloud_music/widgets/flexible_detail_bar.dart';
import 'package:provider/provider.dart';

typedef PlayModelCallback = void Function(PlaySongsModel model);

class PlayList extends StatelessWidget {
  final String picUrl;
  final String text;
  final String subText;
  final num playCount;
  final int maxLines;
  final VoidCallback onTap;
  final int index;

  PlayList({
    this.picUrl,
    @required this.text,
    this.playCount,
    this.subText,
    this.onTap,
    this.maxLines = -1,
    this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        width: ScreenUtil().setWidth(200),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            picUrl == null ? new Container(width: 0.0, height: 0.0) : PlayListCover(picUrl, playCount: playCount,),
            index == null ? new Container(width: 0.0, height: 0.0) : Text(index.toString(), style: TextStyle(fontSize: 16, color: Colors.grey),),
            SizedBox(
              height: ScreenUtil().setWidth(5),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 12, color: Colors.black87),
              maxLines: maxLines != -1 ? maxLines : null,
              overflow: maxLines != -1 ? TextOverflow.ellipsis : null,
            ),
            subText == null ? new Container(width: 0.0, height: 0.0) : SizedBox(height: ScreenUtil().setWidth(2),),
            subText == null ? new Container(width: 0.0, height: 0.0) : Text(
              subText,
              style: TextStyle(fontSize: 10, color: Colors.grey),
              maxLines: maxLines != -1 ? maxLines : null,
              overflow: maxLines != -1 ? TextOverflow.ellipsis : null,
            ),
          ],
        ),
      ),
    );
  }
}

class PlayListCover extends StatelessWidget {
  final String url;
  final int playCount;
  final double width;

  PlayListCover(this.url, {this.playCount, this.width = 200});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: Container(
        width: ScreenUtil().setWidth(width),
        height: ScreenUtil().setHeight(width),
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            CachedNetworkImage(imageUrl: url,),
            playCount == null ? new Container(width: 0.0, height: 0.0) : Padding(
              padding: EdgeInsets.only(top: ScreenUtil().setWidth(2), right: ScreenUtil().setWidth(5)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    "images/icon_triangle.png",
                    width: ScreenUtil().setWidth(30),
                    height: ScreenUtil().setWidth(30),
                  ),
                  Text(
                    "${NumberUtils.amountConversion(playCount)}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PlayListAppBar extends StatelessWidget {
  final double expandedHeight;
  final Widget content;
  final String backgroundImg;
  final String title;
  final double sigma;
  final PlayModelCallback playOnTap;
  final int count;

  PlayListAppBar({
    @required this.expandedHeight,
    @required this.content,
    @required this.title,
    @required this.backgroundImg,
    this.sigma = 5,
    this.playOnTap,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      expandedHeight: expandedHeight,
      pinned: true,
      elevation: 0,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      bottom: MusicListHeader(onTap: playOnTap, count: count,),
      flexibleSpace: FlexibleDetailBar(
        content: content,
        background: Stack(
          children: <Widget>[
            backgroundImg.startsWith('http') ?
              CachedNetworkImage(
                imageUrl: backgroundImg,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ) : Image.asset(
                backgroundImg,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: sigma,
                sigmaY: sigma,
              ),
              child: Container(
                color: Colors.black38,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MusicListHeader extends StatelessWidget implements PreferredSizeWidget {
  final int count;
  final Widget tail;
  final PlayModelCallback onTap;

  MusicListHeader({this.count, this.tail, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(ScreenUtil().setWidth(30))),
      child: Container(
        color: Colors.white,
        child: Consumer<PlaySongsModel>(builder: (context, model, child) {
          return InkWell(
            onTap: () {
              onTap(model);
            },
            child: SizedBox.fromSize(
              size: preferredSize,
              child: Row(
                children: <Widget>[
                  SizedBox(width: ScreenUtil().setWidth(10),),
                  Icon(
                    Icons.play_circle_outline,
                    size: ScreenUtil().setWidth(50),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(10),),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      "播放全部",
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ),
                  SizedBox(width: ScreenUtil().setWidth(5),),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: count == null
                        ? Container()
                        : Text(
                      "(共$count首)",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  tail ?? Container(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(ScreenUtil().setWidth(100));
}

class MusicListItem extends StatelessWidget {
  final Music _data;
  final VoidCallback onTap;

  MusicListItem(this._data, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        width: Application.screenWidth,
        height: ScreenUtil().setWidth(120),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 15,),
            _data.picUrl == null
                ? Container()
                : RoundedNetImage(
              _data.picUrl,
              width: 100,
              height: 100,
              radius: 5,
            ),
            _data.index == null
                ? Container()
                : Container(
              alignment: Alignment.center,
              width: ScreenUtil().setWidth(60),
              height: ScreenUtil().setWidth(50),
              child: Text(
                _data.index.toString(),
                style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _data.songName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  SizedBox(width: 10,),
                  Text(
                    _data.artists,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: _data.mvid == 0
                  ? Container()
                  : IconButton(
                icon: Icon(Icons.play_circle_outline),
                onPressed: () {},
                color: Colors.grey,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
