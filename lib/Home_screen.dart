import 'package:flutter/material.dart';
import 'package:assignment_app/Profile_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() {
    return new HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/FB_IMG_1486395582921.jpg'),
                  height: 400.0,
                ),
                Form(
                  key: _formkey,
                  child: TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(1.0),),
                    prefixIcon: Icon(Icons.mail_outline),
                    hintText: "enter a user name",
                    filled: true,
                    fillColor: Colors.grey[100],),
                    validator: (value){
                      if(value.isEmpty){
                        return "Fill this Feild";
                      }
                    },
                  ),
                ),
                Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 300.0,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child:
                          TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(1.0),),
                            prefixIcon: Icon(Icons.lock),
                            hintText: "password",
                            suffixIcon: Icon(Icons.remove_red_eye),
                            filled: true,
                            fillColor: Colors.grey[100],),
                            validator: (value){
                              if(value.length < 6){
                                return "Password too short";
                              }
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30.0,
                        child: RaisedButton(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            color: Colors.green,
                            child: Text('Login'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              if(_formkey.currentState.validate())
                              Navigator.of(context)
                                  .pushReplacement(MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ));
                            }),
                      ),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
