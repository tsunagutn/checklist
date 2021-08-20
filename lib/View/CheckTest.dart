import 'package:flutter/material.dart';

import 'DrawerItem.dart';

class CheckTest extends StatefulWidget {
  CheckTest({Key? key}) : super(key: key);

  @override
  _CheckTestState createState() => _CheckTestState();
}

// 設定ページのステータス管理
class _CheckTestState extends State<CheckTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("環境設定"),
        ]),
        leading: IconButton(
          // 表示アイコン
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30.0,
          onPressed: () {
            //前画面に戻る
            Navigator.of(context).pop();
          },
        ),
      ),
      endDrawer: DrawerItem(),
    );
  }
}
