import 'package:flutter/material.dart';
import 'dbmanager.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'page.dart';
import 'search.dart';
import 'surecash.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/services.dart';
class  Home extends StatefulWidget {
  final Widget first;
  final Widget second;
  Home({@required this.first, @required this.second});
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final DbStudentManager dbmanager = new DbStudentManager();
  final _nameController = TextEditingController();

  final _formKey = new GlobalKey<FormState>();
  Student student;
  final optionSelect = TextEditingController();
  final optionSelect2 = TextEditingController();

  List<String> option = ["Send     ", "Receive"];
  List<String> option2 = [
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

  List<Student> studlist;
  int updateIndex;
  String selectOption = "";
  String selectOption2 = "";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFE0F7FA),
      //backgroundColor: Colors.white12,
      appBar: AppBar(
        title: Center(child: Text('Nasir Telecom')),
      ),

      drawer: Drawer(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(90.0),
          color: Theme.of(context).primaryColor,
          child: Container(
            child: Column(
              children: <Widget>[


                Text("Developer", style: TextStyle(color: Colors.yellowAccent
                    ,fontSize: 25.0, fontWeight: FontWeight.w800),),
                Padding(padding: EdgeInsets.only(top:10.0)),
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage("assets/shakil.png"),
                        fit: BoxFit.fill,

                      )
                  ),

                ),
                Padding(padding: EdgeInsets.only(top:10.0)),

                Text("Md. Shakil Hossen", style: TextStyle(color: Colors.white
                    ,fontSize: 14.0, fontWeight: FontWeight.w800),),
                Padding(padding: EdgeInsets.only(top:10.0)),

                Text("B.Sc. in CSE", style: TextStyle(color: Colors.white
                    ,fontSize: 14.0, fontWeight: FontWeight.w800),),
                Padding(padding: EdgeInsets.only(top:10.0)),

                Text("Bangladesh Army International", style: TextStyle(color: Colors.white
                    ,fontSize: 8.9, fontWeight: FontWeight.w800),),
                Text("University of Science and", style: TextStyle(color: Colors.white
                    ,fontSize: 9.0, fontWeight: FontWeight.w800),),
                Text("Technology", style: TextStyle(color: Colors.white
                    ,fontSize: 9.0, fontWeight: FontWeight.w800),),

              ],

            ),
          ),

        ),
      ),

      body:
      ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            child:  Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: Colors.deepOrange[200],
                    ),
                    Container(
                      height: 150,

                      padding: EdgeInsets.only(left: 95.0),

                      child: SafeArea(
                        child: Column(
                          children: <Widget>[

                            Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(left: 52.0, top: 5.0)),
                                Center(child: Text("নাসির টেলিকম\n", style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w800,
                                  color: Colors.white,)),)
                              ],
                            ),

                            Row(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(left: 40.0)),
                                Center(child: Text("প্রোঃ নাসির উদ্দিন\n", style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.w800,
                                  color: Colors.white,
                                ),)),
                              ],
                            ),


                            Row(
                              children: <Widget>[
                                // Padding(padding: EdgeInsets.only(left: 20.0)),
                                Center(child: Text("কালিরবাজার, চৌদ্দগ্রাম, কুমিল্লা",
                                    style: TextStyle(
                                      fontSize: 14.0, fontWeight: FontWeight.w800,
                                      color: Colors.white,)),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 120,
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/nasir.png"), radius: 20.0,),
                    ),
                  ],
                ),

                Padding(padding: EdgeInsets.only(top:10.0)),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child:DropDownField(

                      controller: optionSelect,
                      hintText: "Select Option",
                      enabled: true,
                      items: option,
                     // textStyle: TextStyle(color: Colors.white70),

                      onValueChanged: (value) {
                        setState(() {
                          selectOption = value;
                        });
                      },
                    ),

                  ),
                ),
                Padding(padding: EdgeInsets.all(6.0)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: DropDownField(
                      controller: optionSelect2,
                      hintText: "Select Number",
                      enabled: true,
                     // itemsVisibleInDropdown: 1,
                      items: option2,

                      onValueChanged: (value) {
                        setState(() {
                          selectOption2 = value;

                        });
                      },
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(6.0)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: new InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Enter Amount",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        )),

                    controller: _nameController,
                    validator: (val) =>
                    val.isNotEmpty ? null : 'Amount should not Be empty',
                    maxLength: 6,
                    //obscureText: true,
                    keyboardType: TextInputType.number,
                    inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.black)),
                          child: Text("Confirm"),
                          onPressed: () {
                            _submitStudent(context);
                          },
                          color: Colors.green,
                          textColor: Colors.white,
                          splashColor: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 180.0,
                        height: 50.0,
                        child:RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: Colors.yellowAccent)),
                          child: Text("Check all transactions"),
                          onPressed: () {
                            Route route =
                            MaterialPageRoute(builder: (context) => Page());
                            Navigator.push(context, route);
                          },
                          color: Colors.deepPurple,
                          textColor: Colors.white,
                          splashColor: Colors.blueAccent,
                        ),
                      )


                    ],
                  ),
                ),

                Padding(padding: EdgeInsets.all(10.0)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 180.0,
                        height: 50.0,
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.yellowAccent)
                            ),
                            child: Center(child: Text("Individual Transactions", textAlign: TextAlign.center,)),
                            color: Colors.deepPurple,
                            textColor: Colors.white,
                            splashColor: Colors.blueAccent,

                            onPressed: (){

                              Route route= MaterialPageRoute(builder: (context)=>search());
                              Navigator.push(context, route);
                            }),


                      ),
                    ],),
                ),

                Padding(padding: EdgeInsets.all(10.0)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.yellowAccent)),
                        child: InkWell(
                          onTap: (){

                            Route route= MaterialPageRoute(builder: (context)=>MyApp2());
                            Navigator.push(context, route);
                          },
                          child: Image.asset("assets/2.png",
                            width: 180,
                            fit: BoxFit.cover,
                          ),

                        ),
                      )
                    ],),
                )

              ],
            ),

          ),
        ],
      ),
    );
  }

  void _submitStudent(BuildContext context) {
    if (_formKey.currentState.validate()) {
      if (student == null) {
        Student st = new Student(
            name: _nameController.text,
            course: optionSelect.text,
            course2: optionSelect2.text);
        dbmanager.insertStudent(st).then((id) => {
        _nameController.clear(),
        optionSelect.clear(),
        optionSelect2.clear(),

        //print('Student Added to Db ${id}')
        });
        Fluttertoast.showToast(
            msg: "Data inserted",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0
        );

      }
    }
    else{

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

