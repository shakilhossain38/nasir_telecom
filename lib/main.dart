import 'package:flutter/material.dart';
import 'home.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Nasir Telecom',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF00897B),
        appBar: AppBar(
          title: Center(
            child: Text("Verify"),
          ),
        ),
        body: CustomPaint(
          painter: CurvePainter(),
          child: MyHomePage(
          ),
        ));
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // set the paint color to be white
    paint.color = Color(0xFFE0F7DF);

    // Create a rectangle with size and width same as the canvas
    var rect = Rect.fromLTWH(0, 0, size.width, size.height);

    // draw the rectangle using the paint
    canvas.drawRect(rect, paint);

    paint.color = Colors.deepPurpleAccent[200];

    // create a path
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    // close the path to form a bounded shape
    path.close();

    canvas.drawPath(path, paint);

    // set the color property of the paint
    paint.color = Colors.brown;

    // center of the canvas is (x,y) => (width/2, height/2)
    var center = Offset(size.width / 2, size.height / 2.5);

    // draw the circle with center having radius 75.0
    canvas.drawCircle(center, 170.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _name2 = TextEditingController();

  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Padding(
                    padding:
                        EdgeInsets.only(top: 55.0, left: 30.0, right: 30.0)),
                CircleAvatar(
                  backgroundImage: AssetImage("assets/nasir.png"),
                  radius: 50.0,
                ),
                Padding(padding: EdgeInsets.only(top: 10.0)),
                TextFormField(
                  decoration: new InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.enhanced_encryption),
                      hintText: "Enter Pin",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      )),
                  controller: _name2,
                  validator: (val) =>
                      val.isNotEmpty ? null : 'Pin should not be empty!',
                  obscureText: true,
                  keyboardType: TextInputType.number,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: BorderSide(color: Colors.black)),
                      child: Text("Login"),
                      onPressed: () {
                        _pin();
                      },
                      color: Colors.lime,
                      textColor: Colors.black,
                      splashColor: Colors.red,
                    ),
                    SizedBox(
                      height: 80.0,
                      width: 20.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  void _pin() {
    if (_name2.text == "5588") {
      _name2.clear();
      Fluttertoast.showToast(
          msg: "Login Successful!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.green,
          textColor: Colors.black,
          fontSize: 16.0);

      Route route = MaterialPageRoute(builder: (context) => Home());
      Navigator.push(context, route);
    } else {
      _name2.clear();
      Fluttertoast.showToast(
          msg: "Pin is incorrect!",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
