import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'dbmanager.dart';
import 'page2.dart';
class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0F7FA),
      appBar: AppBar(title: Center(child: Text('Individual Transaction'),),),

    body: CustomPaint(
      painter: CurvePainter(),
      child: Search(),
    ),

    );
  }
}
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.greenAccent;
    paint.strokeWidth = 10;
    canvas.drawLine(
      Offset(0, size.height / 1.2),
      Offset(size.width, size.height/1.0 ),
      paint,
    );

    paint.color = Colors.purpleAccent;

    var center = Offset(size.width / 1.2, size.height / 1.2);

    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 50.0, paint);

    paint.color = Colors.amber;

    var center2 = Offset(size.width / 5.2, size.height / 1.25);

    // draw the circle with center having radius 75.0
    canvas.drawCircle(center2, 50.0, paint);

    paint.color = Colors.blue;

    var path = Path();
    path.moveTo(size.width / 3, size.height * 3 / 4);
    path.lineTo(size.width / 2, size.height * 5 / 6);
    path.lineTo(size.width * 3 / 4, size.height * 4 / 6);
    path.close();

    paint.style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final DbStudentManager dbStudentManager = DbStudentManager();
  Student student;
  List<Student> studlist;
  final _Controller1 = TextEditingController();
  final _Controller2 = TextEditingController();
  List<String> cont1 = ["Send     ", "Receive"];
  List<String> cont2 = [
    "01847146827",
    "01830735333",
    "01312735333",
    "01832648694",
    "01639040587",
    "01992474696",
    "01825196354",
    "01631902214",
    "01813720649",
    "01893653443",
    "01856979773",
    "01824837814",
    "01972735333",
    "01517821906",
    "01623354217",
    "01892968877",
    "01888190505",
    "01813907252",
    "01828967966",
    "01823757380",
  ];

  String cont1Select = '';
  String cont2Select = '';
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
        child: ListView(

          children: <Widget>[
            Form(key: _formkey,
              child: Padding(padding: EdgeInsets.only(top: 10.0),
                child:
                Column(
                  children: <Widget>[
                    Center(
                      child: DropDownField(
                        controller: _Controller1,
                        hintText: "Select Option",
                        enabled: true,
                        items: cont1,
                        onValueChanged: (value) {
                          setState(() {
                            cont1Select = value;
                          });
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    Center(
                      child: DropDownField(
                        controller: _Controller2,
                        hintText: "Select Number",
                        enabled: true,
                        items: cont2,
                        onValueChanged: (value) {
                          setState(() {
                            cont2Select = value;
                          });
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(6.0)),
                    SizedBox(
                      width: 150.0,
                      height: 50.0,
                      child: RaisedButton(
                        child: Text("Search", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w800),),
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(color: Colors.indigo),
                        ),

                        onPressed: () {
                         show(context);
                        },

                        color: Colors.green,
                        splashColor: Colors.white,
                        textColor: Colors.red,

                      ),


                    )

                  ],
                )

                ,

              ),

            )
          ],


        )


    );
  }

  void show(BuildContext context) {
    if (_Controller2.text == "01830735333" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page2());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01830735333" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page3());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01847146827" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page4());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01847146827" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page5());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01312735333" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page6());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01312735333" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page7());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01832648694" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page8());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01832648694" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page9());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01639040587" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page10());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01639040587" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page11());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01992474696" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page12());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01992474696" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page13());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01825196354" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page14());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01825196354" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page15());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01631902214" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page16());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01631902214" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page17());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01813720649" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page18());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01813720649" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page19());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01893653443" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page20());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01893653443" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page21());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01856979773" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page22());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01856979773" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page23());
      Navigator.push(context, route);
    }

    if (_Controller2.text == "01824837814" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page24());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01824837814" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page25());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01972735333" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page26());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01972735333" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page27());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01517821906" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page28());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01517821906" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page29());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01623354217" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page30());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01623354217" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page31());
      Navigator.push(context, route);
    }


    if (_Controller2.text == "01892968877" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page32());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01892968877" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page33());
      Navigator.push(context, route);
    }if (_Controller2.text == "01888190505" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page34());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01888190505" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page35());
      Navigator.push(context, route);
    }if (_Controller2.text == "01813907252" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page36());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01813907252" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page37());
      Navigator.push(context, route);
    }if (_Controller2.text == "01828967966" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page38());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01828967966" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page39());
      Navigator.push(context, route);
    }if (_Controller2.text == "01823757380" && _Controller1.text=="Send     ") {
      Route route =
      MaterialPageRoute(builder: (context) => Page40());
      Navigator.push(context, route);
    }
    if (_Controller2.text == "01823757380" && _Controller1.text=="Receive") {
      Route route =
      MaterialPageRoute(builder: (context) => Page41());
      Navigator.push(context, route);
    }

  }
}
