import 'package:flutter/material.dart';

class CardScreenPage extends StatefulWidget {
  @override
  _CardImageListState createState() => _CardImageListState();
}

class _CardImageListState extends State<CardScreenPage> {
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
                'ID CARD',
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
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                            "For validity and security purposes, we would need the front and back scans of your ID card. This information will be safe with us and will not be displayed on your profile.",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('Front Side')),
                        Text(
                          'Need Help?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xffF4A7AF),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            shape: BoxShape.rectangle,
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
                          left: 0,
                          height: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xffF4A7AF),
                                child: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('Back Side')),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 180,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            shape: BoxShape.rectangle,
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
                          left: 0,
                          height: 35,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FloatingActionButton(
                                backgroundColor: Color(0xffF4A7AF),
                                child: Icon(Icons.add),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
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
                "Submit",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
