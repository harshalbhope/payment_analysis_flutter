import 'package:flutter/material.dart';
import 'package:payment_analysis_flutter/Screens/HomeScreen.dart';
import 'package:payment_analysis_flutter/Widgets/bottomContainer.dart';
import 'package:payment_analysis_flutter/models/Category.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColorLight,
        child: Stack(
          children: <Widget>[
            UpperContainer(ratio: 0.40, visible: false),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.80),
              child: Column(
                children: <Widget>[
                  ClickMoreContainer(title: 'Category'),
                  BottomList(
                    items: categories,
                    item: Category,
                    screenNo: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
