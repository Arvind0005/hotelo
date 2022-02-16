import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'datapage.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({Key key}) : super(key: key);

  @override
  _SalesPageState createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  String date;
  String dishname;
  double sales;
  DataPage _dataPage = DataPage();
  var inputdecoration = InputDecoration(
      labelText: "Dish",
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
  var decoration0 = BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Colors.grey,
  );
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
    "chilliparotta",
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
    int index = 0;
    return ListView(shrinkWrap: true, children: [
      Container(
        height: height / 3,
        width: 300,
        child: ListView(
          shrinkWrap: true,
          children: [
            Wrap(
              direction: Axis.horizontal,
              children: data.map((item) {
                index = index + 1;
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: index % 2 == 0 ? decoration : decoration0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(item),
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
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 8.0,
        ),
        child: Container(
          //height: 60,
          child: Text(
            "Sales Data  ;-)",
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
            width: width / 3,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 8.0,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Date",
                ),
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "please enter the date"
                      : null;
                },
                // decoration: inputdecoration.copyWith(hintText: "Contact"),
                onChanged: (val) async {
                  setState(() {
                    date = val;
                  });
                  //print(titlelength);
                },
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 20),
      Row(
        children: [
          Spacer(),
          Container(
            width: width / 3,
            child: Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextFormField(
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "please select the dish"
                      : null;
                },
                decoration: inputdecoration,
                onChanged: (val) async {
                  setState(() {
                    dishname = val;
                  });
                  //print(titlelength);
                },
              ),
            ),
          ),
          Spacer(),
          Container(
            width: width / 3,
            child: Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: TextFormField(
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "please enter the sales"
                      : null;
                },
                decoration: inputdecoration.copyWith(labelText: "Sales"),
                onChanged: (val) {
                  setState(() {
                    sales = double.parse(val);
                  });
                  //print(titlelength);
                },
              ),
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
                "Update",
                style: textstyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w700),
              ),
              onPressed: () async {
                String userdateid = "arvind" + date.toString();
                print(userdateid);
                print("$dishname $sales $date");
                var client = http.Client();
                final url = Uri.parse("http://10.0.2.2:3000/adddish");
                http.Response response = await client.post(url, body: {
                  'userdateid': userdateid,
                  'dish': dishname.toString(),
                  'sales': sales.toString(),
                });
                print("response");
                print(response.body);
                print("xxxx");
              },
            ),
          ),
          Spacer()
        ],
      ),
    ]);
  }
}
