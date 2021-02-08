import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong/BottomBar/bottomwidget.dart';
import './careseekersearch.dart';
import './caregiverprofile.dart';
import './nomessages.dart';
import './inbox.dart';
import './profileview.dart';
import './jobs.dart';
import './circletabindicator.dart';


// ignore: must_be_immutable
class CareSeekerDashboardPage extends StatefulWidget {
  // CareSeekerDashboardPage();

  String a;

  @override
  State<CareSeekerDashboardPage> createState() => MembershipNannyPageState();
}

class MembershipNannyPageState extends State<CareSeekerDashboardPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TabController _tabController;

  // ScrollController _scrollController;
  // var selected;
  bool isMessages = false;

  // bool status = false;

  // List<DropdownMenuItem<String>> timing = [];
  int _selectedIndex = 0;

  @override
  void _handleTabSelection() {
    setState(() {});
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void initState() {
    super.initState();
    // _scrollController = new ScrollController();
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [
      SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 220,
                  margin: EdgeInsets.only(left: 0),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0),
                          child: Text(
                            'Hi there, Sheeraz!',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,top:5,),
                          child: Text(
                            'Let’s browse some caregivers for you',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 30),
                          child: Container(
                            height: 40,
                            child: GestureDetector(
                              // onTap: () {
                              //   Navigator.push(
                              //       context,
                              //       new MaterialPageRoute(
                              //           builder: (context) =>
                              //               CareSeekerSearchPage()));
                              // },

                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.bottom,
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white),
                                  hintText: 'Search',
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                TabBar(
                  indicatorColor: Color(0xffF4A7AF),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicator: CircleTabIndicator(
                    color: Color(0xffF4A7AF),
                    radius: 4,
                  ),

                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        "Best Match",
                        style: TextStyle(
                           fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Viewed",
                        style: TextStyle(
                            fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Favorites",
                        style: TextStyle(
                           fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      Container(
                        // color: Color.fromRGBO(187,187,187,0.2),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              // 1

                              new Container(
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 25),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 110.0,
                                          width: 85.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Chad Bryan',
                                                style: TextStyle(fontSize: 17),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.work,
                                                    color: Colors.blue,
                                                  ),
                                                  Text(
                                                    ' 1 yrs exp',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.blue,
                                                      ),
                                                      Text(
                                                        ' 7 Miles',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.3,
                                                    child: Container(
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        child: Center(
                                                            child:
                                                                GestureDetector(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              new MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        CareGiverProfilePage(),
                                                              ),
                                                            );
                                                          },
                                                          child: Icon(
                                                            Icons.arrow_forward,
                                                            color: Colors.blue,
                                                            size: 15,
                                                          ),
                                                        ))),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                '11\$-18\$ /hour',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),

                              // 2
                              new Container(
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 15),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 110.0,
                                          width: 85.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Chad Bryan',
                                                style: TextStyle(fontSize: 17),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.work,
                                                    color: Colors.blue,
                                                  ),
                                                  Text(
                                                    ' 1 yrs exp',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.blue,
                                                      ),
                                                      Text(
                                                        ' 7 Miles',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.3,
                                                    child: Container(
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        child: GestureDetector(
                                                          onTap: (){
                                                            Navigator.push(
                                                              context,
                                                              new MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                    CareGiverProfilePage(),
                                                              ),
                                                            );
                                                          },
                                                          child: Center(
                                                              child: Icon(
                                                            Icons.arrow_forward,
                                                            color: Colors.blue,
                                                            size: 15,
                                                          )),
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                '11\$-18\$ /hour',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // 3
                              new Container(
                                height: 180,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 15),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 110.0,
                                          width: 85.0,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(25)),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/image.jpg'),
                                              fit: BoxFit.cover,
                                            ),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10.0, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Chad Bryan',
                                                style: TextStyle(fontSize: 17),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.work,
                                                    color: Colors.blue,
                                                  ),
                                                  Text(
                                                    ' 1 yrs exp',
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.blue,
                                                      ),
                                                      Text(
                                                        ' 7 Miles',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.3,
                                                    child: Container(
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          border: Border.all(
                                                            color: Colors.blue,
                                                          ),
                                                        ),
                                                        child: GestureDetector(
                                                          onTap: (){
                                                            Navigator.push(
                                                              context,
                                                              new MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                    CareGiverProfilePage(),
                                                              ),
                                                            );
                                                          },
                                                          child: Center(
                                                              child: Icon(
                                                            Icons.arrow_forward,
                                                            color: Colors.blue,
                                                            size: 15,
                                                          )),
                                                        )),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Text(
                                                '11\$-18\$ /hour',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.grey),
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                  Icon(
                                                    Icons.star_border,
                                                    color: Colors.blue,
                                                    size: 15,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // 4
                              new Container(
                                height: 220,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 15),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 240,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [Text('50+ more')],
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                                Container(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                25)),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/image.jpg'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 30,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                        ),
                                        child: Center(
                                            child: Icon(
                                          Icons.arrow_forward,
                                          color: Colors.blue,
                                          size: 25,
                                        ))),
                                  ],
                                ),
                              ),
                              // 5
                              new Container(
                                height: 220,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    left: 25.0, right: 25, top: 25),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    border: Border.all(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Column(
                                  children: [
                                    Text(
                                      'Upgrade your membership',
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.white),
                                    ),
                                    Text(
                                      'Get unlimited messaging, access to',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    ),
                                    Text(
                                      'background check options and more!',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.white),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 15, top: 20),
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: new Container(
                                          height: 40,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Center(
                                              child: Text(
                                            "Upgrade",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.blue),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // 6
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Handy Resources',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  )
                                ],
                              ),
                              // 7

                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      height: 240,
                                      width: 300,
                                      margin: const EdgeInsets.only(
                                          left: 25.0, right: 25, top: 25),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30.0))),
                                      child: Column(
                                        children: [
                                          new Container(
                                            height: 180,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30.0),
                                                  topRight:
                                                      Radius.circular(30.0)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '5 most must-have nanny qualities',
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 240,
                                      width: 300,
                                      margin: const EdgeInsets.only(
                                          left: 25.0, right: 25, top: 25),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          border:
                                              Border.all(color: Colors.blue),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30.0))),
                                      child: Column(
                                        children: [
                                          new Container(
                                            height: 180,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(30.0),
                                                  topRight:
                                                      Radius.circular(30.0)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/image.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '5 most must-have nanny qualities',
                                            style: TextStyle(fontSize: 17),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              // 8
                              SizedBox(
                                height: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Here are other kinds of care',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  ),
                                  Text(
                                    'we offer:',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey),
                                  )
                                ],
                              ),
                              // 9
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/Icon awesome-baby.png',
                                            color: Colors.blue,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text('Babysitter',
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 12))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/Icon material-pets.png',
                                            color: Colors.blue,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text(
                                            'Petsitter',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/Icon awesome-home-1.png',
                                            color: Colors.blue,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text(
                                            'HouseKeeper',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/Icon awesome-hand-holding.png',
                                            color: Colors.blue,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text(
                                            'Senior care',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/Icon awesome-chalkboard-teacher.png',
                                            color: Colors.blue,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text(
                                            'Tutor',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 70,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/Icon material-group-work.png',
                                            color: Colors.blue,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text(
                                            'Erands',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 70,
                                    width: 80,
                                    margin: const EdgeInsets.only(
                                      left: 10.0,
                                      right: 10,
                                    ),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25))),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/Icon awesome-heart.png',
                                            color: Colors.blue,
                                            height: 35,
                                            width: 35,
                                          ),
                                          Text(
                                            'Special needs',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              new Container(
                                // height: 180,
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    left: 25.0, right: 25, top: 25),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Column(
                                  children: [
                                    Text(
                                      'Safety comes first!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 25, color: Colors.black),
                                    ),
                                    Text(
                                      'Get unlimited messaging, access to background check options and more!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 19, color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20.0, right: 15, top: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              new MaterialPageRoute(
                                                  builder: (context) =>
                                                      CareSeekerSearchPage()));
                                        },
                                        child: new Container(
                                          height: 40,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                          ),
                                          child: Center(
                                              child: Text(
                                            "Upgrade",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white),
                                          )),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 400,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // NoMessages(),
      (isMessages) ? InboxMessages() : NoMessages(),
      Jobs(),
      ProfileView(),
    ];
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: _children[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35.0),
            topRight: Radius.circular(35.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: (_selectedIndex == 0)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                icon: Icon(
                  (_selectedIndex == 0) ? Icons.home : Icons.home_outlined,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(
                  'Inbox',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: (_selectedIndex == 1)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                icon: Icon(
                  (_selectedIndex == 1)
                      ? Icons.chat_bubble
                      : Icons.chat_bubble_outline,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                title: Text(
                  'Jobs',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: (_selectedIndex == 2)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
                icon: Icon(
                  (_selectedIndex == 2) ? Icons.work : Icons.work_outline,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontWeight: (_selectedIndex == 3)
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  icon: Icon(
                    (_selectedIndex == 3) ? Icons.person : Icons.person_outline,
                    color: Colors.white,
                  )),
            ],
            currentIndex: _selectedIndex,
            backgroundColor: Color(0xffF4A7AF),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
