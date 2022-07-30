import 'package:flutter/material.dart';

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
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset("assets/images/background.jpg",
            fit: BoxFit.cover),
          ),
          Container(
            color: Colors.black.withOpacity(0.35)
          ),
          _body(context),
        ],
      ),
      );

  }

  SizedBox _body(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/logo.png"),
              ),
              Container(height: 40),
              Card(
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
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
                      RaisedButton(
                          color: Colors.red,
                          textColor: Colors.white,
                          onPressed: () {
                        if (email == '@' && password == '123'){
                          print("correto");
                          Navigator.of(context).pushNamed('/home');
                          //push Named
                          // push Replacement Named
                        } else {
                          print("incorreto");
                        }

                      },
                          child: Container(
                              width: double.infinity,
                              child: Text(
                                "Entrar!",
                                textAlign: TextAlign.center,))
                      )
                    ],
                  ),
                )
              ),
            ],
          ),
        ),
      );
  }
}
