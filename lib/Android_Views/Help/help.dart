import 'package:flutter/material.dart';
import 'package:moodle_test/ThemeColors/colors.dart';
import './userguide.dart';
import 'package:moodle_test/Android_Views/Auto_Logout_Method.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {

  countertimer(){
    AutoLogoutMethod.autologout.counter(context);
  }

  @override
  void initState() {
    super.initState();
    countertimer();
  }

  @override
  Widget build(BuildContext context) {
    return 
    GestureDetector(
      onTap: (){
        countertimer();
      },
    child:Scaffold(
      backgroundColor: mBlue,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Help'),
        automaticallyImplyLeading: true,
      ),
      body:SingleChildScrollView(
        child:Column(
          children: <Widget>[
            GestureDetector(
              onTap: (){
                countertimer();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Userguide(),
                  ),
                );
              },
            child:Container(
              margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.white,
                  width: 0,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
                child: Row(
                  children:[
                    Container(
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        border: Border.all(
                          color: Colors.white,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(5.0),topLeft:Radius.circular(5.0)),
                      ),
                      child:Center(
                        child: Icon(Icons.library_books,color: Colors.black54)
                      ),
                    ),
                    Container(
                      height: 50,
                      padding: EdgeInsets.only(left:20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:Center(
                        child: Text('User Guide'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      )
    ),
    );
  }
}