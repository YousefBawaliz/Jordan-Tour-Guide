import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tour_guide_app/Firebase_Services/firestore_methods.dart';
import 'package:tour_guide_app/Provider/user_provider.dart';
import 'package:tour_guide_app/utils/colors.dart';
import '../Utils/utils.dart';

class AddPostScreen extends StatefulWidget {
  const AddPostScreen({super.key});

  @override
  State<AddPostScreen> createState() => _AddPostScreenState();
}

class _AddPostScreenState extends State<AddPostScreen> {
  final TextEditingController _commentText = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _commentText.dispose();
  }

  @override
  void initState() {
    super.initState();
    getUsername();
    getUserID();
  }

  void postComment(String uid, String username) async {
    setState(() {
      isLoading = true;
    });
    // start the loading
    try {
      // upload to storage and db
      String res = await FireStoreMethods().uploadComment(
        _commentText.text,
        uid,
        username,
      );
      if (res == "success") {
        setState(() {
          isLoading = false;
        });
        showSnackBar(
          context,
          'Posted!',
        );
        // clearImage();
      } else {
        showSnackBar(context, res);
      }
    } catch (err) {
      setState(() {
        isLoading = false;
      });
      showSnackBar(
        context,
        err.toString(),
      );
    }
  }

  getUsername() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      username = (snap.data() as Map<String, dynamic>)['username'];
    });
    print(snap.data());
  }

  getUserID() async {
    DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .get();

    setState(() {
      userId = (snap.data() as Map<String, dynamic>)['uid'];
    });
    print(snap.data());
  }

  String username = '';
  String userId = '';
  @override
  Widget build(BuildContext context) {
    //get user info
    // final UserProvider userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mobileBackgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          'post comment',
        ),
        centerTitle: false,
        actions: <Widget>[
          TextButton(
            onPressed: () => postComment(
              userId,
              username,
            ),
            child: const Text(
              "comment",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0),
            ),
          )
        ],
      ),
      // Comment FORM
      body: Column(
        children: <Widget>[
          isLoading
              ? const LinearProgressIndicator()
              : const Padding(padding: EdgeInsets.only(top: 0.0)),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     userProvider.getUser.photoUrl,
              //   ),
              // ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  controller: _commentText,
                  decoration: const InputDecoration(
                      hintText: "Write a review...", border: InputBorder.none),
                  maxLines: 8,
                ),
              ),
              SizedBox(
                height: 45.0,
                width: 45.0,
                child: AspectRatio(
                  aspectRatio: 487 / 451,
                  child: Container(
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //   fit: BoxFit.fill,
                      //   alignment: FractionalOffset.topCenter,
                      //   image: MemoryImage(_file!),
                      // )),
                      ),
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
