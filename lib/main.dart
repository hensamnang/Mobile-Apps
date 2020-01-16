import 'package:flutter/material.dart';

void main() => runApp(MyApp());
//stl
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         appBar: AppBar(
           title: Text("Test Mobile App",
            style: TextStyle(
              fontFamily: "lover",
              fontSize: 20.0,
            ),
           ),
           backgroundColor: Colors.pink[100],
           //something it will float right forever use with action
           actions: <Widget>[
             Container(
               child: Image.asset("assets/logo.png",width: 130.0,),
             ),
           ],
           iconTheme: IconThemeData(color: Colors.pink),
         ),
         drawer: Drawer(
           child: ListView(
             children: <Widget>[
               DrawerHeader(
                 child: Center(
                   child: CircleAvatar(
                     radius: 60.0,
                     backgroundImage: AssetImage("assets/1.jpg"),
                   ),
                 ),
                 decoration: BoxDecoration(
                   image: DecorationImage(
                     image: AssetImage("assets/oo.jpg"),
                     fit: BoxFit.cover,
                   )
                 ),
               )
             ],
           ),
         ),
         body: ListView(
           children: <Widget>[
             Container(
               child: Image.asset("assets/2.jpg"),
             ),
             Container(
               margin: EdgeInsets.only(top: 10.0),
               child: Row(
                 //for row horizontall  
                 mainAxisAlignment:MainAxisAlignment.center,
                 children: <Widget>[
                   Icon(Icons.favorite_border,color: Colors.pink[300],),
                   Text("Just a Dream",
                   style: TextStyle(
                     fontSize: 40.0,
                     fontFamily: "lover",
                     color: Colors.pink[200]),),
                 ],
               ),
             ),
             Container(
               child: Text("We strive to innovate in everything we do: online and mobile gaming, movies, infrastructure, content platforms and more. ",
                style: TextStyle(fontSize:17.0 ),
               ) 
             ),
             Container(
               padding: EdgeInsets.only(left: 20.0,right: 20.0),
               height: 50.0,
               child: RaisedButton(
                 child: Text("Please don't go",style: TextStyle(fontFamily: "lover",fontSize: 20.0,color: Colors.pink[50]),),
                 color: Colors.pink[300],
                 onPressed: (){},
                 //for border radias 
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.all(Radius.circular(50.0)),
                   
                 ),
                 //when we click on button and then it chang color 
                 splashColor: Colors.white,
               ),
             ),
             Container(
               //set size for it
               margin: EdgeInsets.only(top: 10.0),
               child: Image.asset("assets/1.jpg"),
             ),
             Container(
               child: Row(
                 children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.favorite_border,
                      color: Colors.pink[200],
                      ),
                      Text("love" ,style: TextStyle(fontSize: 20.0,fontFamily: "lover"),),
                    ],
                  ),
                ) ,  
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.home,
                      color: Colors.pink[200],
                      ),
                      Text("home" ,style: TextStyle(fontSize: 20.0,fontFamily: "lover"),),
                    ],
                  ),
                ) ,  
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.subway,
                      color: Colors.pink[200],
                      ),
                      Text("like" ,style: TextStyle(fontSize: 20.0,fontFamily: "lover"),),
                    ],
                  ),
                )   
                
                 ],
               ),
             ),
             Container(
               child: Text("We strive to innovate in everything we do: online and mobile gaming, movies, infrastructure, content platforms and more. ",
                style: TextStyle(fontSize:17.0 ),
               ) 
             ),
           ],
         ),
         floatingActionButton: FloatingActionButton.extended(
           onPressed: (){},
           label:Text("My love",style: TextStyle(fontFamily: "lover"),) ,
           icon: Icon(Icons.favorite_border),
           backgroundColor: Colors.pink[200],
         ),
         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       ),
    );
  }
}