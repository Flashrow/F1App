import 'package:flutter/material.dart';

class DriverInfoScreen extends StatefulWidget {
  DriverInfoScreen({Key key}) : super(key: key);

  @override
  _DriverInfoScreenState createState() => _DriverInfoScreenState();
}

class _DriverInfoScreenState extends State<DriverInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.arrow_back),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Fernando Alonso",
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Image(
              image: AssetImage('assets/images/alonso.jpg'),
              height: 300,
            ),
          ),
          SizedBox(height: 16),
          Text(
              "Fernando Alonso is a Spanish racing driver currently racing for Alpine in Formula One. He won the series' World Drivers' Championship in 2005 and 2006 with Renault, having also driven for McLaren, Ferrari and Minardi. With Toyota, Alonso won the 24 Hours of Le Mans twice, in 2018 and 2019, and the FIA World Endurance Championship in 2018–19. In 2019, he won the 24 Hours of Daytona with Wayne Taylor Racing."),
        ],
      ),
    );
  }
}
