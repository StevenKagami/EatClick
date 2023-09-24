import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Planner extends StatefulWidget {
  const Planner({super.key});

  @override
  State<Planner> createState() => _PlannerState();
}

class _PlannerState extends State<Planner> {
  DateTime today = DateTime.now();
  
  void _onDaySelected(DateTime day, DateTime focused) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // centerTitle: true,
        title: const Text("My Plan", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        // height: MediaQuery.of(context).size.height,
        // width: double.infinity,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(today.day.toString() + " - " + today.month.toString() + " - " + today.year.toString(),style: TextStyle(fontSize: 24),),
          Container(
            child: TableCalendar(
            locale: "en_US",
            headerStyle:
                HeaderStyle(formatButtonVisible: false, titleCentered: true),
            availableGestures: AvailableGestures.all,
            focusedDay: today,
            selectedDayPredicate: (day)=>isSameDay(day, today),
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 12),
            onDaySelected: _onDaySelected,
          )),
          const Text("Today"),
          Container(
          )
        ],
      ),
    );
  }
}
