import 'package:flutter/material.dart';
import 'dbmanager.dart';
import 'home.dart';

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  final DbStudentManager dbmanager = new DbStudentManager();
  final _formKey = new GlobalKey<FormState>();
  Student student;
  List<Student> studlist;
  int updateIndex;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(child: Text('Transactions')),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager.getStudentList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var d = 0;
                var e = 0;
                var a = 0;
                studlist = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist == null ? 0 : studlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student st = studlist[index];

                    if ('${st.course}' == 'Send     ') {
                      var b = '${st.name}';
                      var c = int.parse(b);
                      d = d + c;

                      //Text("${st.course}");
                    }
                    if ('${st.course}' == 'Receive') {
                      var f = '${st.name}';
                      var g = int.parse(f);
                      e = e + g;

                      // Text("$e");
                    }
                    a++;

                    return Card(
                      color:
                          st.course == "Send     " ? Colors.red : Colors.green,

                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: width * 0.7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText.rich(TextSpan(children: [
                                  TextSpan(
                                    text:
                                        '$a.${st.course}: ${st.name}-> ${st.course2}\n',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: 'Send Total        :       $d\n',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: 'Receive Total   :       $e',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  )

                                ])),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              // alert(context);
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Delete"),
                                      content:
                                          Text("Do you really want to delete?"),
                                      actions: <Widget>[
                                        FlatButton(
                                            onPressed: () {
                                              dbmanager.deleteStudent(st.id);

                                              setState(() {
                                                studlist.removeAt(index);
                                              });
                                              Navigator.of(context)
                                                  .pop(context);
                                            },
                                            child: Text(
                                              "Yes",
                                              style:
                                                  TextStyle(color: Colors.red),
                                            )),
                                        FlatButton(
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(context);
                                            },
                                            child: Text("No",
                                                style: TextStyle(
                                                    color: Colors.green)))
                                      ],
                                    );
                                  });
                            },
                            
                            icon: Icon(
                              Icons.delete,
                              color: Colors.black,
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
