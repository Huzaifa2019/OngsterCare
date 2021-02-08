import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:ong/BottomBar/bottomwidget.dart';

// ignore: must_be_immutable
class CareGiverProfilePage extends StatefulWidget {
  CareGiverProfilePage();

  String a;

  @override
  State<CareGiverProfilePage> createState() => CareGiverProfilePageState();
}

class CareGiverProfilePageState extends State<CareGiverProfilePage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TabController _tabController;
  ScrollController _scrollController;
  var selected;
  bool isChecked = true;
  bool status = false;
  List<DropdownMenuItem<String>> timing = [];

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: MediaQuery
                .of(context)
                .size
                .width * 0.33,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Message',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 0, right: 0),
                  child: Card(
                    elevation: 0.0,
                    color: Color(0xffF4A7AF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 35,
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height * 0.1,
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(left: 30),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context).pop();
                              });
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 38.0,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 19,
                                    ),
                                    Text(
                                      ' Premium',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 18,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/dollar.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '11-18/hr',
                                            style: TextStyle(
                                              color: Colors.white,

                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: AssetImage('assets/img2.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 40),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 18,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/Icon-open-bolt.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Active',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5.0,
                                ),
                                child: Text(
                                  ' Chad Bryan',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10.0,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 4),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/star.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/star.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/star.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 4),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/star.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.transparent,
                                        image: DecorationImage(

                                          image: AssetImage(
                                              'assets/star.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // Icon(
                                    //   Icons.star_rate_outlined,
                                    //   color: Colors.white,
                                    //   size: 22,
                                    // ),
                                    // Icon(
                                    //   Icons.star_rate_outlined,
                                    //   color: Colors.white,
                                    //   size: 22,
                                    // ),
                                    // Icon(
                                    //   Icons.star_rate_outlined,
                                    //   color: Colors.white,
                                    //   size: 22,
                                    // ),
                                    // Icon(
                                    //   Icons.star_rate_outlined,
                                    //   color: Colors.white,
                                    //   size: 22,
                                    // ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 25.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 16,
                                      width: 12,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.transparent,
                                        image: DecorationImage(

                                          image: AssetImage(
                                              'assets/Icon feather-map-pin.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      ' Lawerence, KS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  new Container(
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 10.0,
                            vertical: 15,
                          ),
                          height: 105,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.28,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '6+',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                              Text(
                                'years',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                              Text(
                                'experience',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 10.0,
                            vertical: 15,
                          ),
                          height: 105,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.28,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '21',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                              Text(
                                'years',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                              Text(
                                'Old',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            // horizontal: 10.0,
                            vertical: 15,
                          ),
                          height: 105,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * 0.28,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '8 Hours',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                              Text(
                                'Response',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                              Text(
                                'time',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xffF4A7AF),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  //bio
                  new Container(
                    // height: 120,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Bio',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  //pay rate
                  new Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Pay Rate',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Recurring jobs',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "\$10-\$15/hr",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'One Time Jobs',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            left: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1 Child',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "\$10/hr",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            left: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2 Children',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "\$12/hr",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10.0,
                            left: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '3 Children',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                "\$14/hr",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  //highlights
                  new Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Highlights',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Has Transportation',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Non-Smoker',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'CPR Training',
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Hired by 1 Family of Ongstercare.com',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  //reviews
                  new Container(
                    // height: 120,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'No reviews yet.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2,
                                color: Colors.blueAccent,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 70,
                            ),
                            child: Text(
                              'Write a review',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.blueAccent,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  //general availability
                  new Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'General Availability',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Recurring Jobs',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.center,
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        new SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              //sun
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0,
                                  vertical: 2,
                                ),
                                margin: const EdgeInsets.only(
                                  right: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black54,
                                  ),
                                ),
                                child: Text(
                                  'Sun',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              //mon
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 7.0,
                                ),
                                margin: const EdgeInsets.only(
                                  right: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffF4A7AF),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF4A7AF),
                                  ),
                                ),
                                child: Text(
                                  'Mon',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              //tue
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 7.0,
                                ),
                                margin: const EdgeInsets.only(
                                  right: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffF4A7AF),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF4A7AF),
                                  ),
                                ),
                                child: Text(
                                  'Tue',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              //wed
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 7.0,
                                ),
                                margin: const EdgeInsets.only(
                                  right: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffF4A7AF),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF4A7AF),
                                  ),
                                ),
                                child: Text(
                                  'Wed',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              //thu
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 7.0,
                                ),
                                margin: const EdgeInsets.only(
                                  right: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xffF4A7AF),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF4A7AF),
                                  ),
                                ),
                                child: Text(
                                  'Thu',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              //fri
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 7.0,
                                  vertical: 2,
                                ),
                                margin: const EdgeInsets.only(
                                  right: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black54,
                                  ),
                                ),
                                child: Text(
                                  'Fri',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                              //sat
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 7.0,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.black54,
                                  ),
                                ),
                                child: Text(
                                  'Sat',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        //Starts
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Starts',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "10/12/2020",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        //Ends
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Ends',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "3/24/2021",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //Monday
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Monday',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "8:00am - 3:20pm",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //Tuesday
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Tuesday',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "4:00pm - 8:00pm",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //Wednes
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Wednesday',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "2:00pm - 9:00pm",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        //  Thurs
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Thursday',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "9:00am - 4:00pm",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          'Last updated 2 months ago',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  //one time availability
                  new Container(
                    // height: 120,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'One Time Availability',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'For one time jobs',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Flexible(
                            child: Text(
                              'Chad hasn\'t filled his One-Time availability. get in touch with him to check his timings.',
                              style: TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  //work history
                  new Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Work History',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Babysitter - \nBrew W. Family',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  'Sep 2020 - present',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  //experience
                  new Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Experience',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Newborns',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Toddlers',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Early School Age',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Elementary School Age',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Special Needs Children',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  'Twins/Multiples',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.check,
                                color: Color(0xffF4A7AF),
                                size: 26,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  //safety
                  new Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.86,
                    margin:
                    const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Safety',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
