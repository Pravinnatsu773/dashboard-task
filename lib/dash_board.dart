import 'dart:html';

import 'package:dashboardtask/dash_board.dart';
import 'package:dashboardtask/tab_bar.dart';
import 'package:dashboardtask/data_table.dart';
import 'package:dashboardtask/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:dashboardtask/line_chart.dart';


class DashBoardScreen extends StatefulWidget{
  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
 
 String classValue = 'Class 4'; 
 String divisionValue = 'B';
  var classItems = [    
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];

  var divisionItems = [
    'A',
    'B',
    'C',
    'D',
    'E'
  ];

  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
  
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: 400,
              
            child: SearchBar(),
            ),
            SizedBox(height:20) ,

            Row(
              children: [
                Icon(
                Icons.dashboard_outlined,
                size: 50,
                ),
                SizedBox(width: 16.0,),
                Text('Dashboard',
                        style:TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                       ),
              ],
            ),
            SizedBox(height: 16.0,),
            Row(
              
              children: [
                GestureDetector(
                  child: Container(
                    width: width/10,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffbbdefb),
                        width: 3.0
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(children: [
                     Image.network('https://cdn-icons-png.flaticon.com/512/3135/3135810.png',width: 30,),
                     SizedBox(width: 10,),
                      Text('Students',
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffbbdefb),
                          ),
                         ),
                    ],),
                  ),
                ),
                SizedBox(width: 16.0,),
                GestureDetector(
                  child: Container(
                    width: width/8,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 3.0
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(children: [
                      Image.network('https://cdn-icons-png.flaticon.com/512/1995/1995574.png',width: 30,),
                     SizedBox(width: 10,),
                      Text('Teachers',
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                         ),
                    ],),
                  ),
                ),
                SizedBox(width: 16.0,),
                GestureDetector(
                  onTap: (){

                  },
                  
                  child: Container(
                        
                    width: width/10,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 3.0
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(children: [
                      Image.network('https://cdn-icons.flaticon.com/png/512/3281/premium/3281869.png?token=exp=1640603553~hmac=c8ca46886bf43760ab489e168424b12d',width: 30,),
                     SizedBox(width: 10,),
                      Text('Staffs',
                          style:TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                         ),
                    ],),
                  ),
                ),
            ],
            ),

            SizedBox(height: 16.0,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Class:'),
                      SizedBox(height: 8.0,),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        child: DropdownButton(
                          alignment: Alignment.center,
                          value: classValue,
                          elevation: 16,
                          style: TextStyle(color: Colors.black87),
                          underline: Container(
                            height: 0,
                            ),
                          items: classItems.map((String items){
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                              );
                          }).toList(),
                          onChanged: (String? newValue){
                            setState(() {
                              classValue = newValue!;
                              });
                          },
                          hint: Text('Select items'),),
                      )
                  ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Division:'),
                      SizedBox(height: 8.0,),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                        child: DropdownButton(
                          alignment: Alignment.center,
                          value: divisionValue,
                          elevation: 16,
                          style: TextStyle(color: Colors.black87),
                          underline: Container(
                            height: 0,
                            ),
                          items:  divisionItems.map((String items){
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                              );
                          }).toList(),
                          onChanged: (String? newValue){
                            setState(() {
                              divisionValue = newValue!;
                              });
                          },
                          hint: Text('Select items'),),
                      )
                  ],
                  ),
                )
            ],
            ),
            SizedBox(
              height: 20,
            ),
              Container(
                child: LineChartSample2(),
              ),
              SizedBox(
              height: 20,
            ),
             MyDataTable()
          ],
        ),
      ),
      );
  }
}

