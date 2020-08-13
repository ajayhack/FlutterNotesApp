import 'package:flutter/material.dart';

import 'dashboard.dart';

class ProductScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductsExpandedList();
  }
}

class ProductsExpandedList extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Indian E-commerce Shop'),
      ),
      body: getProductExpandedList(),
    );
  }

  getProductExpandedList() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            elevation: 2.0,
            child: ExpansionTile(
              title: Text("Daily Essentials "),
              trailing: Icon(Icons.add),
              backgroundColor: Colors.white,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: RaisedButton(
                          onPressed: navigateToDetailScreen,
                          textColor: Colors.white,
                          child: Text(
                            'Dairy Fresh',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Daily Grocery',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Fresh Vegetables',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Fresh Fruits',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14.0,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ],
                ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            elevation: 2.0,
            child: ExpansionTile(
              title: Text("Electronic Products "),
              trailing: Icon(Icons.add),
              backgroundColor: Colors.white,
              children: [
                Padding(padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Dairy Fresh',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            color: Colors.white,
            elevation: 2.0,
            child: ExpansionTile(
              title: Text("Health & Fitness Products "),
              trailing: Icon(Icons.add),
              backgroundColor: Colors.white,
              children: [
                Padding(padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        'Dairy Fresh',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 14.0,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  navigateToDetailScreen() {
    Navigator.pop(
      context, MaterialPageRoute(builder: (context) => DashboardScreen()),);
  }
}
