import 'package:flutter/material.dart';

class FriendReqTab extends StatefulWidget {
  const FriendReqTab({super.key});

  @override
  State<FriendReqTab> createState() => _FriendReqTabState();
}

class _FriendReqTabState extends State<FriendReqTab> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(child: Icon(Icons.people),)
    ],);
  }
}