import 'package:flutter/material.dart';
// import 'package:payment_analysis_flutter/models/CreditCards.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class CreditCards {
  String balance;
  String cardNo;
  String cardName;
  Color color;

  CreditCards({this.balance, this.cardNo, this.cardName, this.color});
}

List<CreditCards> creditcards = [
  CreditCards(
      balance: '2000', cardNo: '1123', cardName: 'HDFC', color: Colors.grey),
  CreditCards(
      balance: '3000', cardNo: '543', cardName: 'HDFC', color: Colors.yellow),
  CreditCards(
      balance: '4000', cardNo: '333', cardName: 'HDFC', color: Colors.green)
];

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
                  height: MediaQuery.of(context).size.height * 0.50,
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
                ),
                BottomContainer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.40),
      // // height: MediaQuery.of(context).size.height - 20,
      height: 355.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.only(top: 30.0, right: 20.0),
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
                print(creditcard.balance);
                return Container(
                  width: 300,
                  padding: EdgeInsets.only(left: 20.0),
                  child: Card(
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
                            creditcard.balance,
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
        ],
      ),
    );
  }
}
