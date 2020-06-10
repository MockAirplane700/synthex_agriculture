/*    Here is where we implement the farmers' social sharing platform

 */

import 'package:flutter/material.dart';
import 'package:synthexagriculture/shared/bottomNavigationBar.dart';

class Social extends StatefulWidget {
  @override
  _SocialState createState() => _SocialState();
}

class _SocialState extends State<Social> {

  Widget farmerCard(String name, String imgSrc) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage(imgSrc),
                  radius: 20,
                ),
                SizedBox(width: 5,),
                Text(name,style: TextStyle(fontSize: 14),),

              ],
            ),
            SizedBox(height: 5,),
            Container(
              child: Image.network(imgSrc),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                    onPressed: null,
                    child: Icon(Icons.thumb_up, color: Colors.grey,)
                ),
                FlatButton(
                    onPressed: null,
                    child: Icon(Icons.comment, color: Colors.grey,)
                ),
                FlatButton(
                    onPressed: null,
                    child: Icon(Icons.share, color: Colors.grey,)
                )
              ],
            )
          ],
        ),
      ),
    );
  }//end method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(),
      appBar: AppBar(),
      body: Padding(padding: EdgeInsets.all(10), child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            farmerCard("Indigo Farms", "https://www.rushlimbaugh.com/wp-content/uploads/2018/08/APP-South-African-Farm.jpg"),
            farmerCard("Ringler Farms", "https://www.almanac.com/sites/default/files/styles/primary_image_in_article/public/image_nodes/tomatoes_helios4eos_gettyimages-edit.jpeg?itok=4KrW14a4"),
            farmerCard("Takuda Farms", "https://gdb.voanews.com/E8D44412-4567-4503-902C-ECEF6E5D56C6_cx0_cy4_cw0_w408_r1_s.jpg"),
            farmerCard("Tsunade Farms", "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT06Ib1KF2d7hrfWp5o4OP423B2AQ6CTRHE0Q52PAJBj3b4y4p5&usqp=CAU"),
          ],
        ),
      ),),
    );
  }
}
