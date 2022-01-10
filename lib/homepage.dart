import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff89f7fe), Color(0xff66a6ff)])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            //  height: 50,
                            //  color: Colors.red,
                            child: Text(
                              "Today's Prediction",
                              style: GoogleFonts.bebasNeue(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: .5,
                                      fontSize: 25)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    height: 275,
                    // decoration: BoxDecoration(
                    //     color: Colors.tealAccent,
                    //    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
