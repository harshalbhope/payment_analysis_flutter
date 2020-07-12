import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColorLight,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.width * 0.80,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                ),
                SafeArea(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 35.0,
                              width: 35.0,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                // image: DecorationImage(image: null, fit: null),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "hello",
                              style: TextStyle(
                                  color: Colors.white, letterSpacing: 1.0),
                            ),
                            Spacer(),
                            Icon(
                              Icons.dehaze,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        // color: Colors.grey,
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "4333 ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 45.0,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.0),
                            ),
                            Text(
                              "Total Balance",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
