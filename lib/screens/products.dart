import 'package:flutter/material.dart';

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
    return Stack(
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
                Column(
                  children: [
                    Text(
                      'Dairy Fresh',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
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
              title: Text("Electronic Products "),
              trailing: Icon(Icons.add),
              backgroundColor: Colors.white,
              children: [
                Column(
                  children: [
                    Text(
                      'Dairy Fresh',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
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
                Column(
                  children: [
                    Text(
                      'Dairy Fresh',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
