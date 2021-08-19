import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("メインメニュー"),
        ]),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
                height: 60,
                child: const DrawerHeader(
                  child: Text('チェックリストAP'),
                  decoration: BoxDecoration(
                    color: Color(0xffE7E7E7),
                  ),
                )),
            ListTile(
              title: Text("利用規約"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              title: Text("バージョン"),
              trailing: Text("0.0.1"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              color: Color(0xffffffe0),
              elevation: 10,
              shadowColor: Color(0xff555555),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  borderRadius: BorderRadius.circular(30),
                  onTap: () {
                    print('Card tapped.');
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 400,
                      height: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 60.0,
                            ),
                            Text(
                              "チェックリストをやる",
                              style:
                                  TextStyle(fontSize: 32, color: Colors.black),
                            ),
                          ]))),
            ),
            Card(
              margin: const EdgeInsets.only(top: 30, bottom: 30),
              color: Color(0xffffffe0),
              elevation: 10,
              shadowColor: Color(0xff555555),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  borderRadius: BorderRadius.circular(30),
                  onTap: () async {
                    final result =
                        await Navigator.of(context).pushNamed('/settings');
                    // if (result != null) {
                    //   setState(() {
                    //     todoList.add(result);
                    //   });
                  },
                  child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 400,
                      height: 100,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.green,
                              size: 60.0,
                            ),
                            Text(
                              "設定を変更する",
                              style:
                                  TextStyle(fontSize: 32, color: Colors.black),
                            ),
                          ]))),
            ),
          ],
        ),
      ),
    );
  }
}
