import 'package:flutter/material.dart';

class ResultRow extends StatelessWidget {
  const ResultRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text("Pos",
                style: TextStyle(color: Theme.of(context).backgroundColor)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text("Driver",
                style: TextStyle(color: Theme.of(context).backgroundColor)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text("Time",
                style: TextStyle(color: Theme.of(context).backgroundColor)),
          ),
          Text("Points",
              style: TextStyle(color: Theme.of(context).backgroundColor)),
        ],
      ),
    );
  }
}