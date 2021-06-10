import 'package:f1app/models/RacePickerInfoProvider.dart';
import 'package:f1app/screens/resultsScreen/racePicker.dart';
import 'package:f1app/screens/resultsScreen/resultsTab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResultsScreen extends StatefulWidget {
  const ResultsScreen({Key? key}) : super(key: key);

  @override
  _ResultsScreenState createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  String year = DateTime.now().year.toString();
  String round = "1";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChangeNotifierProvider<RacePickerInfoProvider>(
        create: (_) => RacePickerInfoProvider(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              child: RacePicker(),
            ),
            SizedBox(height: 16),
            Expanded(child: ResultsTab()),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
