/*  In here is where the farm's social profile is shown

 */

import 'package:flutter/material.dart';
import 'package:synthexagriculture/shared/bottomNavigationBar.dart';

class FarmSocialProfile extends StatefulWidget {
  @override
  _FarmSocialProfileState createState() => _FarmSocialProfileState();
}

class _FarmSocialProfileState extends State<FarmSocialProfile> {
  @override
  Widget build(BuildContext context) {
    String string = "Lorem ipsum, dgus hfydf fgy8 cudgf udfgd dfh cdof huf udccu dfhci0 d id fihc0i h uv";
    String stats = "Lorem Ipsum: lorem...\nLorem Ipsum: lorem \nLorem Ipsum: lorem\nLorem Ipsum:dhfug";
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(10), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              child: Image.network("https://www.rushlimbaugh.com/wp-content/uploads/2018/08/APP-South-African-Farm.jpg"),
            ),
            SizedBox(height: 10,),
            Text(string,style: TextStyle(fontSize: 15,),maxLines: 6,),
            SizedBox(height: 10,),
            Padding(padding: EdgeInsets.all(10),child: Container(
              child: Text(stats,style: TextStyle(fontSize: 30),),
            ),),
            SizedBox(height: 10,),
            RaisedButton(
              onPressed: () {

              },
              child: Text("Contact Farm"),
            )
          ],
        ),
      ),),
    );
  }
}
