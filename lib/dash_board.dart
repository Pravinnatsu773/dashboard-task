import 'dart:html';

import 'package:dashboardtask/dash_board.dart';
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
    
    double  scaleSmallDevice(BuildContext context){
      if(width<1000){
        return 16;
      }
      return 20;
    }
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(25.0),
        child: Column(
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
                        color: Colors.black12,
                        width: 3.0
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Row(children: [
                      Icon(Icons.person,
                      size: scaleSmallDevice(context)+10,),
                      Text('Students',
                          style:TextStyle(
                            fontSize: scaleSmallDevice(context),
                            
                            color: Colors.black38,
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
                      Icon(Icons.person,
                      size: scaleSmallDevice(context)+10,),
                      Text('Teachers',
                          style:TextStyle(
                            fontSize: scaleSmallDevice(context),
                            
                            color: Colors.black38,
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
                      Icon(Icons.person,
                      size: scaleSmallDevice(context)+10,),
                      Text('Staffs',
                          style:TextStyle(
                            fontSize: scaleSmallDevice(context),
                            
                            color: Colors.black38,
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

          ],
        ),
      ),
      );
  }
}


class SearchBar extends StatelessWidget{
  @override
Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for student, teacher, document...',
                          prefixIcon: InkWell(
                            onTap: (){},
                            child: Container(
                              margin: EdgeInsets.all(8.0),
                              child: Icon(Icons.search),
                            ),
                          )
                        ),
        
                      ),
                    ),
                    Spacer(flex: 1),
          
                  ],
        ),
    );
  }
}