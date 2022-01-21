import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelo/models/dishmodel.dart';
import 'package:hotelo/models/salesdata.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  void initState() {
    _chartdata = _salesData.getchartData();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    dropdownitemlist = DishModel().dishlist;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Container(
                    decoration: decoration,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListView(
                        //shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        //shrinkWrap: true,
                        children: [
                          Text(
                            "Today's Prediction",
                            style: textstyle.copyWith(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 200,
                            child: ListView(
                              // physics: ScrollPhysics(),
                              shrinkWrap: true,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Container(
                                    height: 60,
                                    //    color: Colors.red,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            child: Image.asset(
                                              'assets/Masala-Dosa-Recipe.jpg',
                                              // fit: BoxFit.contain,
                                            ),
                                          ),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Dosa",
                                          style: textstyle,
                                        ),
                                        Spacer(),
                                        RichText(
                                          text: TextSpan(
                                              text: "120",
                                              style: textstyle.copyWith(
                                                  fontSize: 18),
                                              children: [
                                                TextSpan(
                                                    text: "nos",
                                                    style: textstyle.copyWith(
                                                        fontSize: 12))
                                              ]),
                                        ),
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                  height: 0.5,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 10),
                                Container(
                                    height: 60,
                                    //    color: Colors.red,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            child:
                                                Image.asset("assets/Rice.jpg"),
                                          ),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Rice Meals",
                                          style: GoogleFonts.hindSiliguri(
                                              textStyle: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0xff0b3e3f),
                                                  // letterSpacing: ,
                                                  fontSize: 22)),
                                        ),
                                        Spacer(),
                                        RichText(
                                          text: TextSpan(
                                              text: "100",
                                              style: textstyle.copyWith(
                                                  fontSize: 18),
                                              children: [
                                                TextSpan(
                                                    text: "nos",
                                                    style: textstyle.copyWith(
                                                        fontSize: 12))
                                              ]),
                                        ),
                                      ],
                                    )),
                                SizedBox(height: 10),
                                Container(
                                  height: 0.5,
                                  color: Colors.white,
                                ),
                                SizedBox(height: 10),
                                Container(
                                    height: 60,
                                    //    color: Colors.red,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: ClipRRect(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              child: Image.asset(
                                                  "assets/chapati.jpg")),
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Chappati",
                                          style: textstyle,
                                        ),
                                        Spacer(),
                                        RichText(
                                          text: TextSpan(
                                              text: "80",
                                              style: textstyle.copyWith(
                                                  fontSize: 18),
                                              children: [
                                                TextSpan(
                                                    text: "nos",
                                                    style: textstyle.copyWith(
                                                        fontSize: 12))
                                              ]),
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 275,
                    // decoration: BoxDecoration(
                    //     color: Colors.tealAccent,
                    //    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  child: Container(
                    height: 100,
                    decoration: decoration,
                    child: Row(
                      children: [
                        Container(
                          width: width / 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Text(
                                  "Food Saved",
                                  style: textstyle.copyWith(
                                      color: Color(0xff01dc82),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Text("(one week)",
                                  style: textstyle.copyWith(
                                      fontSize: 15,
                                      //color: Color(0xff01dc82),
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 0.5,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                    text: "200",
                                    style: textstyle.copyWith(
                                        color: Color(0xff01dc82),
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                          text: "\nKG(s)",
                                          style: textstyle.copyWith(
                                              fontSize: 15,
                                              //color: Color(0xff01dc82),
                                              fontWeight: FontWeight.bold))
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sales",
                            style: textstyle.copyWith(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "( 7 days )",
                            style: textstyle.copyWith(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Container(
                        //color: Colors.red,
                        height: 30,
                        width: 100,
                        child: DropdownButton(
                          value: selecteddish,
                          items: dropdownitemlist
                              .map((String dropdowniteam) =>
                                  DropdownMenuItem<String>(
                                    value: dropdowniteam,
                                    child: Text(
                                      dropdowniteam,
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: width / 27),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (newselecteddish) {
                            setState(() {
                              selecteddish = newselecteddish;
                            });
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: decoration.copyWith(color: Colors.transparent),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SfCartesianChart(
                      // borderColor: Color(0xff01dc82),
                      primaryXAxis: NumericAxis(
                          edgeLabelPlacement: EdgeLabelPlacement.shift),
                      series: <ChartSeries>[
                        LineSeries<SalesData, double>(
                            dataSource: _chartdata,
                            xValueMapper: (SalesData sales, _) {
                              return sales.days;
                            },
                            yValueMapper: (SalesData sales, _) {
                              return sales.slaes;
                            }),
                      ],
                    ),
                  ),
                  // color: Colors.red,
                  height: 200,
                  width: width,
                ),
              )
            ],
          ),
        ));
  }
}
