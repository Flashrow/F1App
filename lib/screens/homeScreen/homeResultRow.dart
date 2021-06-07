import 'package:flutter/material.dart';

class HomeResultRow extends StatelessWidget {
  const HomeResultRow(
      {Key? key,
      this.icon = Icons.flag,
      this.name = "Name",
      this.origin = "Origin",
      this.points = "0",
      this.iconColor = Colors.black})
      : super(key: key);

  final IconData icon;
  final Color iconColor;
  final String name;
  final String origin;
  final String points;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
      child: Row(
        children: [
          SizedBox( width: 40, child: Icon(icon)),
          SizedBox( width: 200, child: Text(name)),
          SizedBox( width: 100, child: Text(origin)),
          SizedBox(width: 40, child: Text(points)),
        ],
      ),
    );
  }
}
