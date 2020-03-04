import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:netease_cloud_music/api/api.dart';
import 'package:netease_cloud_music/pages/boot.dart';
import 'package:netease_cloud_music/provider/songModel.dart';
import 'package:netease_cloud_music/provider/userModel.dart';
import 'package:netease_cloud_music/route/routes.dart';
import 'package:netease_cloud_music/setup.dart';
import 'package:provider/provider.dart';

void main() {
  Router router = Router();
  Routes.configureRoutes(router);
  Application.router = router;
  Application.initSp();
  Api.init();
  Application.setupLocator();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<UserModel>.value(
        value: UserModel(),
      ),
      ChangeNotifierProvider<PlaySongsModel>(
        builder: (_) => PlaySongsModel()..init(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Application.getIt<NavigateService>().key,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: BootPage(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
