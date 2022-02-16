import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotelo/datapage.dart';
import 'package:hotelo/homepage.dart';
import 'package:hotelo/ingredients.dart';

class Btbar extends StatefulWidget {
  const Btbar({Key key}) : super(key: key);

  @override
  _BtbarState createState() => _BtbarState();
}

class _BtbarState extends State<Btbar> {
  @override
  int index = 0;
  List<Widget> widgets = [
    HomePage(),
    DataPage(),
    Ingredients_page(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 1000.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff0b3e3f),
        unselectedItemColor: Color(0xff829a9b),

        // backgroundColor: Color(0xffF64C72),
        // selectedItemColor: Colors.white, Color(0xffEDC7B7),
        // unselectedItemColor: Color(0xff99737E),
        onTap: (int x) {
          setState(() {
            index = x;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home),
              title: Text("HomePage",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff0b3e3f)))),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.plusCircle),
            title: Text("Add Data",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff0b3e3f))),
          ),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.boxes),
              title: Text("Ingredients",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff0b3e3f)))),
        ],
      ),
      body: widgets[index],
    );
  }
}
