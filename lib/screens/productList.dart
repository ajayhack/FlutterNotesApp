import 'dart:developer';

import 'package:demo_flutter_app/models/productListModal.dart';
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
  List<ProductListModal> productDataList = List<ProductListModal>();

  Products(String subCategory) {
    log('data: $subCategory');
    subCategoryName = subCategory;

    //Here we are adding Dummy Data into ProductList:-
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Milk',
        '25',
        '5',
        '20',
        'DE001'));
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Honey',
        '250',
        '50',
        '200',
        'DE002'));
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Parle G',
        '5',
        '1',
        '4',
        'DE003'));
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Namkeen',
        '10',
        '2',
        '8',
        'DE004'));
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Oats',
        '180',
        '25',
        '155',
        'DE005'));
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Coffee',
        '140',
        '20',
        '120',
        'DE006'));
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Curd',
        '30',
        '5',
        '25',
        'DE007'));
    productDataList.add(ProductListModal(
        'assets/images/daily_essentials_images/dailyBannerOne.jpg',
        'Choclate',
        '80',
        '15',
        '60',
        'DE008'));
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
    return GridView.builder(
      itemCount: productDataList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
      itemBuilder: (BuildContext context, int index) {
        return new Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset(
                  'assets/images/daily_essentials_images/dailyBannerOne.jpg'),
              Text(
                'S.No: ' + productDataList[index].productNumber,
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Title: ' + productDataList[index].productName,
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Mrp: ' + productDataList[index].productMRP,
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Discount: ' + productDataList[index].productDiscount,
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Price: ' + productDataList[index].productFinalPrice,
                style: TextStyle(
                  fontSize: 14.0,
                  fontStyle: FontStyle.normal,
                ),
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.orange,
                onPressed: () {},
                child: Text(
                  'Add to Cart',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal),
                ),
              ),
              RaisedButton(
                textColor: Colors.white,
                color: Colors.green,
                onPressed: () {},
                child: Text(
                  'Shop Now',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 14.0, fontStyle: FontStyle.normal),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
