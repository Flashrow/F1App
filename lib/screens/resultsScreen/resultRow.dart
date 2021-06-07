import 'package:flutter/material.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({Key? key, this.pos = "0", this.name = "name", this.time = "0:00:00:000", this.pts = "0"}) : super(key: key);

  final String pos;
  final String name;
  final String time;
  final String pts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
      child: Row(
        children: [
          SizedBox(
            width: 38,
            child: Text(pos),
          ),
          SizedBox(
            width: 165,
            child: Text(name),
          ),
          SizedBox(
            width: 115,
            child: Text(time),
          ),
          Text(pts),
        ],
      ),
    );
  }
}
