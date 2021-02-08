import 'package:flutter/material.dart';
import 'package:ong/profilePhoto.dart';

class PersonalPreferancesScreen extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<PersonalPreferancesScreen> {
  // RangeValues values = RangeValues(1, 100);
  // RangeLabels labels = RangeLabels('1', "100");
  double _value = 0;
  double _values = 0;
  bool checkBoxValue = false;
  bool checkBoxValues = false;

  void _showModalSheetLanguage() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Container(
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'English',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Arabic',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Urdu',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hebrew',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Italian',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ASL (American Sign lang)',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Chinese',
                            style: TextStyle(fontSize: 18),
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
                          const EdgeInsets.only(left: 20.0, right: 15, top: 20),
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
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        });
  }

  void _showModalSheetEducation() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Container(
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'High School',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'College',
                            style: TextStyle(fontSize: 18),
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
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Graduate School',
                            style: TextStyle(fontSize: 18),
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
                          const EdgeInsets.only(left: 20.0, right: 15, top: 20),
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
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
          );
        });
  }

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
          title: Column(
            children: [
              SizedBox(height: 25),
              Text(
                'Personal Preferences',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: new Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Comfortability with no. of kids",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Slider(
                      min: 0,
                      activeColor: Color(0xffF4A7AF),
                      inactiveColor: Colors.grey,
                      max: 100,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Years of formal experience",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Slider(
                      min: 0,
                      max: 100,
                      activeColor: Color(0xffF4A7AF),
                      inactiveColor: Colors.grey,
                      value: _values,
                      onChanged: (value) {
                        setState(() {
                          _values = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Languages spoken",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: _showModalSheetLanguage,
                      child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Education",
                          style: TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: _showModalSheetEducation,
                      child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              )
                            ],
                          )),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text(
                              'Bio',
                              style: TextStyle(fontSize: 17),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 20.0, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          // optional flex property if flex is 1 because the default flex is 1
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                labelStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.lightbulb,
                              color: Color(0xffF4A7AF),
                              size: 12,
                            ),
                            Text(
                              'Tips',
                              style: TextStyle(
                                color: Color(0xffF4A7AF),
                                fontSize: 12,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'View Examples',
                          style: TextStyle(
                            color: Color(0xffF4A7AF),
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => ProfilePhotoScreen()));
            },
            child: new Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                "Save",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
