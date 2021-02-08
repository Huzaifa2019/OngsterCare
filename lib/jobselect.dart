import 'package:flutter/material.dart';
import 'package:ong/BabySitter/babysitterdetails.dart';
import 'package:ong/Erands/erandsdetails.dart';
import 'package:ong/HouseKeeper/housedetails.dart';
import 'package:ong/Nanny/nannysitter.dart';
import 'package:ong/Petsitter/petsitterdetails.dart';
import 'package:ong/Senior%20Care/seniordetails.dart';
import 'package:ong/SpecialNeeds/specialneedsDetails.dart';
import 'package:ong/Tutors/tutordetails.dart';

import 'package:ong/createaccount.dart';

class JobSelectPage extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<JobSelectPage> {
  final MyGridView myGridView = new MyGridView();

  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build main content with safeArea widget
    /// ------------------------------------
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 28,
              color: Colors.black,
            ),
          ),
          // actions: [
          //   IconButton(
          //       icon: Icon(
          //         Icons.arrow_forward,
          //         color: Colors.black,
          //         size: 28,
          //       ),
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             new MaterialPageRoute(
          //                 builder: (context) => CreateAccountScreen()));
          //       })
          // ],
          title: Column(
            children: [
              SizedBox(height: 25),
              Text(
                'Select Job',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: new Container(
          decoration: BoxDecoration(color: Colors.white),
          child: myGridView,
        ),
      ),
    );
  }
}

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Main content gridView.count
    /// ------------------------------------
    return GridView.count(
      primary: true,
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 3.0,
      children: <Widget>[
        getStructuredGridCell("Nanny", "assets/Icon awesome-baby-carriage.png"),
        getStructuredGridCell("Baby Sitter", "assets/Icon awesome-baby.png"),
        getStructuredGridCell("Pet Sitter", "assets/Icon material-pets.png"),
        getStructuredGridCell("House Keeper", "assets/Icon awesome-home-1.png"),
        getStructuredGridCell(
            "Senior care", "assets/Icon awesome-hand-holding.png"),
        getStructuredGridCell(
            "Tutor", "assets/Icon awesome-chalkboard-teacher.png"),
        getStructuredGridCell("Errands & odd",
            "assets/Icon material-group-work.png"),
        getStructuredGridCell(
            "Special needs", "assets/Icon awesome-heart.png"),
      ],
    );
  }

  /// ------------------------------------
  /// GestureDetector widget item in grid
  /// ------------------------------------
  GestureDetector getStructuredGridCell(name, image) {
    return new GestureDetector(
        child: Card(
          /// ------------------------------------
          /// RoundedRectangleBorder widget item for grid          /// ------------------------------------          ///

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: new BorderSide(color: Colors.blue, width: 1.0),
          ),

          margin: EdgeInsets.only(top: 15, left: 15, right: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Text('')),
                  Flexible(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () {
          if (name == 'Nanny') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => NannyBabySitterDetailsPage()));
          } else if (name == 'Baby Sitter') {
          Navigator.push(
          context,
          new MaterialPageRoute(
          builder: (context) => BabySitterDetailsPage()));
          } else if (name == 'Pet Sitter') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => PetSitterDetailsPage()));
          } else if (name == 'House Keeper') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => HouseKeeperDetailsPage()));
          } else if (name == 'Senior care') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => SeniorCareDetailsPage()));
          } else if (name == 'Special needs') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => SpecialNeedDetailsPage()));
          } else if (name == 'Tutor') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => TutorsDetailsPage()));
          } else if (name == 'Errands & odd') {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => ErandsDetailsPage()));
          }
        });
  }
}
