import 'package:flutter/material.dart';


class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: Container(
        
        
    decoration: BoxDecoration(
        gradient: LinearGradient(
            stops: [
		-0.23, 
		0.36, 
		1.2, 
		1.3, 
		],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
		Color(0xFF000000), 
		Color(0xFF132253), 
		Color(0xFF1b75d3), 
		Color(0xFF66a3ed), 
		],
        )
      ),
        child: ListView(
          children: [
            DrawerHeader(
              child: ListTile(
              onTap: (){},
              horizontalTitleGap: 15,
              contentPadding: EdgeInsets.only(top:20,bottom:20,right:10,left:25),
              leading: Icon(
                Icons.school_outlined,
                size: 55,
                color: Colors.white,
              ),
              title: const Text('SCHOOL',
                          style:TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                         ),
            ),
            ),
            ListTile(
              onTap: (){},
              horizontalTitleGap: 15,
              contentPadding: EdgeInsets.only(top:15,bottom:15,right:50,left:50),
              leading: Icon(
                Icons.dashboard_outlined,
                size: 40,
                color: Colors.white,
              ),
              title: const Text('Dashboard',
                          style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                         ),
            ),
            Stack(
              children: [
                ListTile(
                  onTap: (){},
                  horizontalTitleGap: 15,
                  contentPadding: EdgeInsets.only(top:15,bottom:15,right:50,left:50),
                  leading: Icon(
                    Icons.message_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  title: Stack(
                    children: [
                      Text('Logbook',
                              style:TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                             ),
                Positioned(
                        top: 1.0,
                        right: 0.0,
                        child: Stack(
                          children: [
                            Icon(Icons.brightness_1, size: 22.0, color: Colors.red,),
                            Padding(
                              padding: const EdgeInsets.only(top:4.0,left: 6.0),
                              child: Text('2', style: TextStyle(fontSize: 12,color: Colors.white),),
                            ),
                          ],
                        ),
                ),
                    ],
                  )
                ),
                
              ],
            ),
            ListTile(
              onTap: (){},
              horizontalTitleGap: 15,
              contentPadding: EdgeInsets.only(top:15,bottom:15,right:50,left:50),
              leading: Icon(
                Icons.calendar_today_outlined,
                size: 40,
                color: Colors.white,
              ),
              title: const Text('Calender',
                          style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                         ),
            ),
            ListTile(
              onTap: (){},
              horizontalTitleGap: 15,
              contentPadding: EdgeInsets.only(top:15,bottom:15,right:50,left:50),
              leading: Icon(
                Icons.storage,
                size: 40,
                color: Colors.white,
              ),
              title: const Text('Database',
                          style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                         ),
            ),
            ListTile(
              onTap: (){},
              horizontalTitleGap: 15,
              contentPadding: EdgeInsets.only(top:15,bottom:15,right:50,left:50),
              leading: Icon(
                Icons.people_alt_outlined,
                size: 40,
                color: Colors.white,
              ),
              title: const Text('Attendance',
                          style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                         ),
            ),
            ListTile(
              onTap: (){},
              horizontalTitleGap: 15,
              contentPadding: EdgeInsets.only(top:15,bottom:15,right:50,left:50),
              leading: Icon(
                Icons.settings_outlined,
                size: 40,
                color: Colors.white,
              ),
              title: const Text('Settings',
                          style:TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                         ),
            ),
          ],
        ),
      ),
    );
  }
}
