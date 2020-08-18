import 'package:flutter/material.dart';

class Category {
  String categoryName;
  String categoryTransaction;
  String categoryCost;
  String avatarIntial;

  Category(
      {this.categoryName,
      this.categoryTransaction,
      this.categoryCost,
      this.avatarIntial});
}

List<Category> categories = [
  Category(
      categoryName: 'Application',
      categoryTransaction: '3 Transactions',
      categoryCost: '6000',
      avatarIntial: 'A'),
  Category(
      categoryName: 'Shopping',
      categoryTransaction: '6 Transactions',
      categoryCost: '9000',
      avatarIntial: 'S'),
];
