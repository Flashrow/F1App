import 'package:f1app/components/mainPattern/navigationBar.dart';
import 'package:flutter/material.dart';

class MainPattern extends StatefulWidget {
  MainPattern({Key key, this.body}) : super(key: key);

  final Widget body;
  @override
  _MainPatternState createState() => _MainPatternState();
}

class _MainPatternState extends State<MainPattern> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("F1App"),
      ),
      bottomNavigationBar: NavigationBar(),
      body: widget.body,
    );
  }
}
