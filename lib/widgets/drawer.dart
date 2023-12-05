import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://datepsychology.com/wp-content/uploads/2022/09/gigachad.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          // padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                margin: EdgeInsets.zero,
                accountName: Text("Gourav"),
                accountEmail: Text("9307787236"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Progile",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
