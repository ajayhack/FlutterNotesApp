import 'dart:developer';

import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  final String subCategory;

  ProductList({Key key, @required this.subCategory}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Products(subCategory);
  }
}

class Products extends State<ProductList> {
  String subCategoryName;

  Products(String subCategory) {
    log('data: $subCategory');
    subCategoryName = subCategory;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Products'),
      ),
      body: getProductsGridList(subCategoryName),
    );
  }

  getProductsGridList(String subCategoryName) {
    return Text(
      subCategoryName,
      textDirection: TextDirection.ltr,
      style: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal),
    );
  }
}
