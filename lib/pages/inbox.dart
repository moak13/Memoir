import 'package:flutter/material.dart';

class InboxView extends StatefulWidget {
  @override
  _InboxViewState createState() => _InboxViewState();
}

class _InboxViewState extends State<InboxView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Inbox View'),
      ),
    );
  }
}