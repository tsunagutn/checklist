import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
    );
  }
}
