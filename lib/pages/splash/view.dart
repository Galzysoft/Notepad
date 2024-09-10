import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notepad/app_export.dart';
import 'package:notepad/pages/note_home/view.dart';

import 'logic.dart';

class SplashPage extends StatefulWidget {
  static String get route => "/SplashPage";

  SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final logic = Get.put(SplashLogic());

  final state = Get
      .find<SplashLogic>()
      .state;

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then((value) =>
        Get.offAllNamed(NoteHomePage.route));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get.toNamed(NoteHomePage.route);
    return Scaffold(backgroundColor:AppTheme.primary);
  }
}
