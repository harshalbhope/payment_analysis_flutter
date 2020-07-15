import 'package:flutter/material.dart';
import 'package:money2/money2.dart';
import 'package:payment_analysis_flutter/Screens/DetailScreen.dart';
import 'package:payment_analysis_flutter/constants.dart';
import 'package:payment_analysis_flutter/models/CreditCards.dart';
import 'package:payment_analysis_flutter/models/TransactionService.dart';

class BottomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.35),
      // // height: MediaQuery.of(context).size.height - 20,
      // height: 355.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Choose Card',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: creditcards.length,
              itemBuilder: (context, index) {
                CreditCards creditcard = creditcards[index];

                return Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Card(
                    elevation: 3.0,
                    shadowColor: creditcard.color.withOpacity(1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: creditcard.color,
                    child: Padding(
                      padding:
                          EdgeInsets.only(top: 40, left: 15.0, bottom: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Balance',
                            style: TextStyle(
                              color: Colors.white54,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            // Money.fromString(creditcard.balance, ind)
                            //     .toString(),
                            '',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Align(
                                alignment: FractionalOffset.bottomLeft,
                                child: Text(
                                  creditcard.cardName,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ClickMoreContainer(
            title: 'Recent Transactions',
          ),
          BottomList(
            items: transactions,
            item: Transactions,
            screenNo: 0,
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class BottomList extends StatelessWidget {
  final List items;

  var item;
  final screenNo;

  BottomList({@required this.items, this.item, this.screenNo});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            item = items[index];
            print(context);
            return Container(
              child: Row(
                children: <Widget>[
                  DifIcon(item: item, screenNo: screenNo),
                  SizedBox(
                    width: 15.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        screenNo == 0 ? item.serviceName : item.categoryName,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        screenNo == 0
                            ? item.serviceSection
                            : item.categoryTransaction,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        // Money.fromString(item.serviceCost, ind).toString(),
                        '',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        screenNo == 0 ? item.date : item.categoryCost,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DifIcon extends StatelessWidget {
  DifIcon({key, @required this.item, this.screenNo});

  var item;
  final screenNo;

  @override
  Widget build(BuildContext context) {
    if (screenNo == 0) {
      return Icon(
        item.serviceIcon,
        size: 60.0,
      );
    } else {
      return CircleAvatar(
        backgroundColor: Colors.brown.shade800,
        child: Text(item.avatarInitial),
      );
    }
  }
}

class ClickMoreContainer extends StatelessWidget {
  final String title;
  ClickMoreContainer({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
            child: Text(
              'See All',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 10.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
