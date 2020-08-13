import 'package:carousel_pro/carousel_pro.dart';
import 'package:demo_flutter_app/screens/products.dart';
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
      body: getBannerCarousels(context),
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
      } else if (index == 1) {
        navigateScreen(ProductScreen());
      } else {
        msg = "Cart Clicked!!";
      }
      //_showAlertDialog("Alert", msg);
    });
  }

  //Below method is used to handle navigate screen:-
  navigateScreen(Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  void _showAlertDialog(String title, String message) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context, rootNavigator: false).pop();
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

  //Below method is used to inflate Banner Carousel Image Slider inside Body:-
  getBannerCarousels(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {
              carouselOnClick(context, 1);
            },
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: new Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 16.0),
                        child: Text(
                          'Daily Essential Products',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Carousel(
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
                        borderRadius: false,
                        boxFit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              carouselOnClick(context, 2);
            },
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: new Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 16.0),
                        child: Text(
                          'Electronics Products',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Carousel(
                        images: [
                          Image.asset(
                              'assets/images/electronics_images/electronicsBannerOne.jpg'),
                          Image.asset(
                              'assets/images/electronics_images/electronicsBannerTwo.jpg')
                        ],
                        borderRadius: false,
                        boxFit: BoxFit.contain,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              carouselOnClick(context, 3);
            },
            child: SizedBox(
              height: 220,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: new Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 16.0),
                        child: Text(
                          'Health & Fitness Products',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Carousel(
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
                        borderRadius: false,
                        boxFit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              carouselOnClick(context, 4);
            },
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                elevation: 2.0,
                child: new Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 16.0),
                      child: Text(
                        'LifeStyle Products',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Carousel(
                      images: [
                        Image.asset(
                            'assets/images/lifestyle_images/lifestyleBannerOne.png'),
                        Image.asset(
                            'assets/images/lifestyle_images/lifestyleBannerTwo.png')
                      ],
                      borderRadius: false,
                      boxFit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              carouselOnClick(context, 5);
            },
            child: SizedBox(
              height: 210,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                elevation: 2.0,
                child: new Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 16.0),
                      child: Text(
                        'Medicine Products',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Carousel(
                      images: [
                        Image.asset(
                            'assets/images/medicine_images/medicineBannerOne.jpg'),
                        Image.asset(
                            'assets/images/medicine_images/medicineBannerTwo.jpg')
                      ],
                      borderRadius: false,
                      boxFit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              carouselOnClick(context, 6);
            },
            child: SizedBox(
              height: 230,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.white,
                  elevation: 2.0,
                  child: new Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 16.0),
                        child: Text(
                          'Men Clothing',
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                      Carousel(
                        images: [
                          Image.asset(
                              'assets/images/mens_clothing_images/menClothingBannerOne.jpg'),
                          Image.asset(
                              'assets/images/mens_clothing_images/menClothingBannerTwo.jpg'),
                          Image.asset(
                              'assets/images/mens_clothing_images/menClothingBannerThree.jpg')
                        ],
                        borderRadius: false,
                        boxFit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              carouselOnClick(context, 7);
            },
            child: SizedBox(
              height: 220,
              width: double.infinity,
              child: Card(
                color: Colors.white,
                elevation: 2.0,
                child: new Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.0, 2.0, 0.0, 16.0),
                      child: Text(
                        'Women Clothing',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Carousel(
                      images: [
                        Image.asset(
                            'assets/images/womens_clothing_images/womenClothingBannerOne.jpeg'),
                        Image.asset(
                            'assets/images/womens_clothing_images/womenClothingBannerTwo.jpg'),
                        Image.asset(
                            'assets/images/womens_clothing_images/womenClothingBannerThree.png')
                      ],
                      borderRadius: false,
                      boxFit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  carouselOnClick(BuildContext context, int carouselType) {
    String message = "";
    switch (carouselType) {
      case 1:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProductScreen()),
          );
        }
        break;
      case 2:
        {
          message = "Electronics Carousel Clicked";
          _showAlertDialog(message, message);
        }
        break;
      case 3:
        {
          message = "Health and Fitness Carousel Clicked";
          _showAlertDialog(message, message);
        }
        break;
      case 4:
        {
          message = "LifeStyle Carousel Clicked";
          _showAlertDialog(message, message);
        }
        break;
      case 5:
        {
          message = "Medicine Carousel Clicked";
          _showAlertDialog(message, message);
        }
        break;
      case 6:
        {
          message = "Men Clothing Carousel Clicked";
          _showAlertDialog(message, message);
        }
        break;
      case 7:
        {
          message = "Women Clothing Carousel Clicked";
          _showAlertDialog(message, message);
        }
        break;
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
