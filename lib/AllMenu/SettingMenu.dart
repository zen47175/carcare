import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<List> _settings = [
    [
      'Notifications',
      'Turn on/off notifications',
      Icons.notifications_rounded,
      Colors.red[400]
    ],
    ['Dark Mode', ' settings', Icons.dark_mode, Colors.green[400]],
    ['Order', 'Order history', Icons.shopping_bag, Colors.orange[400]],
    ['Help', 'Help and feedback', Icons.help_outline, Colors.blue[400]],
    ['Logout', 'Logout', Icons.exit_to_app, Colors.deepOrange],
  ];

  showLogoutDealog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Logout'),
            content: Text('Are you sure you want to logout?'),
            actions: <Widget>[
              ElevatedButton(
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text('Logout'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                      child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                        'https://instagram.fbkk22-4.fna.fbcdn.net/v/t51.2885-19/s320x320/177614284_1353792738349148_3411146567709947395_n.jpg?_nc_ht=instagram.fbkk22-4.fna.fbcdn.net&_nc_ohc=xHvoXxnEHUYAX8ZA74T&edm=ABfd0MgBAAAA&ccb=7-4&oh=ff7985b066160e59b7325546a2d691c0&oe=61521931&_nc_sid=7bff83'),
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: Text(
                        'Nattapat A',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Text(
                        "เหนื่อยจะตายเเล้ว",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )),
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
                        },
                        icon: Container(
                            child: Icon(
                          Icons.mode_edit_outline_outlined,
                          color: Colors.grey,
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text('Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _settings.length,
                  itemBuilder: (context, index) {
                    return Container(
                        child: settingsOption(
                            _settings[index][0],
                            _settings[index][1],
                            _settings[index][2],
                            _settings[index][3]));
                  }),
            ),
          ],
        ),
      ),
    );
  }

  settingsOption(String title, String subtitle, IconData icon, Color color) {
    return ListTile(
      onTap: () {
        if (title == 'Logout') {
          showLogoutDealog();
        }
      },
      subtitle: Text(subtitle),
      leading: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: color,
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        color: Colors.grey.shade400,
      ),
    );
  }
}
