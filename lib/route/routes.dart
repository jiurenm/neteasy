import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:netease_cloud_music/pages/boot.dart';
import 'package:netease_cloud_music/pages/daily.dart';
import 'package:netease_cloud_music/pages/home.dart';
import 'package:netease_cloud_music/pages/login.dart';

class Routes {
  static String root = "/";
  static String home = "/home";
  static String login = "/login";
  static String dailySongs = "/daily_songs";

  static void configureRoutes(Router router) {
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return LoginPage();
      }
    );
    router.define(root, handler: Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
          return BootPage();
        }
    ));
    router.define(login, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return LoginPage();
      }
    ));
    router.define(home, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return HomePage();
      }
    ));
    router.define(dailySongs, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) {
        return DailySongsPage();
      }
    ));
  }
}