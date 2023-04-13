// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 50,
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search",
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0))),
                      cursorWidth: 10,
                    ),
                  ),
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      margin: EdgeInsets.only(right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                              ),
                              Icon(Icons.email),
                              Text(
                                "Chats",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20),
                              ),
                              Icon(Icons.notifications_outlined),
                              Text(
                                "Notifications",
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 10),
                      ),
                      CircleAvatar(
                        maxRadius: 26,
                        backgroundImage: NetworkImage(
                            "https://www.thecocktaildb.com/images/media/drink/abcpwr1504817734.jpg"),
                      ),
                      Text(
                        "Azima Online",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Image(
                    image: NetworkImage(
                        "https://www.thecocktaildb.com/images/media/drink/abcpwr1504817734.jpg"),
                  ),
                  Text(
                    "In this example, we're creating a Container with a white background color and a circular border radius of 8.0. We're also adding a BoxShadow with a grey color, a spread radius",
                    style: TextStyle(letterSpacing: 1),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                            ),
                            Container(
                              child: Icon(Icons.favorite_border),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.question_answer),
                            ),
                          ]),
                        ),
                        Text("Comment"),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.share),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("Share"),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
