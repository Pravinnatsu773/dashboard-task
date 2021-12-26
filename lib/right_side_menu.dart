import 'package:flutter/material.dart';


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
                      Icon(Icons.person_rounded),
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
        ],
        ),
    );
  }
}
