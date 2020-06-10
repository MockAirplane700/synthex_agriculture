/*  This page shows the progress tracker for the app

 */

import 'package:flutter/material.dart';
import 'package:synthexagriculture/shared/bottomNavigationBar.dart';

class ProgressTracker extends StatefulWidget {
  @override
  _ProgressTrackerState createState() => _ProgressTrackerState();
}

class _ProgressTrackerState extends State<ProgressTracker> {
  String orderDetails = "Name: Edwin Chase\nLocation: 1515 Pembina hwy\nOrder number: 899796\nTimeStamp: 11.08am";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Padding(padding: EdgeInsets.all(10), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              child: Image.network("https://www.tcdsb.org/ProgramsServices/BoardServices/OrientationCentre/PublishingImages/map.jpg"),
            ),
            SizedBox(height: 10,),
            Container(child: Padding(padding: EdgeInsets.all(5), child: Text(
              orderDetails, style: TextStyle(fontSize: 15),
            ),),),
            SizedBox(height: 10,),
            RaisedButton(
              onPressed: () {

              },
              child: Text("Contact Driver"),
            )
          ],
        ),
      ),),
    );
  }
}
