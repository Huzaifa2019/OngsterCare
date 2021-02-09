import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  @override
  AccountSettingsState createState() => AccountSettingsState();
}

class AccountSettingsState extends State<AccountSettings> {
  bool checkBoxValue = false;
  bool checkBoxValue2 = false;
  bool gm = false;

  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build main content with safeArea widget
    /// ------------------------------------
    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate)
        setState(() {
          selectedDate = picked;
        });
    }

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
          title: Container(
            height: 105,
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Account Settings',
                  style: TextStyle(color: Colors.black, fontSize: 24),
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
          centerTitle: true,
        ),
        body: new Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //first name, last name
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 10,
                          top: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'First Name',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            TextField(
                              onTap: () {
                                _selectDate(context);
                              },
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 15,
                          top: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Last Name',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            TextField(
                              onTap: () {
                                _selectDate(context);
                              },
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black),),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400]),),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                //Birthday
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Birthday',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        onTap: () {
                          _selectDate(context);
                        },
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.calendar_today,
                                color: Color(0xffF4A7AF)),
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.black),),
                            labelStyle: TextStyle(color: Colors.grey[400]),),
                      ),
                    ],
                  ),
                ),

                //gender
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.only(
                          left: 15,
                          top: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gender',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    gm = false;
                                  });
                                },
                                child: Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      15,
                                      0,
                                      15,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: (gm == false)
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                    ),
                                    child: Text(
                                      'Female',
                                      style: TextStyle(
                                        fontSize: 19,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.only(
                          right: 15,
                          top: 10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    gm = true;
                                  });
                                },
                                child: Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      15,
                                      0,
                                      15,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: (gm == true)
                                            ? Colors.blue
                                            : Colors.grey,
                                      ),
                                    ),
                                    child: Text(
                                      'Male',
                                      style: TextStyle(
                                        fontSize: 19,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //Add Credit Card
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {},
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            7,
                            0,
                            7,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                          ),
                          child: Text(
                            'Add Credit Card',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //Mailing Address
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          7,
                          0,
                          7,
                        ),
                        child: Text(
                          'Mailing Address',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                //Address
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          labelStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ),
                //Address Line 2
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address Line 2',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          labelStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ),
                //City
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'City',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          labelStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ),
                //State, Zip
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 10,
                          top: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'State',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            TextField(
                              onTap: () {
                                _selectDate(context);
                              },
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 15,
                          top: 15,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Zip',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                            TextField(
                              onTap: () {
                                _selectDate(context);
                              },
                              decoration: InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Contact
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          7,
                          0,
                          7,
                        ),
                        child: Text(
                          'Contact',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                //Email
                Container(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: new OutlineInputBorder(
                            borderSide: new BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          labelStyle: TextStyle(color: Colors.grey[400]),
                        ),
                      ),
                    ],
                  ),
                ),

                //Social Settings
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          7,
                          0,
                          7,
                        ),
                        child: Text(
                          'Social Settings',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                //Connect with fb
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 0,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              7,
                              0,
                              7,
                            ),
                            child: Text(
                              'Connect with Facebook',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.blue,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                ),

                //Preferences
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          7,
                          0,
                          7,
                        ),
                        child: Text(
                          'Preferences',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                //Add to calendar
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 0,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              7,
                              0,
                              7,
                            ),
                            child: Text(
                              'Add to Calendar',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        Checkbox(
                            value: checkBoxValue2,
                            activeColor: Colors.blue,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue2 = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                ),

                //Account Status
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          7,
                          0,
                          7,
                        ),
                        child: Text(
                          'Account Status',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                //Member Status
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 0,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                              0,
                              7,
                              0,
                              7,
                            ),
                            child: Text(
                              'Member Status',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 19,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            7,
                            0,
                            7,
                          ),
                          child: Text(
                            'Basic',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //Upgrade to Premium
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {},
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            7,
                            0,
                            7,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.blue,
                            ),
                          ),
                          child: Text(
                            'Upgrade to Premium',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //Privacy
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                          0,
                          7,
                          0,
                          7,
                        ),
                        child: Text(
                          'Privacy',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),

                //OngsterCare.com
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {},
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            7,
                            0,
                            7,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                          ),
                          child: Text(
                            'OngsterCare.com',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //Terms of Use
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    top: 8,
                    left: 15,
                    right: 15,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      onTap: () {},
                      child: Expanded(
                        flex: 1,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                            0,
                            7,
                            0,
                            7,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue,
                            ),
                          ),
                          child: Text(
                            'Terms of Use',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 19,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                //Version
                Text(
                  'OngsterCare.com Version 0.0.0',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
