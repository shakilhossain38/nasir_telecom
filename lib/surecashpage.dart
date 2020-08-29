import 'package:flutter/material.dart';
import 'dbmanager2.dart';
class surecashpage extends StatefulWidget {
  @override
  _surecashpageState createState() => _surecashpageState();
}

class _surecashpageState extends State<surecashpage> {
  final DbStudentManager dbmanager2 = new DbStudentManager();
  final _formKey = new GlobalKey<FormState>();
  Student2 student2;
  var d = 0;


  List<Student2> studlist2;
  int updateIndex2;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(

      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(child: Image.asset("assets/2.png", width: 120.0,height: 30.0,)),
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15.0, right: 15.0),
        children: <Widget>[
          FutureBuilder(
            future: dbmanager2.getStudentList(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var d = 0;
                var e = 0;
                var a = 0;
                studlist2 = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: studlist2 == null ? 0 : studlist2.length,
                  itemBuilder: (BuildContext context, int index) {
                    Student2 st = studlist2[index];


                      var b = '${st.name2}';
                      var c = int.parse(b);
                      d = d + c;
                       a++;


                    return Card(

                      color: Colors.deepPurple,

                      //constraints: BoxConstraints.tightFor(height: 150.0),
                      child: Row(
                        children: <Widget>[
                          Container(

                            width: width * 0.7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SelectableText.rich(
                                    TextSpan(
                                        children: [
                                          TextSpan(text: '${a}. Amount: ${st.name2}\n', style: TextStyle(
                                              fontSize: 15, color: Colors.white),),
                                          TextSpan(text: 'Code: ${st.course3}\n', style: TextStyle(
                                              fontSize: 15, color: Colors.white),),
                                          TextSpan(text: 'Total :  $d\n',
                                            style: TextStyle(
                                                fontSize: 15, color: Colors.white),),
                                        ]
                                    )
                                ),


                              ],
                            ),
                          ),


                          IconButton(onPressed: () {
                            // alert(context);
                            showDialog(context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Delete"),
                                    content: Text(
                                        "Do you really want to delete?"),
                                    actions: <Widget>[
                                      FlatButton(onPressed: () {
                                        dbmanager2.deleteStudent(st.id2);

                                        setState(() {
                                          studlist2.removeAt(index);
                                        });
                                        Navigator.of(context).pop(context);
                                      }, child:
                                      Text("Yes", style: TextStyle(color: Colors.red),)
                                      ),
                                      FlatButton(onPressed: () {
                                        Navigator.of(context).pop(context);
                                      }, child:
                                      Text("No", style: TextStyle(color: Colors.green))
                                      )


                                    ],


                                  );
                                }
                            );
                          }, icon: Icon(Icons.delete, color: Colors.black,),)

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
