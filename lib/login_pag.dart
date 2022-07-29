import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String email = "";
  String password = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text){
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder()
                  ),
                ),
                Container(height: 10),
                TextField(
                  onChanged: (text){
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder()
                  ),
                ),
                Container(height: 10),
                RaisedButton(onPressed: () {
                  if (email == 'lc@gl.com' && password == '123'){
                    print("correto");
                    Navigator.of(context).pushNamed('/home');
                    //push Named
                    // push Replacement Named
                  } else {
                    print("incorreto");
                  }

                },
                child: Text("Entrar!"))
              ],
            ),
          ),
        ),
      );

  }
}
