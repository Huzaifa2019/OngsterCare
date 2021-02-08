import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {

  final List<Widget> _children = [];
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  int _selectedIndex = 0;
  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: (_selectedIndex == 0)
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              icon: Icon(
                (_selectedIndex == 0) ? Icons.home : Icons.home_outlined,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Inbox',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: (_selectedIndex == 1)
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              icon: Icon(
                (_selectedIndex == 1)
                    ? Icons.chat_bubble
                    : Icons.chat_bubble_outline,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Jobs',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: (_selectedIndex == 2)
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              icon: Icon(
                (_selectedIndex == 2) ? Icons.work : Icons.work_outline,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontWeight: (_selectedIndex == 3)
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                icon: Icon(
                  (_selectedIndex == 3) ? Icons.person : Icons.person_outline,
                  color: Colors.white,
                )),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Color(0xffF4A7AF),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
