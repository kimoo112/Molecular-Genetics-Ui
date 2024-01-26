// ignore_for_file: library_private_types_in_public_api

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../widgets/stream_builder_widget.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final signedInUser = FirebaseAuth.instance.currentUser;
  final _firestore = FirebaseFirestore.instance;
  String? messageText;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StreamBuilderWidget(firestore: _firestore),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: cPrimary,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
      Expanded(
                    child: TextField(
                      cursorColor: cPrimary,
                      controller: controller,
                      onChanged: (value) {
                        messageText = value;
                      },
                      style: TextStyle(color: cLight),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintStyle: TextStyle(
                          fontFamily: 'Almarai',
                        ),
                        hintText: 'Almarai',
                        border: InputBorder.none,
                      ),
                    ),
                  ),             
                  TextButton(
                    onPressed: () {
                      _firestore.collection('messages').add(
                        {
                          'massege': messageText,
                          'sender': signedInUser!.displayName,
                          'email':  signedInUser!.email,
                          'time': FieldValue.serverTimestamp()
                        },
                      );
                      controller.clear();
                    },
                    child: Text(
                      'ارسال',
                      style: TextStyle(
                        color: cPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                 
             
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
