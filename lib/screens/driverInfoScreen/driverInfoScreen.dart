import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DriverInfoScreen extends StatelessWidget {
  DriverInfoScreen(
      {Key? key,
      this.driverName,
      this.driverNumber,
      this.dateOfBirth,
      this.nationality,
      this.code,
      this.url})
      : super(key: key);

  final String? driverName;
  final String? driverNumber;
  final String? dateOfBirth;
  final String? nationality;
  final String? code;
  final String? url;

  @override
  Widget build(BuildContext context) {
    void _launchURL() async => {
          if (url != null && url!.isNotEmpty)
            await canLaunch(url!)
                ? await launch(url!)
                : throw 'Could not launch $url'
          else
            {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Can't open the link"),
              )),
            }
        };

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("F1App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    driverName ?? "",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text("Number: "),
                    Text(driverNumber ?? ""),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text("Code: "),
                    Text(code ?? ""),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text("Date of birth: "),
                    Text(dateOfBirth ?? ""),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text("Nationality: "),
                    Text(nationality ?? ""),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 36),
              child: MaterialButton(
                onPressed: _launchURL,
                child: Text(
                  "Wikipedia",
                  style: TextStyle(color: Theme.of(context).backgroundColor),
                ),
                color: Theme.of(context).primaryColor,
                minWidth: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
