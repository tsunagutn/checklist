//flutter run -d chrome でchrome動作

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:checklist/View/Menu.dart';
import 'package:checklist/View/Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHECKLIST',
      theme: ThemeData(
        //これはアプリケーションのテーマです。
        //
        //「flutter run」でアプリケーションを実行してみてください。 が表示されます
        //アプリケーションには青いツールバーがあります。 次に、アプリを終了せずに、
        //以下のprimarySwatchをColors.greenに変更してから、
        //「ホットリロード」（「flutterrun」を実行したコンソールで「r」を押します。
        //または単にFlutterIDEの「ホットリロード」への変更を保存します）。
        //カウンタがゼロにリセットされなかったことに注意してください。 アプリケーション
        //再起動されません。

        //ヘッダバーの色
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => Menu(),
        '/settings': (_) => Settings(),
      },
      //home: MyHomePage(title: 'チェックリスト'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);

//   //このウィジェットはアプリケーションのホームページです。
//   //ステートフルです。
//   //つまり、外観に影響を与えるフィールドを含むStateオブジェクト（以下で定義）があります。

//   //このクラスは状態の構成です。
//   //これは、親（この場合はAppウィジェット）によって提供され、
//   //Stateのbuildメソッドによって使用される値（この場合はタイトル）を保持します。
//   //ウィジェットサブクラスのフィールドは常に「final」とマークされます。

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//             Text(widget.title),
//           ]),
//         ),
//         endDrawer: Drawer(child: Center(child: Text("Drawer"))),
//         body: Menu());
//   }
// }
