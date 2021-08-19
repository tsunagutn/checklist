import 'package:flutter/material.dart';
import 'package:checklist/Model/TermModel.dart';
import 'package:checklist/View/DrawerItem.dart';

class Term extends StatefulWidget {
  Term({Key? key}) : super(key: key);

  @override
  _TermState createState() => _TermState();
}

// 設定ページのステータス管理
class _TermState extends State<Term> {
  // todoの一覧リスト変数を用意
  List<TermModel> settingsList = [];

  bool _check = false;
  late DateTime _checkdate;

  void _termCheck(bool e) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("利用規約"),
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
        // 背景色
        //backgroundColor: Colors.teal[50],
        body: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
              Text("あいうえおです\nかきくけこ"),
              CheckboxListTile(
                  activeColor: Colors.blue,
                  title: Text('同意する'),
                  controlAffinity: ListTileControlAffinity.leading,
                  value: _check,
                  onChanged: (e) {
                    setState(() {
                      _check = e!;
                      if (e) {
                        _checkdate = DateTime.now();
                      }
                    });
                  })
            ])));
  }
}
