import 'dart:async';

import 'package:demo_flutter_app/models/bannerModal.dart';
import 'package:demo_flutter_app/models/note.dart';
import 'package:demo_flutter_app/utils/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

import 'note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  List<Note> noteList;
  List<BannerModal> bannerImageList = List<BannerModal>();

  int count = 0;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (noteList == null) {
      noteList = List<Note>();
      bannerImageList.add(BannerModal(
          'assets/images/daily_essentials_images/dailyBannerOne.jpg', 1));
      bannerImageList.add(BannerModal(
          'assets/images/daily_essentials_images/dailyBannerTwo.png', 2));
      bannerImageList.add(BannerModal(
          'assets/images/daily_essentials_images/dailyBannerThree.jpg', 3));
      bannerImageList.add(BannerModal(
          'assets/images/daily_essentials_images/dailyBannerFour.jpg', 4));
      bannerImageList.add(BannerModal(
          'assets/images/electronics_images/electronicsBannerOne.jpg', 5));
      bannerImageList.add(BannerModal(
          'assets/images/electronics_images/electronicsBannerTwo.jpg', 6));
      bannerImageList.add(BannerModal(
          'assets/images/health_fitness_images/healthBannerOne.jpg', 7));
      bannerImageList.add(BannerModal(
          'assets/images/health_fitness_images/healthBannerTwo.jpg', 8));
      bannerImageList.add(BannerModal(
          'assets/images/health_fitness_images/healthBannerThree.jpg', 9));
      bannerImageList.add(BannerModal(
          'assets/images/health_fitness_images/healthBannerFour.jpg', 10));
      bannerImageList.add(BannerModal(
          'assets/images/lifestyle_images/lifestyleBannerOne.png', 11));
      bannerImageList.add(BannerModal(
          'assets/images/lifestyle_images/lifestyleBannerTwo.png', 12));
      bannerImageList.add(BannerModal(
          'assets/images/medicine_images/medicineBannerOne.jpg', 13));
      bannerImageList.add(BannerModal(
          'assets/images/medicine_images/medicineBannerTwo.jpg', 14));
      bannerImageList.add(BannerModal(
          'assets/images/mens_clothing_images/menClothingBannerOne.jpg', 15));
      bannerImageList.add(BannerModal(
          'assets/images/mens_clothing_images/menClothingBannerTwo.jpg', 16));
      bannerImageList.add(BannerModal(
          'assets/images/mens_clothing_images/menClothingBannerThree.jpg', 17));
      bannerImageList.add(BannerModal(
          'assets/images/womens_clothing_images/womenClothingBannerThree.jpg',
          18));
      bannerImageList.add(BannerModal(
          'assets/images/womens_clothing_images/womenClothingBannerThree.png',
          19));
      bannerImageList.add(BannerModal(
          'assets/images/womens_clothing_images/womenClothingBannerThree.jpg',
          20));
      updateListView();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Indian E-commerce Shop'),
      ),
      body: getNoteListView(),
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

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;

    return ListView.builder(
      itemCount: bannerImageList.length,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: new Image(
            image: new AssetImage(bannerImageList[position].bannerImage),
            fit: BoxFit.contain,
            alignment: Alignment.center,
          ),
        );
      },
    );
  }

  // Returns the priority color
  Color getPriorityColor(int priority) {
    switch (priority) {
      case 1:
        return Colors.red;
        break;
      case 2:
        return Colors.yellow;
        break;

      default:
        return Colors.yellow;
    }
  }

  // Returns the priority icon
  Icon getPriorityIcon(int priority) {
    switch (priority) {
      case 1:
        return Icon(Icons.play_arrow);
        break;
      case 2:
        return Icon(Icons.keyboard_arrow_right);
        break;

      default:
        return Icon(Icons.keyboard_arrow_right);
    }
  }

  void _delete(BuildContext context, Note note) async {
    int result = await databaseHelper.deleteNote(note.id);
    if (result != 0) {
      _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

  void _showSnackBar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  void navigateToDetail(Note note, String title) async {
    bool result =
        await Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NoteDetail(note, title);
    }));

    if (result == true) {
      updateListView();
    }
  }

  void updateListView() {
    final Future<Database> dbFuture = databaseHelper.initializeDatabase();
    dbFuture.then((database) {
      Future<List<Note>> noteListFuture = databaseHelper.getNoteList();
      noteListFuture.then((noteList) {
        setState(() {
          this.noteList = noteList;
          this.count = noteList.length;
        });
      });
    });
  }
}
