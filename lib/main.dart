import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool checked = false;
  String _username = "";
  String getUseranme(String user) {
    setState(() {
      _username = user;
    });
    return _username;
  }

  String _password = " ";
  String getPassword(String pass) {
    setState(() {
      _password = pass;
    });
    return _password;
  }

  String _result = " ";
  void displayLogin() {
    setState(() {
      _result = _username + _password;
      if (checked == true) {
        _result =
            "@Username" + " " + _username + "and @password" + " " + _password;
      } else {
        _result = "You are not yet agree !";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form Login"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 30.0),
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Username', icon: Icon(Icons.person)),
                onChanged: (String user) => getUseranme(user),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 30.0),
              padding: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                obscureText: true,
                onChanged: (String pass) => getPassword(pass),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 50.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: checked,
                      onChanged: (bool value) {
                        setState(() {
                          checked = value;
                        });
                      },
                    ),
                    Text(
                      "Are you agree ?",
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 40.0,
                bottom: 40.0,
              ),
              child: RaisedButton(
                onPressed: displayLogin,
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                splashColor: Colors.pink,
              ),
            ),
            Container(
              child: SizedBox(
                width: 290.0,
                height: 50.0,
                child: Card(
               child: Text(
                  _result,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
