import 'package:flutter/material.dart';

class RoundedTopCornersTile extends StatelessWidget {
  const RoundedTopCornersTile({Key? key, this.title = "Title", this.child})
      : super(key: key);

  final String title;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 14, 0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 4,
              color: Colors.black26,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Theme.of(context).primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Text(
                  this.title,
                  style: TextStyle(
                    color: Theme.of(context).backgroundColor,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            this.child!,
          ],
        ),
      ),
    );
  }
}
