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
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.blueAccent,Colors.white70],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0,1.5],
            tileMode:TileMode.repeated,
        ),
        ),
        child: Padding(
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
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.all(0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child:Form(
                                key: _formkey,
                                child:Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                                  child: Column(
                                    children: <Widget>[
                                      TextFormField(decoration: InputDecoration(border: UnderlineInputBorder(
                                        borderRadius: BorderRadius.circular(1.0),),
                                        prefixIcon: Icon(Icons.mail_outline),
                                        hintText: "enter a user name",
                                        filled: true,
                                        fillColor: Colors.grey[100],),
                                        validator: (value){
                                          if(value.isEmpty){
                                            return "please enter text";
                                          }
                                        },
                                      ),
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 100.0,
                              child: RaisedButton(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 10.0, horizontal: 10.0),
                                  color: Colors.blueGrey,
                                  child: Text('Login',style: TextStyle(color: Colors.white),),
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
                          ]
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
