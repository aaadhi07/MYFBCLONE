import 'package:flutter/material.dart';

class WatchVedioTab extends StatefulWidget {
  const WatchVedioTab({super.key});

  @override
  State<WatchVedioTab> createState() => _WatchVedioTabState();
}

class _WatchVedioTabState extends State<WatchVedioTab> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(Icons.camera)
    ],);
  }
}