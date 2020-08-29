import 'package:flutter/material.dart';
import 'dbmanager2.dart';
import 'surecashpage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Color(0xFFE0F7FA),
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Center(child: Image.asset("assets/2.png", width: 120.0,height: 30.0,)),
        ),
        body: CustomPaint(
          painter: CurvePainter(),
          child: surecash(),
        ));
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
class surecash extends StatefulWidget {
  @override
  _surecashState createState() => _surecashState();
}

class _surecashState extends State<surecash> {
  final _formKey = new GlobalKey<FormState>();
  final DbStudentManager dbmanager2 = new DbStudentManager();
  final _nameController2 = TextEditingController();
  final _nameController3 = TextEditingController();
  Student2 student2;
  @override
  Widget build(BuildContext context) {
    return Container(



      child:
      ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[


                  Padding(padding: EdgeInsets.all(6.0)),
                  TextFormField(
                    decoration: new InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter Code",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    controller: _nameController3,
                    validator: (val) =>
                    val.isNotEmpty ? null : 'Code should not Be empty',
                    maxLength: 4,
                    //obscureText: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  ),
                  Padding(padding: EdgeInsets.all(6.0)),
                  TextFormField(
                    decoration: new InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter Amount",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),
                    controller: _nameController2,
                    validator: (val) =>
                    val.isNotEmpty ? null : 'Amount should not Be empty',
                    maxLength: 4,
                    //obscureText: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      SizedBox(
                        width: 120.0,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)),
                          child: Text("Confirm"),
                          onPressed: () {
                            _submit(context);
                          },
                          color: Colors.green,
                          textColor: Colors.white,
                          splashColor: Colors.blueAccent,
                        ),

                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.all(10.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 180.0,
                        height: 50.0,
                        child:RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.yellowAccent)),
                          child: Text("Check all"),
                          onPressed: () {
                            Route route =
                            MaterialPageRoute(builder: (context) => surecashpage());
                            Navigator.push(context, route);
                          },
                          color: Colors.deepPurple,
                          textColor: Colors.white,
                          splashColor: Colors.blueAccent,
                        ),
                      )


                    ],
                  ),








                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState.validate()) {
      if (student2 == null) {
        Student2 st2 = new Student2(
            name2: _nameController2.text,
            course3: _nameController3.text,
            );
        dbmanager2.insertStudent(st2).then((id2) => {
        _nameController2.clear(),

        _nameController3.clear(),

        //print('Student Added to Db ${id}')

        Fluttertoast.showToast(
        msg: "Data inserted",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0
        )
        });
      } else{

        Fluttertoast.showToast(
            msg: "Invalid input!",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );


      }
    }
  }

}
