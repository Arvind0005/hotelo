import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelo/homepage.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  var styling = InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.white, width: 2.0),
      ));
  var textstyle = GoogleFonts.hindSiliguri(
      textStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xff0b3e3f),
          // letterSpacing: ,
          fontSize: 22));
  var decoration = BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffe6f0f1), Color(0xffd1e2e2)]));
  List data = [
    'Idly',
    'Dosa',
    'Vada',
    'Pongal',
    'Poori',
    "Chapatti",
    "Aapam",
    "Roast",
    "Briyani",
    "Ghee roast",
    "Podi roast",
    "idiyappam",
    "parotta",
    "chilliparotta"
  ];
  int datapage = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Widget Dish_page = ListView(
      shrinkWrap: true,
      children: [
        Container(
          height: height / 3,
          width: 300,
          child: ListView(
            shrinkWrap: true,
            children: [
              Wrap(
                direction: Axis.horizontal,
                children: data.map((item) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: decoration,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(item),
                                Container(
                                  // color: Colors.red,
                                  height: 30,
                                  width: 20,
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(
                                        icon: Icon(
                                          Icons.close,
                                          size: 12,
                                        ),
                                        onPressed: () {}),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            child: Text(
              "Add Dish  ;-)",
              style:
                  textstyle.copyWith(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            //  color: Colors.red,
          ),
        ),
        Row(
          children: [
            Spacer(),
            Container(
              width: width / 1.707,
              child: TextFormField(
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "Title Length should be less than 25 letters"
                      : null;
                },
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Color(0xff6A9CA2)),
                    labelText: "NewDish Name",
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xff0b3e3f), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: Color(0xff4D5C5A), width: 2.0),
                    )),
                onChanged: (val) async {
                  setState(() {});
                  //print(titlelength);
                },
              ),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 30),
        Row(
          children: [
            Spacer(),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff6A9CA2),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: FlatButton(
                child: Text(
                  "Add",
                  style: textstyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                onPressed: () {},
              ),
            ),
            Spacer()
          ],
        ),
        SizedBox(height: 70),
      ],
    );
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
          datapage == 0
              ? Container(child: Center(child: Text("Sales data")))
              : datapage == 1
                  ? Dish_page
                  : Container(child: Center(child: Text("Shop Data")))
        ],
      ),
    ));
  }
}
