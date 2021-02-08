import 'package:flutter/material.dart';
import './inbox.dart';

class NoMessages extends StatefulWidget {
  @override
  int selectedIndex;
  NoMessages(){}
  _NoMessagesState createState() => _NoMessagesState();
}

class _NoMessagesState extends State<NoMessages> {
  _NoMessagesState(){}
  @override
  Widget build(BuildContext context) {
    return
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
                                  'Messages',
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
                                hintText: 'Search in',
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30.0),),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30.0),),
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
            Container(
              height: MediaQuery.of(context).size.height * 0.52,
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'It\'s a little lonely in here',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'There are no messages to see, post a job to get in touch with caregivers',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {

                    },
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
                        top: 20,
                        bottom: 20,
                      ),
                      child: Text(
                        'Post a job',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width:MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/nomsgs.png'),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}
