import 'package:f1app/API/ErgastApi.dart';
import 'package:f1app/models/RacePickerInfoProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/helpers/show_scroll_picker.dart';
import 'package:provider/provider.dart';

class RacePicker extends StatefulWidget {
  RacePicker({Key? key}) : super(key: key);

  @override
  _RacePickerState createState() => _RacePickerState();
}

class _RacePickerState extends State<RacePicker> {
  var selectedType = "Drivers";
  var selectedYear = "current";
  var selectedRound = "last";
  int roundsNumber = 1;
  bool yearChange = false;

  late List<String> yearsList;
  List<String> roundsList = [];
  List<String> scheduleType = <String>[
    'Drivers',
    'Constructors',
  ];

  @override
  initState() {
    super.initState();
    yearsList = getYearsList();
  }

  _getRoundsNumber() {
    return context.read<ErgastApi>().getRoundsNumber(selectedYear);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getRoundsNumber(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(child: CircularProgressIndicator());
        else if (snapshot.hasData) {
          roundsList = getRoundsList(snapshot.data);
          if (yearChange) {
            selectedRound = roundsList.first.toString();
            yearChange = false;
          }
          Future.delayed(Duration.zero, () async {
            context.read<RacePickerInfoProvider>().setRound(selectedRound);
            context.read<RacePickerInfoProvider>().setYear(selectedYear);
          });
        } else if (snapshot.hasError)
          return Text("ERROR: ${snapshot.error}");
        else
          return Text('None');

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
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
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 3)),
                  ],
                ),
                child: Container(
                  width: 110,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                    child: Text(
                      selectedType,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: Theme.of(context).backgroundColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 2),
            InkWell(
              onTap: () => {
                showMaterialScrollPicker(
                  context: context,
                  title: "Pick season year",
                  items: yearsList,
                  selectedValue: selectedYear,
                  onChanged: (value) => setState(() {
                    selectedYear = value;
                    yearChange = true;
                  }),
                ),
              },
              child: Ink(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 3)),
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
                          selectedYear,
                          style: TextStyle(
                              color: Theme.of(context).backgroundColor),
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
              onTap: () => {
                showMaterialScrollPicker(
                  context: context,
                  title: "Pick round number",
                  items: roundsList,
                  selectedValue: selectedRound,
                  onChanged: (value) => setState(() {
                    selectedRound = value;
                  }),
                )
              },
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
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 3)),
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
                          selectedRound,
                          style: TextStyle(
                              color: Theme.of(context).backgroundColor),
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
      },
    );
  }

  List<String> getYearsList() {
    List<String> list = [];
    for (int year = DateTime.now().year; year >= 1950; year--) {
      list.add(year.toString());
    }
    return list;
  }

  List<String> getRoundsList(int roundsNumber) {
    List<String> list = [];
    for (int round = roundsNumber; round >= 1; round--) {
      list.add(round.toString());
    }
    return list;
  }
}
