import 'package:flutter/material.dart';


class MyDataTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
               decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
               child: DefaultTabController(
    length: 3,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              isScrollable: true,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black54,
              labelStyle: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
              labelPadding: EdgeInsets.only(top:10,bottom:10,right: 50, left: 50),
              tabs: [
              Tab(text: "Students",),
              
              Tab(text: "Teachers"),
              Tab(text: "Staff"),
            ]),
          ),
        ),


        
        Container( 
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            Container(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Container(
          child: DataTable(
            
            columns: [
                DataColumn(label: Text('Name',style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text('ID',style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text('Class', style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text('Age', style: TextStyle(fontWeight: FontWeight.bold),)),
                DataColumn(label: Text('Email', style: TextStyle(fontWeight: FontWeight.bold),)),
            ],
            rows: [
                DataRow(
                  color: MaterialStateColor.resolveWith((states) => Color(0xff18A0FB)),
                  cells: [
                    DataCell(Text('Alex Smith')),
                    DataCell(Text('SC2041')),
                    DataCell(Text('6A')),
                    DataCell(Text('12')),
                    DataCell(Text('emaya@example.com')),
                    
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Alex Smith')),
                    DataCell(Text('SC2041')),
                    DataCell(Text('6A')),
                    DataCell(Text('12')),
                    DataCell(Text('emaya@example.com')),
                    
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Alex Smith')),
                    DataCell(Text('SC2041')),
                    DataCell(Text('6A')),
                    DataCell(Text('12')),
                    DataCell(Text('emaya@example.com')),
                    
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Alex Smith')),
                    DataCell(Text('SC2041')),
                    DataCell(Text('6A')),
                    DataCell(Text('12')),
                    DataCell(Text('emaya@example.com')),
                    
                  ],
                )
            ],
          ),
        ),
                ),
            ),
            Container(
                child: Text("Teachers Tab"),
            ),
            Container(
                child: Text("Staff Tab"),
            ),
          ]),
        ),
      ],
    ),
  ),
             );
  }
}
