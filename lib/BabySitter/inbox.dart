import 'package:flutter/material.dart';
import './nomessages.dart';

class InboxMessages extends StatefulWidget {
  @override
  _InboxMessagesState createState() => _InboxMessagesState();
}

class _InboxMessagesState extends State<InboxMessages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              width: MediaQuery.of(context).size.width * 0.86,
              margin:
              const EdgeInsets.only(left: 15.0, right: 15, top: 10),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chad B.',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Yes I\'ll be available for..',
                                    style: TextStyle(fontSize: 16, color: Colors.black87,),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: EdgeInsets.only(left: 5,),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF4A7AF),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xffF4A7AF),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
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
              width: MediaQuery.of(context).size.width * 0.86,
              margin:
              const EdgeInsets.only(left: 15.0, right: 15, top: 10),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chad B.',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Yes I\'ll be available for..',
                                    style: TextStyle(fontSize: 16, color: Colors.black87,),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: EdgeInsets.only(left: 5,),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF4A7AF),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Color(0xffF4A7AF),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
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
              width: MediaQuery.of(context).size.width * 0.86,
              margin:
              const EdgeInsets.only(left: 15.0, right: 15, top: 10),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80.0,
                        width: 80.0,
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Chad B.',
                              style: TextStyle(fontSize: 17),
                            ),
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  margin: EdgeInsets.only(right: 5,),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Icon(Icons.check,color: Colors.blueAccent,size: 20,),
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Yes I\'ll be available for..',
                                    style: TextStyle(fontSize: 16, color: Colors.black87,),
                                  ),
                                ),
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
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
