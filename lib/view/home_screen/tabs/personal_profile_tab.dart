import 'package:flutter/material.dart';

class PersonalProfileTab extends StatefulWidget {
  const PersonalProfileTab({super.key});

  @override
  State<PersonalProfileTab> createState() => _PersonalProfileTabState();
}

class _PersonalProfileTabState extends State<PersonalProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(Icons.person)
    ],);
  }
}