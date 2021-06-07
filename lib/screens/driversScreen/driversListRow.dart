import 'package:flutter/material.dart';

class DriversListRow extends StatelessWidget {
  const DriversListRow({Key? key, this.onTap}) : super(key: key);

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 4, 1, 4),
      child: Material(
        elevation: 2.0,
        child: InkWell(
          onTap: onTap as void Function()?,
          child: Ink(
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  offset: Offset(6,0),
                  color: Colors.black26,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Fernando Alonso"),
            ),
          ),
        ),
      ),
    );
  }
}
