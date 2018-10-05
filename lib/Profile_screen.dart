import 'package:flutter/material.dart';
import 'package:assignment_app/Home_screen.dart';
class ProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Profile',style:TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body:Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors:[Colors.blueAccent,Colors.white70],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0,1.5],
              tileMode: TileMode.clamp
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
              children: <Widget>[
                Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 400.0,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10.0),
                          child: Image(
                            image: AssetImage('assets/FB_IMG_1486395582921.jpg'),
                            height: 300.0,
                          ),
                        ),
                      ),
                      Positioned(
                          right:250.0, top: 310.0,
                          child: IconButton(icon:Icon(Icons.add_circle,color: Colors.black87,size:80.0,),
                              onPressed: () {}
                          )
                      ),
                    ]
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: <Widget>[
                      Column(
                          children: <Widget>[
                            SizedBox(width: 80.0,),
                            Text('12',style:TextStyle(
                              fontSize: 25.0, color: Colors.black54,),),
                            Text('Posts',style:TextStyle(
                              fontSize: 15.0, color: Colors.black54,),),
                          ]
                      ),
                      SizedBox(width: 30.0,),
                      Column(
                        children: <Widget>[
                          Text('Scott Colon',style:TextStyle(
                            fontSize: 30.0, color: Colors.black54,),
                          ),
                          Text('Photographer',style:TextStyle(
                            fontSize: 20.0, color: Colors.black54,),),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize:MainAxisSize.max ,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('23',style:TextStyle(
                              fontSize: 25.0, color: Colors.black54,),
                            ),
                            Text('Followers',style:TextStyle(
                              fontSize: 15.0, color: Colors.black54,),
                            ),
                            SizedBox(height: 40.0,),
                            Text('56',style:TextStyle(
                              fontSize: 25.0, color: Colors.black54,),
                            ),
                            Text('Following',style:TextStyle(
                              fontSize: 15.0, color: Colors.black54,),
                            ),
                          ],
                        ),
                        SizedBox(width: 40.0,),
                        Container(
                          width: 170.0,
                          child:Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                              "Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown "
                              "printer took a gallery of type and scrambled it to make a type specimen book",
                            overflow: TextOverflow.ellipsis,
                            maxLines:13,style:TextStyle(color: Colors.black54),
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 300.0,),
              ]),
        ),
      ),
    );
  }
}










