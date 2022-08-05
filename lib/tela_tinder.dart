
import 'package:flutter/material.dart';



class TelaTinder extends StatefulWidget {
  const TelaTinder({Key? key}) : super(key: key);

  @override
  State<TelaTinder> createState() => _TelaTinderState();
}

class _TelaTinderState extends State<TelaTinder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
      ),
      body: _body(),
    );
  }



  _body() {
    return Container(
      color: Colors.orangeAccent,
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image.network("https://static.vecteezy.com/system/resources/previews/001/188/464/non_2x/fire-icon-png.png",
            width: 100,),
          Container(height: 30,),
          Text("Deseja entrar no tinder?",
            style: TextStyle(color: Colors.white, fontSize: 24),),
          Container(height: 10,),
          Text("Clique no botão abaixo",
            style: TextStyle(color: Colors.white),),
          Container(height: 30,),

          Container(
            child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: RaisedButton(
                          child: Text("entrar no tinder",
                            style: TextStyle(
                                color: Colors.orangeAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          color: Colors.white,
                          onPressed: (){}),
                    ),
                  ),
                ]
            ),
          )


        ],
      ),
    );

  }
}
