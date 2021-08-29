import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  // ignore: avoid_field_initializers_in_const_classes
  final String imageurl =
      'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: always_specify_types
          // ignore: prefer_const_literals_to_create_immutables
          // ignore: always_specify_types
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(top: 50, left: 20),
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    //  decoration: BoxDecoration(color: Colors.white),
                    // ignore: prefer_const_constructors
                    accountName: Text(
                      'Gaurav Tak',
                      // ignore: prefer_const_constructors
                      style: TextStyle(color: Colors.white),
                    ),
                    // ignore: prefer_const_constructors
                    accountEmail: Text('gauravtak2609@gmail.com',
                        // ignore: prefer_const_constructors
                        style: TextStyle(color: Colors.white)),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageurl),
                    ))),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                'Home',
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                'Profile',
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            // ignore: prefer_const_constructors
            ListTile(
              // ignore: prefer_const_constructors
              leading: Icon(
                CupertinoIcons.phone,
                color: Colors.white,
              ),
              // ignore: prefer_const_constructors
              title: Text(
                'Contact',
                // ignore: prefer_const_constructors
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
