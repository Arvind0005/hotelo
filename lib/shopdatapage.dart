import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class ShopData extends StatefulWidget {
  const ShopData({Key key}) : super(key: key);

  @override
  _ShopDataState createState() => _ShopDataState();
}

class _ShopDataState extends State<ShopData> {
  String shopname, add1, add2, add3, add4, email;
  double mobile;
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
    return Container(
      height: height - height / 4,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Shop Name :",
                style: textstyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
          ),
          Container(
            // width: width / 1.707,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextFormField(
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "Please enter the shopname"
                      : null;
                },
                decoration: inputdecoration.copyWith(hintText: "Shopname"),
                onChanged: (val) async {
                  setState(() {});
                  shopname = val;
                  //print(titlelength);
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Buisness Address :",
                style: textstyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
          ),
          Container(
            //width: width / 1.707,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextFormField(
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "please enter the flat no./street name"
                      : null;
                },
                decoration:
                    inputdecoration.copyWith(hintText: "Flat No./Street name"),
                onChanged: (val) async {
                  setState(() {
                    add1 = val;
                  });
                  //print(titlelength);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              //   width: width / 1.707,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: TextFormField(
                  // controller: titlecontroller,
                  validator: (val) {
                    return val.length > 25 || val.isEmpty
                        ? "please enter city/town/village name"
                        : null;
                  },
                  decoration: inputdecoration.copyWith(
                      hintText: "City/Town/Village name"),
                  onChanged: (val) async {
                    setState(() {
                      add2 = val;
                    });
                    //print(titlelength);
                  },
                ),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: width / 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextFormField(
                      // controller: titlecontroller,
                      validator: (val) {
                        return val.length > 25 || val.isEmpty
                            ? "please enter the state name"
                            : null;
                      },
                      decoration:
                          inputdecoration.copyWith(hintText: "State name"),
                      onChanged: (val) async {
                        setState(() {
                          add3 = val;
                        });
                        //print(titlelength);
                      },
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  width: width / 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: TextFormField(
                      // controller: titlecontroller,
                      validator: (val) {
                        return val.length > 25 || val.isEmpty
                            ? "please enter the pincode"
                            : null;
                      },
                      decoration: inputdecoration.copyWith(hintText: "Pincode"),
                      onChanged: (val) async {
                        setState(() {
                          add4 = val;
                        });
                        //print(titlelength);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Email :",
                style: textstyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
          ),
          Container(
            // width: width / 1.707,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextFormField(
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "please enter the email"
                      : null;
                },
                decoration: inputdecoration.copyWith(hintText: "Email address"),
                onChanged: (val) async {
                  setState(() {
                    email = val;
                  });
                  //print(titlelength);
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "Contact Number :",
                style: textstyle.copyWith(
                    fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
          ),
          Container(
            //  width: width / 1.707,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                // controller: titlecontroller,
                validator: (val) {
                  return val.length > 25 || val.isEmpty
                      ? "please enter contact number"
                      : null;
                },
                decoration: inputdecoration.copyWith(hintText: "Contact"),
                onChanged: (val) async {
                  setState(() {
                    mobile = double.parse(val);
                  });
                  //print(titlelength);
                },
              ),
            ),
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
                    print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
                    var client = http.Client();
                    final url = Uri.parse("http://10.0.2.2:3000/addshop");
                    http.Response response = await client.post(url, body: {
                      'shopname': shopname,
                      'mobile': mobile.toString(),
                      'add1': add1,
                      'add2': add2,
                      'add3': add3,
                      'add4': add4,
                      'email': email,
                      'mobile': mobile,
                    });

                    print(response.body);
                    print({
                      shopname,
                      " ",
                      add1,
                      " ",
                      add2,
                      " ",
                      add3,
                      " ",
                      add4,
                      " ",
                      email,
                      " ",
                      mobile
                    });
                  },
                ),
              ),
              Spacer()
            ],
          ),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
