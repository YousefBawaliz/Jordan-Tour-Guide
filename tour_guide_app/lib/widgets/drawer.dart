import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tour_guide_app/Screens/login_screen.dart';

import 'package:tour_guide_app/Screens/welcome_screen.dart';
import 'package:tour_guide_app/utils/utils.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  void initState() {
    super.initState();
    getUsername();
  }

  getUsername() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      username = (snap.data() as Map<String, dynamic>)['username'];
      email = (snap.data() as Map<String, dynamic>)['email'];
    });
    print(snap.data());
  }

  FirebaseAuth _auth = FirebaseAuth.instance;

  signOutUser() async {
    await _auth.signOut();
  }

  String username = '';
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(username.isNotEmpty ? username : "Guest"),
            accountEmail: Text(email.isNotEmpty ? email : ''),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
            ),
            decoration: BoxDecoration(

                // image: DecorationImage(
                //   image: NetworkImage(
                //     "https://media.istockphoto.com/id/1224826528/video/light-grey-white-looped-gradient-abstract-background.jpg?b=1&s=640x640&k=20&c=QatHckhxcLGUbtYbbkKBHv3Kjr4ceCEPyB8EFWnnkYI=",
                //   ),
                //   fit: BoxFit.fill,
                // ),
                ),
            // otherAccountsPictures: [
            //   CircleAvatar(
            //     backgroundColor: Colors.white,
            //     backgroundImage: NetworkImage(
            //         "https://randomuser.me/api/portraits/women/74.jpg"),
            //   ),

            // ],
          ),
          ListTile(
            leading: Icon(Icons.login),
            title: Text("Login"),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => LogInScreen(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.account_box),
            title: Text("About"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.grid_3x3_outlined),
            title: Text("Products"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text("Logout"),
            onTap: () {
              signOutUser();
              showSnackBar(context, "Signed out successfully");
            },
          )
        ],
      ),
    );
  }
}
