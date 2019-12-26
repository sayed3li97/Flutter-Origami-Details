import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //Define the color that will be used all over the app
  static Color mainColor = Color(0xffB3BCF5);
  double buttonsHeight = 120;

  //The app bar
  AppBar appBar = AppBar(
    title: Text("For Sale"),
    centerTitle: true,
    elevation: 0.0,
    leading: Icon(Icons.arrow_back_ios),
    backgroundColor: mainColor,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Page Background color
      backgroundColor: mainColor,
      //Appbar
      appBar: appBar,
      body: Column(
        children: <Widget>[
          //Space on tap of the page under the app bar
          Container(
            padding: EdgeInsets.only(
              top: (MediaQuery.of(context).size.height * 0.10) -
                  appBar.preferredSize.height,
            ),
          ),
          // The main white container that will hold most of the widgets in the page
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 10, style: BorderStyle.none),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height * 0.946) -
                  appBar.preferredSize.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Origami bird image
                  Container(
                    width: 200,
                    child: Image.asset("assets/orgami.png"),
                  ),
                  // Origami bird title
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Origami ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        Text(
                          "Bird",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  // Origami bird desc
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Text(
                      "An origami bird is a unique type of bird that you cant find in the wildness. We are planning to enhance it with Artificial Intelligence but we are afraid it might take over the world. ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  // List of types of packages
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            side: BorderSide(color: mainColor)),
                        onPressed: () {},
                        splashColor: Colors.black,
                        color: mainColor,
                        height: buttonsHeight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Orignal",
                                style: TextStyle(color: Colors.white)),
                            Container(
                              padding: EdgeInsets.all(20),
                            ),
                            Text("10\u0024",
                                style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: mainColor)),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          splashColor: mainColor,
                          height: buttonsHeight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Basic"),
                              Container(
                                padding: EdgeInsets.all(20),
                              ),
                              Text("20\u0024")
                            ],
                          )),
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: mainColor)),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          splashColor: mainColor,
                          height: buttonsHeight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Medium"),
                              Container(
                                padding: EdgeInsets.all(20),
                              ),
                              Text("50\u0024")
                            ],
                          )),
                      MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              side: BorderSide(color: mainColor)),
                          onPressed: () {},
                          padding: EdgeInsets.all(0),
                          splashColor: mainColor,
                          height: buttonsHeight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Elite"),
                              Container(
                                padding: EdgeInsets.all(20),
                              ),
                              Text("100\u0024")
                            ],
                          )),
                    ],
                  ),
                  //Bid order button on the bottom
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        side: BorderSide(color: mainColor)),
                    onPressed: () {},
                    color: Colors.black,
                    height: 50,
                    minWidth: MediaQuery.of(context).size.width * 0.93,
                    child: Text(
                      "Order now!",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
