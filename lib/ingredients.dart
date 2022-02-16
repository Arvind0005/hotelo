import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'models/salesdata.dart';

class Ingredients_page extends StatefulWidget {
  const Ingredients_page({Key key}) : super(key: key);

  @override
  _Ingredients_pageState createState() => _Ingredients_pageState();
}

class _Ingredients_pageState extends State<Ingredients_page> {
  List<SalesData> _chartdata;
  SalesData _salesData = SalesData();
  List<String> dropdownitemlist;
  String selecteddish = "Dosa";
  var decoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffe6f0f1), Color(0xffd1e2e2)]));
  var textstyle = GoogleFonts.hindSiliguri(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xff0b3e3f),
          // letterSpacing: ,
          fontSize: 22));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xfffdfbfb), Color(0xffebedee)])),
        child: ListView(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ingredients",
                style: textstyle.copyWith(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 50),
                Text(
                  "Rice",
                  style: textstyle.copyWith(
                      fontSize: 23, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Available :500Kg(s)",
                        style: textstyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Required :200Kg(s)",
                        style: textstyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 0.5,
              color: Color(0xff0b3e3f),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 50),
                Text(
                  "Potato",
                  style: textstyle.copyWith(
                      fontSize: 23, fontWeight: FontWeight.w700),
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Available :1000Kg(s)",
                        style: textstyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Required :5000Kg(s)",
                        style: textstyle.copyWith(
                            color: Colors.redAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 0.5,
                      color: Color(0xff0b3e3f),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Poori",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    700   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Chips",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    300   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Chapatti",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    400   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Aalu parotta",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    600   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sandwich",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    100   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Paavbhaji",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    900   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Meals",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    800   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Masala",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    200   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sambar",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    500   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Dosa",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-    500   +",
                              style: textstyle.copyWith(
                                  color: Color(0xff4D5C5A),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300),
                            ),
                          )
                        ],
                      ),
                    ),
                    //  Spacer(),
                  ],
                ),
              ],
            ),
            Container(
              height: 0.5,
              color: Color(0xff0b3e3f),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
