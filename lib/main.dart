//flutter run -d chrome でchrome動作

import 'package:flutter/material.dart';
import 'package:checklist/TestPage1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'チェックリスト',
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  //このウィジェットはアプリケーションのホームページです。
  //ステートフルです。
  //つまり、外観に影響を与えるフィールドを含むStateオブジェクト（以下で定義）があります。

  //このクラスは状態の構成です。
  //これは、親（この場合はAppウィジェット）によって提供され、
  //Stateのbuildメソッドによって使用される値（この場合はタイトル）を保持します。
  //ウィジェットサブクラスのフィールドは常に「final」とマークされます。

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      //このsetStateの呼び出しは、この状態で何かが変更されたことをFlutterフレームワークに通知します。
      //これにより、以下のビルドメソッドが再実行され、更新された値が表示に反映されます。
      //setState（）を呼び出さずに_counterを変更した場合、buildメソッドは再度呼び出されないため、
      //何も起こらないように見えます。
      _counter++;
    });
  }

  void _incrementBackCounter() {
    _counter++;
  }

  @override
  Widget build(BuildContext context) {
    //このメソッドは、たとえば上記の_incrementCounterメソッドによって実行されるように、
    //setStateが呼び出されるたびに再実行されます。
    // Flutterフレームワークは、ビルドメソッドの再実行を高速化するように最適化されているため、
    //ウィジェットのインスタンスを個別に変更する必要はなく、更新が必要なものをすべて再構築できます。
    return Scaffold(
      appBar: AppBar(
        //ここでは、App.buildメソッドによって作成されたMyHomePageオブジェクトから値を取得し、
        //それを使用してアプリバーのタイトルを設定します。
        //title: Text(widget.title),

        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          //Icon(Icons.create),
          Text("メニュー"),
        ]),
      ),
      endDrawer: Drawer(child: Center(child: Text("Drawer"))),
      body: Center(
        //中央はレイアウトウィジェットです。 それは一人っ子を取り、
        //それを親の真ん中に配置します。
        child: Column(
          //列はレイアウトウィジェットでもあります。
          //それは子供たちのリストを取り、それらを垂直に配置します。
          //デフォルトでは、子を水平方向に合わせてサイズを調整し、親と同じ高さにしようとします。
          //
          //「デバッグペイント」を呼び出し
          //（コンソールで「p」を押すか、
          //AndroidStudioのFlutterInspectorから「ToggleDebugPaint」アクションを選択するか、
          //Visual Studio Codeの「ToggleDebugPaint」コマンドを選択します）
          //、 各ウィジェット。
          //
          //列には、それ自体のサイズと子の配置方法を制御するためのさまざまなプロパティがあります。
          //ここでは、mainAxisAlignmentを使用して子供を垂直に中央に配置します。
          //ここでの主軸は垂直軸です。
          //これは、列が垂直であるためです（交差軸は水平になります）。
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              child: ElevatedButton(
                onPressed: _incrementBackCounter,
                child: Text("チェックリスト", style: TextStyle(fontSize: 80)),
              ),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '押しなさい',
            ),
            TextButton(
              onPressed: _incrementBackCounter,
              child: Text("裏でカウント"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 24.0,
                ),
                Icon(
                  Icons.audiotrack,
                  color: Colors.green,
                  size: 30.0,
                ),
                Icon(
                  Icons.beach_access,
                  color: Colors.blue,
                  size: 36.0,
                ),
              ],
            ),
            TextButton(
                onPressed: () => {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return TestPage1();
                      }))
                    },
                child: Text("進む", style: TextStyle(fontSize: 80)))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), //この末尾のコンマは、ビルドメソッドの自動フォーマットをより適切にします。
    );
  }
}
