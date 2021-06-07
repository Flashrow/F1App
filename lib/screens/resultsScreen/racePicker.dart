import 'package:flutter/material.dart';

class RacePicker extends StatefulWidget {
  RacePicker({Key? key}) : super(key: key);

  @override
  _RacePickerState createState() => _RacePickerState();
}

class _RacePickerState extends State<RacePicker> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => {},
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
          child: Ink(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 3)),
              ],
            ),
            child: Container(
              width: 110,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: Text(
                  "Drivers",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).backgroundColor),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 2),
        InkWell(
          onTap: () => {},
          child: Ink(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 3)),
              ],
            ),
            child: Container(
              width: 110,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "2021",
                      style:
                          TextStyle(color: Theme.of(context).backgroundColor),
                    ),
                    Text(
                      "year",
                      style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 2),
        InkWell(
          onTap: () => {},
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Ink(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 4, offset: Offset(0, 3)),
              ],
            ),
            child: Container(
              width: 110,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 9, 0, 9),
                child: Column(
                  children: [
                    Text(
                      "2",
                      style:
                          TextStyle(color: Theme.of(context).backgroundColor),
                    ),
                    Text(
                      "race",
                      style: TextStyle(
                          color: Theme.of(context).backgroundColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
