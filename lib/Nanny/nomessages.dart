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
      );
  }
}
