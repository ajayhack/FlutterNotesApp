import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Indian E-commerce Shop'),
      ),
      body: getBannerListView(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Products'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onBottomNavigationTapped,
      ),
    );
  }

  onBottomNavigationTapped(int index) {
    String msg = "";
    setState(() {
      //_selectedIndex = index;
      if (index == 0) {
        msg = "Home Clicked!!";
      } else if (index == 1) {
        msg = "Products Clicked!!";
      } else {
        msg = "Cart Clicked!!";
      }
      _showAlertDialog("Alert", msg);
    });
  }

  void _showAlertDialog(String title, String message) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
      },
    );

    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        okButton,
      ],
    );

    //ShowDialog method to Show Dialog on Screen with Ok Button in it:-
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return WillPopScope(
            // ignore: missing_return
            onWillPop: () {},
            child: alertDialog);
      },
    );
  }

  getBannerListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: Carousel(
                images: [
                  Image.asset(
                      'assets/images/daily_essentials_images/dailyBannerOne.jpg'),
                  Image.asset(
                      'assets/images/daily_essentials_images/dailyBannerTwo.png'),
                  Image.asset(
                      'assets/images/daily_essentials_images/dailyBannerThree.jpg'),
                  Image.asset(
                      'assets/images/daily_essentials_images/dailyBannerFour.jpg')
                ],
                borderRadius: true,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: Carousel(
                images: [
                  Image.asset(
                      'assets/images/electronics_images/electronicsBannerOne.jpg'),
                  Image.asset(
                      'assets/images/electronics_images/electronicsBannerTwo.jpg')
                ],
                borderRadius: true,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: Carousel(
                images: [
                  Image.asset(
                      'assets/images/health_fitness_images/healthBannerOne.jpg'),
                  Image.asset(
                      'assets/images/health_fitness_images/healthBannerTwo.jpg'),
                  Image.asset(
                      'assets/images/health_fitness_images/healthBannerThree.jpg'),
                  Image.asset(
                      'assets/images/health_fitness_images/healthBannerFour.jpg')
                ],
                borderRadius: true,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: Carousel(
                images: [
                  Image.asset(
                      'assets/images/lifestyle_images/lifestyleBannerOne.png'),
                  Image.asset(
                      'assets/images/lifestyle_images/lifestyleBannerTwo.png')
                ],
                borderRadius: true,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: Carousel(
                images: [
                  Image.asset(
                      'assets/images/medicine_images/medicineBannerOne.jpg'),
                  Image.asset(
                      'assets/images/medicine_images/medicineBannerTwo.jpg')
                ],
                borderRadius: true,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: Carousel(
                images: [
                  Image.asset(
                      'assets/images/mens_clothing_images/menClothingBannerOne.jpg'),
                  Image.asset(
                      'assets/images/mens_clothing_images/menClothingBannerTwo.jpg'),
                  Image.asset(
                      'assets/images/mens_clothing_images/menClothingBannerThree.jpg')
                ],
                borderRadius: true,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            width: double.infinity,
            child: Card(
              color: Colors.white,
              elevation: 2.0,
              child: Carousel(
                images: [
                  Image.asset(
                      'assets/images/womens_clothing_images/womenClothingBannerOne.jpeg'),
                  Image.asset(
                      'assets/images/womens_clothing_images/womenClothingBannerTwo.jpg'),
                  Image.asset(
                      'assets/images/womens_clothing_images/womenClothingBannerThree.png')
                ],
                borderRadius: true,
                boxFit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
