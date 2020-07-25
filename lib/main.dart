import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Is a stateless app.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.red])),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //main axis for column is the vertical axis. Cross axis is the x-axis
              //vice versa for rows
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
//                backgroundColor: Colors.red,
                  backgroundImage: AssetImage('images/1.jpg'
                  ),

                ),
                Text(
                    "Abhishek",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico",
                    color: Colors.white
                  ),

                ),//This will be used for our profile page
                Text(
                  "INNOVATOR | THINKER | PROGRAMMER",
                  style: TextStyle(
                    fontFamily: "SourceSansPro",
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15

                  ),
                ),
                  //Adding a line between our text and contact details
                SizedBox(height: 20.0,
                  width: 200,
                  child: Divider(
                    color: Colors.teal.shade50,
                  ),
                ),
                  Card(
//              Container( //Changing container to card. Padding and height are not present in the card widget
//                height: 50,
//                color:Colors.white,
//                padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                  //We will pad our Row widget using the padding class
                  child:
//                Padding(
                    //The child is the row
//                  padding: const EdgeInsets.all(10.0),
                     ListTile(

                        leading:Icon(
                          Icons.phone,
                          color: Colors.teal.shade900,

                        ),
                        title:
                        Text("+91-9957077830",
                          style: TextStyle(
                            fontFamily: "SourceSansPro",
                            color: Colors.teal.shade900,
                              fontWeight: FontWeight.bold,
                            fontSize: 20,
                            letterSpacing: 1.2

                          ),
                        )

                    ),
//                ),
                ),
                Card(
//              Container(
//                height: 50,
//                color:Colors.white,
//                padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal.shade900,
                    ),
                    title: Text(
                      "abose550@gmail.com",
                      style: TextStyle(
                      fontFamily: "SourceSansPro",
                      color: Colors.teal.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1.2
                    ),
                  ),
                )
                ),
              ],
            ),
          ),
//          child:Column()
        ),
      ),
    );
  }
}

// Row written below would be replaced using ListTile

//Row(
//children: <Widget>[
//Icon(
//Icons.email,
//color: Colors.teal.shade900,
//
//),
//SizedBox(
//width: 50,
//),
//Text("abose550@gmail.com",
//style: TextStyle(
//fontFamily: "SourceSansPro",
//color: Colors.teal.shade900,
//fontWeight: FontWeight.bold,
//fontSize: 20,
//letterSpacing: 1.2
//
//),
//)
//],