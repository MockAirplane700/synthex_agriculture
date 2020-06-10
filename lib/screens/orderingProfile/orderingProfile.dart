/*  This will hold the ordering profile of the app

 */

import 'package:flutter/material.dart';
import 'package:synthexagriculture/screens/progressTracker/progressTracker.dart';
import 'package:synthexagriculture/shared/bottomNavigationBar.dart';

class OrderProfile extends StatefulWidget {
  @override
  _OrderProfileState createState() => _OrderProfileState();
}

class _OrderProfileState extends State<OrderProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      body: Padding(padding: EdgeInsets.all(10), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://morningchores.com/wp-content/uploads/2018/05/Growing-Pumpkins-Your-Guide-to-Plant-Grow-and-Harvest-Pumpkins-FB.jpg"),
                )
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Select Amount",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                DropdownButton()
              ],
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Add extra instructions"
                ),

              ),
            ),
            SizedBox(height: 10,),
            RaisedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProgressTracker())
                  );
                },
              child: Text("Place order"),
            )
          ],
        ),
      ),),
    );
  }
}
