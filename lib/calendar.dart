import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';
import 'package:dashboardtask/utils.dart';


class CalendarWidget extends StatefulWidget {
  const CalendarWidget({ Key? key }) : super(key: key);

  @override
  _CalendarWidgetState createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {

  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: TableCalendar(

          calendarStyle: CalendarStyle(
            outsideDaysVisible: false,
            defaultTextStyle: TextStyle(fontSize: 14),
            weekendTextStyle: TextStyle(fontSize: 14),
            todayTextStyle: TextStyle(fontSize: 14),
            selectedTextStyle: TextStyle(fontSize: 14),
            selectedDecoration: BoxDecoration(color: Color(0xff23b6e6),shape: BoxShape.circle,),
            todayDecoration: BoxDecoration(color: Color(0xff23b6e6),shape: BoxShape.circle,),
          ),
          
          rowHeight: 40.0,
          daysOfWeekHeight: 40,
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontWeight:FontWeight.bold,
          )
        ),
        daysOfWeekStyle: DaysOfWeekStyle(
          weekdayStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
          weekendStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)
        ),
        firstDay: kFirstDay,
        lastDay: kLastDay,
        focusedDay: _focusedDay,
        calendarFormat: _calendarFormat,
        selectedDayPredicate: (day){
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay){
           if (!isSameDay(_selectedDay, selectedDay)) {
              // Call `setState()` when updating the selected day
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            }
        },
        
          onPageChanged: (focusedDay) {
            // No need to call `setState()` here
            _focusedDay = focusedDay;
          },
        ),
      ),
    );
  }
}