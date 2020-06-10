/*  This will be the profile of the farms before the consumer orders
    from them
 */

import 'package:flutter/material.dart';
import 'package:synthexagriculture/screens/orderingProfile/orderingProfile.dart';
import 'package:synthexagriculture/shared/bottomNavigationBar.dart';

class FarmProfile extends StatefulWidget {
  @override
  _FarmProfileState createState() => _FarmProfileState();
}

class _FarmProfileState extends State<FarmProfile> {
  
  Widget showProfile(String imageSrc, String name) {
    //shows the cards that holds the stuff that can be ordered
    return Card(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(imageSrc),
            radius: 50,
          ),
          Text(name, style: TextStyle(fontSize: 15),),
          FlatButton(
              onPressed: () {
                Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => OrderProfile())
                );
              }, 
              child: Text("Order")
          )
        ],
      ),
    );
  }//end method
  
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
              height: MediaQuery.of(context).size.height/3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Header-BG_us-tomatoes-towering-high.original.jpg"),
                    fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Lorem Ipsum Farms", style: TextStyle(fontSize: 20,color: Colors.white),)
                ],
              )
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Categories"
                    ),
                  ),
                ),
                DropdownButton(),
              ],
            ),
            SizedBox(height: 10,),
            showProfile("https://mucci-production-user-uploads-bucket.s3.amazonaws.com/images/Header-BG_us-tomatoes-towering-high.original.jpg", "300 Pounds of tomatoes\nCAD 80.00"),
            showProfile("https://nopoco.ca/images/norfolk-potato-fresh-premium-potatoes.jpg", "300 Pounds of Potatoes\nCAD 80.00"),
            showProfile("https://sc01.alicdn.com/kf/UTB8kngSIGrFXKJk43Ovq6ybnpXaX.jpg_350x350.jpg", "300 Pounds of watermelon\nCAD 80.00"),
            showProfile("https://morningchores.com/wp-content/uploads/2018/05/Growing-Pumpkins-Your-Guide-to-Plant-Grow-and-Harvest-Pumpkins-FB.jpg", "300 Pounds of Pumpkin\nCAD 80.00")

          ],
        ),
      ),),
    );
  }
}
