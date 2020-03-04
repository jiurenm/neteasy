import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:netease_cloud_music/api/api.dart';
import 'package:netease_cloud_music/model/user.dart';
import 'package:netease_cloud_music/route/navigator.dart';
import 'package:netease_cloud_music/setup.dart';

class UserModel with ChangeNotifier {
  User _user;

  User get user => this._user;

  void initUser() {
    if(Application.sp.containsKey("user")) {
      _user = User(json.decode(Application.sp.getString('user')));
    }
  }

  void login(BuildContext context, String phone, String password) async {
    User user = await Api.login(context, phone, password);
    if(user.code > 299) {
      Fluttertoast.showToast(msg: "登录失败，请检查账号密码", gravity: ToastGravity.CENTER);
      return;
    }
    Fluttertoast.showToast(msg: "登录成功", gravity: ToastGravity.CENTER);
    _saveUserInfo(user);
    NavigatorUtil.goHomePage(context);
  }

  _saveUserInfo(User user) {
    _user = user;
    Application.sp.setString('user', json.encode(user.toJson()));
  }
}