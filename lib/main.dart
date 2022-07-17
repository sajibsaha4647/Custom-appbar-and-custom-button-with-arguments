import 'package:flutter/material.dart';

import 'CustomButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String text = 'Hello';

    var data = 1;


    return SafeArea(
      child: Scaffold(
          body: Container(
              child: Column(
                children: [
                  Container(
                    height: 160.0,
                    child: Stack(
                      children: [
                        Container(
                          // child: Text("title"),
                          color: Colors.red,
                          width: MediaQuery.of(context).size.width,
                          height: 100.0,
                          child: Center(
                            child: Text(
                              "Home",
                              style: TextStyle(color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 80.0,
                          left: 0.0,
                          right: 0.0,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1.0),
                                  border: Border.all(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1.0),
                                  color: Colors.white),
                              child: Row(
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      print("your menu action here");
                                      // _scaffoldKey.currentState.openDrawer();
                                    },
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.search,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      print("your menu action here");
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.notifications,
                                      color: Colors.red,
                                    ),
                                    onPressed: () {
                                      print("your menu action here");
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 Container(
                   alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(10.10),
                    child: Column(
                      children: [
                        CustomButton(() { print("tapped"); }, "Tapped Me",data == 0 ? Icons.face : Icons.local_activity )
                      ],
                    )

                 )
                ],
              ),

          )),
    );
  }
}
