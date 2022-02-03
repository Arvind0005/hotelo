import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'datapage.dart';

class DishPage extends StatefulWidget {
  const DishPage({Key key}) : super(key: key);

  @override
  _DishPageState createState() => _DishPageState();
}

class _DishPageState extends State<DishPage> {
  DataPage _dataPage = DataPage();
  var inputdecoration = InputDecoration(
      labelStyle: TextStyle(color: Color(0xff6A9CA2)),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xff4D5C5A), width: 2.0),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Color(0xff4D5C5A), width: 2.0),
      ));
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
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ListView(
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
                decoration:
                    inputdecoration.copyWith(labelText: "New-Dish Name"),
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
  }
}
