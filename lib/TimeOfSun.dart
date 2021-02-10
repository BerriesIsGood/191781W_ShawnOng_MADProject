import 'package:flutter/material.dart';

class TimeOfSun extends StatefulWidget {

  @override
  _TimeOfSunState createState() => _TimeOfSunState();
}

class _TimeOfSunState extends State<TimeOfSun> {
  @override
  Widget build(BuildContext context) {
    return Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         mainAxisSize: MainAxisSize.max,
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Text(
               'Sunrise & Sunset',
               style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
               ),
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(left: 50.0),
                 child: Text(
                   'Sunrise',
                   style: TextStyle(color: Colors.white, fontSize: 16.0),
                   ),
               ),
               Padding(
                 padding: EdgeInsets.only(right: 50.0),
                 child: Text(
                   'Sunset',
                   style: TextStyle(color: Colors.white, fontSize: 16.0),
                   ),
               ),
             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(left: 25.0),
                 child: Text(
                   '7:16 am',
                   style: TextStyle(fontSize: 25.0, color: Colors.grey[700]),
                   ),
               ),
               Padding(
                 padding: EdgeInsets.only(right: 25.0),
                 child: Text(
                   '7:20 pm',
                   style: TextStyle(fontSize: 25.0, color: Colors.grey[700]),
                   ),
               ),
             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Padding(
                 padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
                 child: Container(
                   width: 400.0,
                   height: 150.0,
                   child: Image.asset('images/SunLoc.png'),
                   ),
               ),
           ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               Text(
                 'Dawn',
                 style: TextStyle(color: Colors.white, fontSize: 16.0),
                 ),
               Text(
                 'Solar noon',
                 style: TextStyle(color: Colors.white, fontSize: 16.0),
                 ),
               Text(
                 'Dusk',
                 style: TextStyle(color: Colors.white, fontSize: 16.0),
                 ),
             ],
           ),

           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               Text('6:55 am', style: TextStyle(color: Colors.grey[700]),),
               Text('1:18 pm', style: TextStyle(color: Colors.grey[700]),),
               Text('7:42 pm', style: TextStyle(color: Colors.grey[700]),),
             ],
           ),
         ],
       ),
    );
  }
}