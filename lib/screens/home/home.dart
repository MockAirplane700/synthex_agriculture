/*  The home page shows nearby farms to the user

 */

import 'package:flutter/material.dart';
import 'package:synthexagriculture/screens/farmProfile/farmProfile.dart';
import 'package:synthexagriculture/shared/bottomNavigationBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget farmCard (String name, String description) {
    //representation of the farms on each card
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage("https://www.almanac.com/sites/default/files/styles/primary_image_in_article/public/image_nodes/tomatoes_helios4eos_gettyimages-edit.jpeg?itok=4KrW14a4",),
              radius: 50,
            ),

          ),
          SizedBox(width: 5,),
          Text("Farm Name: " + name + "\nDescription: " + description, style: TextStyle(fontSize: 14),),
          FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FarmProfile()));
             },
              child: Text("Open")
          )
        ],
      ),
    );
  }//end method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      appBar: AppBar(
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Form(
                key: GlobalKey<FormState>(),
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  child: TextFormField(
                    validator: (val) => val.isEmpty ? "Cannot search for null item" : null,
                    decoration: InputDecoration(
                        hintText: "Search"
                    ),
                  ),
                ),
              ),
              FlatButton(
                  onPressed: null,
                  child: Icon(Icons.search)
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(10), child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://www.rushlimbaugh.com/wp-content/uploads/2018/08/APP-South-African-Farm.jpg"),
                fit: BoxFit.cover,
                )
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Nearby Farms", style: TextStyle(fontSize: 30, color: Colors.white),)
                ],
              ),
            ),
              SizedBox(height: 20,),
              farmCard("Togaro Farms", "Lorem Ipsum..."),
              farmCard("Kudanga Farms", "Lorem Ipsum..."),
              farmCard("Kayden Farms", "Lorem Ipsum...")

          ],
        ),),
      ),
    );
  }
}
