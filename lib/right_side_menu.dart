import 'package:flutter/material.dart';
import 'package:dashboardtask/calendar.dart';

class RightSideMenu extends StatefulWidget {

  @override
  State<RightSideMenu> createState() => _RightSideMenuState();
}

class _RightSideMenuState extends State<RightSideMenu> {
  String accountValue = 'Andrew Wills';

  var accounts = [
        
    'Andrew Wills',
    'Alex Costa',
    'Tom Holland',
    'Vishen lakhiani',
    'Jay Shetty',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(width: 0.5, color:Colors.grey),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(left:20.0,right:20.0),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 0.5,color: Colors.grey)),
              ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network('https://cdn-icons-png.flaticon.com/512/1458/1458201.png',width: 30,),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 50,
                          
                          child: DropdownButton(
                            alignment: Alignment.center,
                            value: accountValue,
                            elevation: 16,
                            style: TextStyle(color: Colors.black87,fontSize: 18),
                            underline: Container(
                              height: 0,
                              ),
                            items: accounts.map((String items){
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                                );
                            }).toList(),
                            onChanged: (String? newValue){
                              setState(() {
                                accountValue = newValue!;
                                });
                            },
                            hint: Text('Select items'),),
                        )
                    ],
                    ),
                  ),

                    ],
                  ),
                  Icon(Icons.notifications),
                 
              ],
              ),
          ),

          CalendarWidget(),
          

          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Text('Schedule',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                    elevation: 6,
                  
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0, bottom: 20.0,right: 35.0,left: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Monthly Staff Meeting', 
                          style: TextStyle(
                          fontSize: 18,
                            fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Text('19 Sept 2021 at 11 am'),
                          
                        ],),
                    ),
                    ),
                    SizedBox(height: 16.0,),
                  Card(
                    elevation: 6,
                  
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0, bottom: 20.0,right: 35.0,left: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Monthly Staff Meeting', 
                          style: TextStyle(
                          fontSize: 18,
                            fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Text('19 Sept 2021 at 11 am'),
                          
                        ],),
                    ),
                    ),
                    SizedBox(height: 16.0,),
                  Card(
                    elevation: 6,
                  
                    child: Padding(
                      padding: const EdgeInsets.only(top:20.0, bottom: 20.0,right: 35.0,left: 35.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Monthly Staff Meeting', 
                          style: TextStyle(
                          fontSize: 18,
                            fontWeight: FontWeight.bold),),
                          SizedBox(height: 6,),
                          Text('19 Sept 2021 at 11 am'),
                          
                        ],),
                    ),
                    ),
                
              ],
            ),
          )
        ],
        ),
    );
  }
}
