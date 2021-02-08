import 'package:flutter/material.dart';
import 'package:ong/premiumpackage.dart';

class ProfilePhotoScreen extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<ProfilePhotoScreen> {
  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build main content with safeArea widget
    /// ------------------------------------
    Widget bigCircle = new Container(
      width: 250.0,
      height: 250.0,
      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image.asset(
          'assets/Icon feather-camera.png',
          height: 40,
          width: 40,
        ),
      ),
    );

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
                'Profile Photo',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You are more likely to get a job if you",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "upload a picture of you.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => PackagePremiumPage()));
                    },
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: 180,
                          height: 180,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/Icon feather-camera.png',
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 78,
                          height: 35,
                          child: FloatingActionButton(
                            backgroundColor: Color(0xffF4A7AF),
                            child: Icon(Icons.add),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
