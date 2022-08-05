import 'package:flutter/material.dart';

import 'app_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer:Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: ClipRRect( //ClipOval
                    borderRadius: BorderRadius.circular(40),
                      child: Image.network("https://png.pngtree.com/element_origin_min_pic/00/00/06/12575cb97a22f0f.jpg")),
                  accountName: Text("Usuario"),
                  accountEmail: Text("usuario@email.com"),
              ),
              ListTile(
                title: Text("Inicio"),
                subtitle: Text("Tela inicial"),
                leading: Icon(Icons.home),
                onTap: () {
                  print("home");
                }
              ),
              ListTile(
                  title: Text("Logout"),
                  subtitle: Text("Sair"),
                  leading: Icon(Icons.error_outline_sharp),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/');
                  }
              ),

              ListTile(
                  title: Text("Tinder"),
                  subtitle: Text("Desafio Tinder"),
                  leading: Icon(Icons.local_activity_rounded),
                  onTap: () {
                    Navigator.of(context).pushReplacementNamed('/telatinder');
                  }
              ),

            ],
          )
        ),

        appBar: AppBar(
            title: Text('Curso Flutterando'), actions: [CustomSwitcher()]),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

              children: [
              Text(
                'N: $counter',
                style: TextStyle(fontSize: 30),
              ),
            CustomSwitcher(),

            // ----
            Container(height: 10),
            // ----

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                )
              ],
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ));
  }
}

class CustomSwitcher extends StatelessWidget {
  const CustomSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
