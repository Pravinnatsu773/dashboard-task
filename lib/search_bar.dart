import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget{
  @override
Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                color: Color(0xffeeeeee),
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
                    
          
                  ],
        ),
    );
  }
}