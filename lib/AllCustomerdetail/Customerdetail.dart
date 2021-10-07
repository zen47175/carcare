import 'package:flutter/material.dart';

class CustomerBody extends StatelessWidget {
  const CustomerBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('title')),
      body: const Center(
        child: Text('My Page!'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('zen'),
              accountEmail: Text('Mr.Zen'),
              currentAccountPicture: CircleAvatar(
                child: FlutterLogo(
                  size: 42.0,
                ),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  child: Text("Mr.Zen all the way"),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.orange,
                ),
                CircleAvatar(
                  child: Icon(Icons.add),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.grey,
                )
              ],
            ),
            ListTile(title: Text('Item 1'), onTap: () {}),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
            Divider(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  title: Text('Item 3'),
                  onTap: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
