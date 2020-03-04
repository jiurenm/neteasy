import 'dart:convert' show json;
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:netease_cloud_music/model/album.dart';
import 'package:netease_cloud_music/model/banner.dart';
import 'package:netease_cloud_music/model/daily.dart';
import 'package:netease_cloud_music/model/mv.dart';
import 'package:netease_cloud_music/model/recommend.dart';
import 'package:netease_cloud_music/model/user.dart' show User;
import 'package:netease_cloud_music/route/routes.dart';
import 'package:netease_cloud_music/setup.dart';
import 'package:netease_cloud_music/widgets/loading.dart';
import 'package:path_provider/path_provider.dart';

class Api {
  static Dio _dio;
  static final String baseUrl = "http://localhost";

  static void init() async {
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    CookieJar cj = PersistCookieJar(dir: tempPath);
    _dio = Dio(BaseOptions(baseUrl: '$baseUrl:3000', followRedirects: false))
      ..interceptors.add(CookieManager(cj));
      // ..interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }

  static Future<Response> _get(BuildContext context, String url,
      {Map<String, dynamic> params, bool isShowLoading = true}) async {
    if(isShowLoading) {
      Loading.showLoading(context);
    }
    try {
      return await _dio.get(url, queryParameters: params);
    } catch(e) {
      if(e.response.statusCode >= 300 && e.response.statusCode < 400) {
        Future.delayed(Duration(milliseconds: 200), () {
          Application.getIt<NavigateService>().popAndPushNamed(Routes.login);
          Fluttertoast.showToast(msg: "登录失效，请重新登录", gravity: ToastGravity.CENTER);
        });
        return Future.error(Response(data: -1));
      } else if(e.response is Map) {
        return Future.value(e.response);
      } else {
        return Future.error(0);
      }
    } finally {
      Loading.hideLoading(context);
    }
  }

  static Future<User> login(BuildContext context, String phone, String password) async {
    var response = await _get(context, "/login", params: {"email": phone, "password": password});
    if(json.decode(response.toString())['code'] != 200) {
      response = await _get(context, "/login/cellphone", params: {"phone": phone, "password": password});
    }
    return User(json.decode(response.toString()));
  }

  static Future<Response> refreshLogin(BuildContext context) async {
    return await _get(context, '/login/refresh', isShowLoading: false);
  }

  static Future<Banners> getBannersData(BuildContext context) async {
    var response = await _get(context, "/banner", params: {"type": 1});
    return Banners(json.decode(response.toString()));
  }

  static Future<Recommends> getRecommends(BuildContext context) async {
    var response = await _get(context, "/recommend/resource");
    return Recommends(json.decode(response.toString()));
  }

  static Future<NewAlbum> getNewAlbum(BuildContext context) async {
    var response = await _get(context, "/top/album", params: {"offset": 1, "limit": 10});
    return NewAlbum(json.decode(response.toString()));
  }

  static Future<TopMV> getTopMV(BuildContext context) async {
    var response = await _get(context, "/top/mv", params: {"limit": 10});
    return TopMV(json.decode(response.toString()));
  }

  static Future<Daily> getDailySong(BuildContext context) async {
    var response = await _get(context, "/recommend/songs");
    return Daily(json.decode(response.toString()));
  }
}