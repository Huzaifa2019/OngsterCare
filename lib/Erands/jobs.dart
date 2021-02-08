import 'package:flutter/material.dart';
import './jobs2.dart';
import './circletabindicator.dart';

class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TabController _tabController;

  @override
  void _handleTabSelection() {
    setState(() {});
  }

  void initState() {
    super.initState();
    // _scrollController = new ScrollController();
    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: MediaQuery.of(context).size.width * 0.33,
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'New Job',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
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
                      children: <Widget>[
                        SizedBox(
                          height: 37,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'My Jobs',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                    size: 30,
                                  ),
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
                              left: 20.0, right: 20, top: 15),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white),
                                hintText: 'Search in jobs',
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                  borderSide: BorderSide(color: Colors.white),
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
                        "Jobs",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Bookings",
                        style: TextStyle(
                          fontSize: 16,
                        ),
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
                                width: MediaQuery.of(context).size.width,
                                margin: const EdgeInsets.only(
                                    left: 15.0, right: 15, top: 25),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black54),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10.0, top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            'assets/Icon awesome-baby.png'),
                                        height: 24,
                                        width: 24,
                                        color: Color(0xffF4A7AF),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Babysitter needed for 1 child in Eudora',
                                        style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'Job will expire on 11/11/2020',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black38,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '0 Applicants',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black38,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 15,
                                            vertical: 5,
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                            color: Colors.blue,
                                          )),
                                          child: Text(
                                            'Close job',
                                            style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.blue,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                height: 500,
                              )
                            ],
                          ),
                        ),
                      ),
                      Bookings(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
