import 'package:cached_network_image/cached_network_image.dart';
import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:netease_cloud_music/api/api.dart';
import 'package:netease_cloud_music/model/album.dart';
import 'package:netease_cloud_music/model/banner.dart';
import 'package:netease_cloud_music/model/mv.dart';
import 'package:netease_cloud_music/model/recommend.dart';
import 'package:netease_cloud_music/route/navigator.dart';
import 'package:netease_cloud_music/widgets/banner.dart';
import 'package:netease_cloud_music/widgets/future_builder.dart';
import 'package:netease_cloud_music/widgets/play_list.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  Widget _buildBanner() {
    return CustomFutureBuilder(
      futureFunc: Api.getBannersData,
      builder: (context, Banners data) {
        return MyBanner(data.banners.map((e) => e.pic).toList());
      },
    );
  }

  Widget _buildCategoryList() {
    var map  = {
      "每日推荐": "images/icon_daily.png",
      "歌单": "images/icon_playlist.png",
      "排行榜": "images/icon_rank.png",
      "电台": "images/icon_radio.png",
      "直播": "images/icon_look.png"
    };
    var keys = map.keys.toList();
    var width = ScreenUtil().setWidth(100);

    return GridView.custom(
      shrinkWrap: true,
      padding: EdgeInsets.only(bottom: 5),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: keys.length,
        childAspectRatio: 1 / 1.1,
      ),
      childrenDelegate: SliverChildBuilderDelegate((context, index) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            switch(index) {
              case 0:
                NavigatorUtil.goDailySongsPage(context);
                break;
              case 1:
                break;
            }
          },
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: width,
                    height: width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width / 2),
                      border: Border.all(color: Colors.black12, width: 0.5),
                      gradient: RadialGradient(
                        colors: [
                          Color(0xFFFF8174),
                          Colors.red,
                        ],
                        center: Alignment(-1.7, 0),
                        radius: 1,
                      ),
                      color: Colors.red
                    ),
                  ),
                  Image.asset(map[keys[index]], width: width, height: width,),
                  Container(
                    padding: EdgeInsets.only(top: 5),
                    child: keys[index] == "每日推荐" ?
                        Text(
                          "${DateUtil.formatDate(DateTime.now(), format: 'dd')}",
                          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                        : Text(""),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setWidth(10),
              ),
              Text("${keys[index]}", style: TextStyle(color: Colors.black87, fontSize: 14),),
            ],
          ),
        );
      }, childCount: keys.length),
    );
  }

  Widget _buildRecommend() {
    return CustomFutureBuilder<Recommends>(
      futureFunc: Api.getRecommends,
      builder: (context, snapshot) {
        var data = snapshot.recommend;
        return Container(
          height: ScreenUtil().setWidth(300),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return PlayList(
                text: data[index].name,
                picUrl: data[index].picUrl,
                playCount: data[index].playcount,
                maxLines: 2,
                onTap: () {
                  print(1);
                },
              );
            },
            itemCount: data.length,
            separatorBuilder: (context, index) {
              return SizedBox(width: ScreenUtil().setWidth(30),);
            },
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }

  Widget _buildNew() {
    return CustomFutureBuilder<NewAlbum>(
      futureFunc: Api.getNewAlbum,
      builder: (context, snapshot) {
        var data = snapshot.albums;
        return Container(
          height: ScreenUtil().setWidth(300),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return PlayList(
                text: data[index].name,
                picUrl: data[index].picUrl,
                subText: data[index].artist.name ?? "",
                maxLines: 1,
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(width: ScreenUtil().setWidth(30),);
            },
            itemCount: data.length,
            padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
          ),
        );
      },
    );
  }

  Widget _buildTopMV() {
    return CustomFutureBuilder<TopMV>(
      futureFunc: Api.getTopMV,
      builder: (context, snapshot) {
        var data = snapshot.data;
        return ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(height: ScreenUtil().setWidth(100),);
          },
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
          itemBuilder: (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: CachedNetworkImage(imageUrl: data[index].cover,),
                ),
                SizedBox(height: ScreenUtil().setWidth(5),),
                Text(
                  data[index].name,
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: ScreenUtil().setWidth(2),),
                Text(data[index].artistName, style: TextStyle(fontSize: 16, color: Colors.grey),),
              ],
            );
          },
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: data.length,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildBanner(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: ScreenUtil().setWidth(40),
                  ),
                  _buildCategoryList(),
                  SizedBox(
                    height: ScreenUtil().setWidth(20),
                  ),
                  Text("推荐歌单", style: TextStyle(fontSize: 16, color: Colors.black87),)
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setWidth(20),
            ),
            _buildRecommend(),
            SizedBox(
              height: ScreenUtil().setWidth(30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(15),
              ),
              child: Text(
                '新碟上架',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setWidth(20),
            ),
            _buildNew(),
            SizedBox(
              height: ScreenUtil().setWidth(30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(15),
              ),
              child: Text(
                'MV 排行',
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setWidth(20),
            ),
            _buildTopMV(),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
