import 'package:flutter/material.dart';
import 'dbmanager.dart';
class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final DbStudentManager dbmanager = new DbStudentManager();
  final _nameController = TextEditingController();
  final _formKey = new GlobalKey<FormState>();
  Student student;
  final optionSelect= TextEditingController();
  final optionSelect2= TextEditingController();
  var d=0;


  List<Student> studlist;
  int updateIndex;
 @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(child: Text('01830735333/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

        ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01830735333')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      st.course=='Send     ' && st.course2== '01830735333' ? new Container(
                        width: width*0.7,
                        child:
                          Column(


                            children: <Widget>[
                              Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                              Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                            ],

                        ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  final optionSelect= TextEditingController();
  final optionSelect2= TextEditingController();
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01830735333/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                    //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01830735333')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          if(st.course=='Receive' && st.course2== '01830735333') new Container(
                            width: width*0.7,
                            child:
                            Column(

                              children: <Widget>[
                                // if('${st.course}'=='Send     ' && st.name=='01830735333')

                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          )

                          // st.course=='Receive' && st.course2== '01830735333'? new Container()




                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  final DbStudentManager dbmanager = new DbStudentManager();
   Student student;
  final optionSelect= TextEditingController();
  final optionSelect2= TextEditingController();
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01847146827/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01847146827')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01847146827' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page5 extends StatefulWidget {
  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01847146827/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01847146827')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01847146827') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    // st.course=='Receive' && st.course2== '01830735333'? new Container()




                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page6 extends StatefulWidget {
  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
   var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01312735333/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01312735333')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01312735333' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page7 extends StatefulWidget {
  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01312735333/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01312735333')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01312735333') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page8 extends StatefulWidget {
  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01832648694/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01832648694')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01832648694' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page9 extends StatefulWidget {
  @override
  _Page9State createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01832648694/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01832648694')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01832648694') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}


class Page10 extends StatefulWidget {
  @override
  _Page10State createState() => _Page10State();
}

class _Page10State extends State<Page10> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01639040587/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01639040587')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01639040587' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page11 extends StatefulWidget {
  @override
  _Page11State createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01639040587/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01639040587')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01639040587') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}



class Page12 extends StatefulWidget {
  @override
  _Page12State createState() => _Page12State();
}

class _Page12State extends State<Page12> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01992474696/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01992474696')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01992474696' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page13 extends StatefulWidget {
  @override
  _Page13State createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01992474696/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01992474696')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01992474696') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}


class Page14 extends StatefulWidget {
  @override
  _Page14State createState() => _Page14State();
}

class _Page14State extends State<Page14> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01825196354/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01825196354')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01825196354' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page15 extends StatefulWidget {
  @override
  _Page15State createState() => _Page15State();
}

class _Page15State extends State<Page15> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01825196354/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01825196354')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01825196354') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page16 extends StatefulWidget {
  @override
  _Page16State createState() => _Page16State();
}

class _Page16State extends State<Page16> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01631902214/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01631902214')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01631902214' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page17 extends StatefulWidget {
  @override
  _Page17State createState() => _Page17State();
}

class _Page17State extends State<Page17> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01631902214/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01631902214')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01631902214') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}


class Page18 extends StatefulWidget {
  @override
  _Page18State createState() => _Page18State();
}

class _Page18State extends State<Page18> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01813720649/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01813720649')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01813720649' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page19 extends StatefulWidget {
  @override
  _Page19State createState() => _Page19State();
}

class _Page19State extends State<Page19> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01813720649/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01813720649')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01813720649') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}



class Page20 extends StatefulWidget {
  @override
  _Page20State createState() => _Page20State();
}

class _Page20State extends State<Page20> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01893653443/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01893653443')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01893653443' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page21 extends StatefulWidget {
  @override
  _Page21State createState() => _Page21State();
}

class _Page21State extends State<Page21> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01893653443/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01893653443')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01893653443') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page22 extends StatefulWidget {
  @override
  _Page22State createState() => _Page22State();
}

class _Page22State extends State<Page22> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01856979773/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01856979773')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01856979773' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page23 extends StatefulWidget {
  @override
  _Page23State createState() => _Page23State();
}

class _Page23State extends State<Page23> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01856979773/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01856979773')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01856979773') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page24 extends StatefulWidget {
  @override
  _Page24State createState() => _Page24State();
}

class _Page24State extends State<Page24> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01824837814/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01824837814')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01824837814' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page25 extends StatefulWidget {
  @override
  _Page25State createState() => _Page25State();
}

class _Page25State extends State<Page25> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01824837814/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01824837814')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01824837814') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page26 extends StatefulWidget {
  @override
  _Page26State createState() => _Page26State();
}

class _Page26State extends State<Page26> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01972735333/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01972735333')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01972735333' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page27 extends StatefulWidget {
  @override
  _Page27State createState() => _Page27State();
}

