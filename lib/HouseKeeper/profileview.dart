import 'package:flutter/material.dart';
import './accountsettings.dart';

class ProfileView extends StatefulWidget {
  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            height: 220,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 0),
            child: Card(
              elevation: 0.0,
              color: Color(0xffF4A7AF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 37,
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 15.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/profile.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.bottomRight,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                padding: EdgeInsets.all(0),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 13.0),
                          child: Text(
                            'Veronica Rupert',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 51,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                new MaterialPageRoute(
                                    builder: (context) => AccountSettings()));

                          },
                          child: Image(
                            image:
                                AssetImage('assets/Icon feather-settings.png'),
                            color: Colors.white,
                            height: 26,
                            width: 26,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.57,
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 15, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Account Settings',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: Colors.blueAccent)),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.blueAccent,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 15, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Safety Centre',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: Colors.blueAccent)),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.blueAccent,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 15, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment Centre',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: Colors.blueAccent)),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.blueAccent,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 15, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Help',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: Colors.blueAccent)),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.blueAccent,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(
                        color: Colors.black45,
                      ),
                    ),
                    padding: EdgeInsets.fromLTRB(20, 15, 10, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Feedback',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 2, color: Colors.blueAccent)),
                          child: Icon(
                            Icons.arrow_forward_rounded,
                            color: Colors.blueAccent,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.blue,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        margin: EdgeInsets.only(
                          bottom: 2,
                        ),
                        child: Text(
                          'Logout',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'OngsterCare.com Version 0.0.0',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
