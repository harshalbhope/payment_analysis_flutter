import 'package:flutter/material.dart';

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
