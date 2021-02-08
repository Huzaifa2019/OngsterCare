import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong/BottomBar/bottomwidget.dart';

// ignore: must_be_immutable
class CareSeekerSearchPage extends StatefulWidget {
  CareSeekerSearchPage();

  String a;

  @override
  State<CareSeekerSearchPage> createState() => MembershipNannyPageState();
}

class MembershipNannyPageState extends State<CareSeekerSearchPage>
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

  bool checkBoxValue = false;

  void _showModalSheetApply() {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (builder) {
          return DraggableScrollableSheet(
            initialChildSize: 0.65,
            maxChildSize: 0.65,
            minChildSize: 0.65,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                  height: double.infinity,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(25.0),
                        topRight: const Radius.circular(25.0),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                        ),
                        Container(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon awesome-baby-carriage.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Nanny',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon awesome-baby.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Babysitter',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon material-pets.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Petsitter',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon awesome-home-1.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Housekeeper',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon awesome-hand-holding.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Senior Care Provider',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon awesome-chalkboard-teacher.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Tutor',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon awesome-heart.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Special Needs Caregiver',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 10, 0.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 21,
                                width: 21,
                                margin: EdgeInsets.only(
                                  right: 10,
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/Icon material-group-work.png',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Text(
                                  'Errands/Odd jobs Provider',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              new Checkbox(
                                  value: checkBoxValue,
                                  activeColor: Colors.green,
                                  onChanged: (bool newValue) {
                                    setState(() {
                                      checkBoxValue = newValue;
                                    });
                                  }),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 15, top: 20, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     new MaterialPageRoute(
                                  //         builder: (context) => VerifyNumberScreen()));
                                },
                                child: new Container(
                                  height: 40,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "Recurring",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  // Navigator.push(
                                  //     context,
                                  //     new MaterialPageRoute(
                                  //         builder: (context) => VerifyNumberScreen()));
                                },
                                child: new Container(
                                  height: 40,
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                      child: Text(
                                    "One Time",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 15,
                            top: 20,
                            bottom: 20,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     new MaterialPageRoute(
                              //         builder: (context) => VerifyNumberScreen()));
                            },
                            child: new Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                              ),
                              child: Center(
                                  child: Text(
                                "Select",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ));
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 240,
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
                          height: 50,
                        ),
                        Container(
                          // height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  'Special Needs',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 45),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white),
                                hintText: 'Date and times',
                                suffixIcon: Icon(
                                  Icons.calendar_today_outlined,
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
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 20),
                          // height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15),
                                child: Text(
                                  'Filters',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: GestureDetector(
                                  onTap: _showModalSheetApply,
                                  child: Image.asset(
                                    'assets/filter.png',
                                    color: Colors.white,
                                    height: 30,
                                    width: 30,
                                  ),
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
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
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
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
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
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
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
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
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
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
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
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
