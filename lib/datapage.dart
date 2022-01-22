import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  int datapage = 0;
  var textstyle = GoogleFonts.hindSiliguri(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xff0b3e3f),
          // letterSpacing: ,
          fontSize: 22));
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xfffdfbfb), Color(0xffebedee)])),
      child: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Text(
                "Datas!!",
                style: textstyle.copyWith(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                //color: Colors.red,
                height: 40,
                width: width - 15,
                child: Text(
                  "The more data you provide more food will be saved :)",
                  style: textstyle.copyWith(
                      fontSize: 14, color: Color(0xff4D5C5A)),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 10,
          // ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    datapage = 0;
                  });
                  print(datapage);
                },
                child: Text(
                  "Sales Data",
                  style: datapage == 0
                      ? textstyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                                color: Color(0xff0b3e3f), offset: Offset(0, -5))
                          ],
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff4D5C5A),
                          decorationThickness: 4,
                          //    decorationStyle: TextDecorationStyle.dashed,
                        )
                      : textstyle.copyWith(fontSize: 16),
                ),
              ),
              Spacer(),
              FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    datapage = 1;
                  });
                  print(datapage);
                },
                child: Text(
                  "Dishes Data",
                  style: datapage == 1
                      ? textstyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                                color: Color(0xff0b3e3f), offset: Offset(0, -5))
                          ],
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff4D5C5A),
                          decorationThickness: 4,
                          //    decorationStyle: TextDecorationStyle.dashed,
                        )
                      : textstyle.copyWith(fontSize: 16),
                ),
              ),
              Spacer(),
              FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    datapage = 2;
                  });
                  print(datapage);
                },
                child: Text(
                  "Shop Data",
                  style: datapage == 2
                      ? textstyle.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          shadows: [
                            Shadow(
                                color: Color(0xff0b3e3f), offset: Offset(0, -5))
                          ],
                          color: Colors.transparent,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xff4D5C5A),
                          decorationThickness: 4,
                          //    decorationStyle: TextDecorationStyle.dashed,
                        )
                      : textstyle.copyWith(fontSize: 16),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Container(
              color: Color(0xff6A9CA2),
              height: 0.5,
            ),
          ),
          if (datapage == 0)
            Container(child: Center(child: Text("Sales data"))),
          if (datapage == 2) Container(child: Center(child: Text("Shop Data"))),
          if (datapage == 1)
            Container(child: Center(child: Text("Dishes Page"))),
        ],
      ),
    ));
  }
}
