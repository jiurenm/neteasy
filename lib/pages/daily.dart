import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/api/api.dart';
import 'package:netease_cloud_music/model/daily.dart';
import 'package:netease_cloud_music/model/song.dart';
import 'package:netease_cloud_music/provider/songModel.dart';
import 'package:netease_cloud_music/widgets/future_builder.dart';
import 'package:netease_cloud_music/widgets/play_list.dart';
import 'package:provider/provider.dart';

class DailySongsPage extends StatefulWidget {
  @override
  _DailySongsPageState createState() => _DailySongsPageState();
}

class _DailySongsPageState extends State<DailySongsPage> {
  double _expandedHeight = ScreenUtil().setWidth(340);
  int _count;
  Daily data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          PlayListAppBar(
            backgroundImg: "images/bg_daily.png",
            count: _count,
            playOnTap: (model) {
              playSongs(model, 0);
            },
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Spacer(),
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(40)),
                  margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(5)),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '${DateUtil.formatDate(DateTime.now(), format: 'dd')} ',
                          style: TextStyle(fontSize: 30)
                        ),
                        TextSpan(
                          text: '/ ${DateUtil.formatDate(DateTime.now(), format: 'MM')}',
                          style: TextStyle(fontSize: 16)
                        ),
                      ]
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: ScreenUtil().setWidth(40)),
                  margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(20)),
                  child: Text(
                    '根据你的音乐口味，为你推荐好音乐。',
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ),
              ],
            ),
            expandedHeight: _expandedHeight,
            title: "每日推荐",
          ),
          CustomSliverFutureBuilder<Daily>(
            futureFunc: Api.getDailySong,
            builder: (context, dynamic data) {
              _setCount(data.recommend.length);
              return Consumer<PlaySongsModel>(
                builder: (context, model, child) {
                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          this.data = data;
                          var d = data.recommend[index];
                          return MusicListItem(
                            Music(
                              mvid: d.mvid, picUrl: d.album.picUrl,
                              songName: d.name,
                              artists: "${d.artists.map((a) => a.name).toList().join('/')} - ${d.album.name}",
                            ),
                            onTap: () {
                              playSongs(model, index);
                            },
                          );
                        },
                      childCount: data.recommend.length
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  void playSongs(PlaySongsModel model, int index) {
    model.playSongs(
      data.recommend
          .map((r) => Song(
        r.id,
        name: r.name,
        picUrl: r.album.picUrl,
        artists: '${r.artists.map((a) => a.name).toList().join('/')}',
      ))
          .toList(),
      index: index,
    );
  }

  void _setCount(int count) {
    Future.delayed(Duration(milliseconds: 300), () {
      if (mounted) {
        setState(() {
          _count = count;
        });
      }
    });
  }
}
