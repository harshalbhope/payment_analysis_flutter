import 'package:flutter/material.dart';
import 'package:money2/money2.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

Currency ind = Currency.create('INR', 2,
    symbol: '₹', invertSeparators: true, pattern: 'S000.00,00');
Money cp = Money.fromInt(4500, ind);

void main(List<String> args) {
  print(cp.toString());
}