class _Page27State extends State<Page27> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01972735333/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01972735333')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01972735333') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page28 extends StatefulWidget {
  @override
  _Page28State createState() => _Page28State();
}

class _Page28State extends State<Page28> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01517821906/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01517821906')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01517821906' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page29 extends StatefulWidget {
  @override
  _Page29State createState() => _Page29State();
}

class _Page29State extends State<Page29> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01517821906/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01517821906')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01517821906') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page30 extends StatefulWidget {
  @override
  _Page30State createState() => _Page30State();
}

class _Page30State extends State<Page30> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01623354217/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01623354217')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01623354217' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page31 extends StatefulWidget {
  @override
  _Page31State createState() => _Page31State();
}

class _Page31State extends State<Page31> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01623354217/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01623354217')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01623354217') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page32 extends StatefulWidget {
  @override
  _Page32State createState() => _Page32State();
}

class _Page32State extends State<Page32> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01892968877/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01892968877')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01892968877' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page33 extends StatefulWidget {
  @override
  _Page33State createState() => _Page33State();
}

class _Page33State extends State<Page33> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01892968877/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01892968877')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01892968877') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page34 extends StatefulWidget {
  @override
  _Page34State createState() => _Page34State();
}

class _Page34State extends State<Page34> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01888190505/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01888190505')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01888190505' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page35 extends StatefulWidget {
  @override
  _Page35State createState() => _Page35State();
}

class _Page35State extends State<Page35> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01888190505/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01888190505')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01888190505') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}

class Page36 extends StatefulWidget {
  @override
  _Page36State createState() => _Page36State();
}

class _Page36State extends State<Page36> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01813907252/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01813907252')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01813907252' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page37 extends StatefulWidget {
  @override
  _Page37State createState() => _Page37State();
}

class _Page37State extends State<Page37> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01813907252/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01813907252')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01813907252') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}


class Page38 extends StatefulWidget {
  @override
  _Page38State createState() => _Page38State();
}

class _Page38State extends State<Page38> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01828967966/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01828967966')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01828967966' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page39 extends StatefulWidget {
  @override
  _Page39State createState() => _Page39State();
}

class _Page39State extends State<Page39> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01828967966/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01828967966')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01828967966') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}



class Page40 extends StatefulWidget {
  @override
  _Page40State createState() => _Page40State();
}

class _Page40State extends State<Page40> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;


  List<Student> studlist;
  int updateIndex;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01823757380/Send',style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if('${st.course}'=='Send     ' && '${st.course2}'=='01823757380')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;

                      //Text("${st.course}");
                    }

                    return Card(
                      color: Colors.red,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          //if('${st.course}'=='Send     ' && st.name=='01830735333')
                          st.course=='Send     ' && st.course2== '01823757380' ? new Container(
                            width: width*0.7,
                            child:
                            Column(


                              children: <Widget>[
                                Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                                Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                              ],

                            ),

                          ) : Container()


                        ],
                      ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),


    );
  }
}


class Page41 extends StatefulWidget {
  @override
  _Page41State createState() => _Page41State();
}

class _Page41State extends State<Page41> {
  final DbStudentManager dbmanager = new DbStudentManager();
  Student student;
  var d=0;
  List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Center(child: Text('01823757380/Receive', style: TextStyle(color: Colors.black),)),
      ),
      body:

      ListView(
        padding: EdgeInsets.only(left: 30.0,right: 30.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context,snapshot){
              if(snapshot.hasData) {
                var d=0;
                var e=0;
                var a=0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ?0 : studlist.length,
                  //if('${snapshot.data}'=='0183073533' && '${snapshot.data}'=='Receive')
                  itemBuilder: (BuildContext context, int index) {

                    Student st = studlist[index];

                    if('${st.course}'=='Receive' && '${st.course2}'=='01823757380')
                    {
                      var b= '${st.name}';
                      var c= int.parse(b);
                      d= d+c;
                      a++;
                    }



                    return Card(
                      color: Colors.green,


                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                          children: <Widget>[
                      //if('${st.course}'=='Send     ' && st.name=='01830735333')
                      if(st.course=='Receive' && st.course2== '01823757380') new Container(
                      width: width*0.7,
                      child:
                      Column(

                        children: <Widget>[
                          // if('${st.course}'=='Send     ' && st.name=='01830735333')

                          Text('${a}.${st.name}',style: TextStyle(fontSize: 15, color: Colors.white),),
                          Text('Total: ${d}',style: TextStyle(fontSize: 15, color: Colors.white),),


                        ],

                      ),

                    )

                    ],
                    ),
                    );
                  },

                );
              }
              return new CircularProgressIndicator();
            },
          )

        ],
      ),

    );
  }
}



