import 'package:flutter/material.dart';

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.44,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
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
                'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
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
      );
  }
}
