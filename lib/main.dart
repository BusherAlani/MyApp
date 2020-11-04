import 'package:flutter/material.dart';
import 'package:new_app2/Body.dart';
import 'Const.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: kPrimaryColor,
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          backgroundColor: Colors.teal[900],
          appBar: AppBar(
            elevation: 0,
            leading:  Icon(Icons.apps),
    
            actions: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 28,
                  backgroundImage: NetworkImage(
                      "https://gigantic.store/wp-content/uploads/2019/04/09.jpg"),
                ),
              ),
            ],
          ),
          body:BodyPage() , 
        ));
  }
}
