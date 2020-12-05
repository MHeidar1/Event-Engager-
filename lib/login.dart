import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: new Text('Login'),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            SignInButton(
              Buttons.Google,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            ),
            SignInButton(
              Buttons.LinkedIn,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/exhibitorshome');
              },
            ),
            SizedBox(
              height: 80,
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50,
                    )),
              ),
              Text("OR"),
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                    child: Divider(
                      color: Colors.black,
                      height: 50,
                    )),
              ),
            ]),
            SizedBox(
              height: 80,
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your email',
                ),
              ),
            ),
            Container(
              width: 300,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
              color: Colors.red,
              child: Text('Login', style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
            )
          ])),
    );
  }
}