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
            leading: IconButton(icon: Icon(Icons.apps), onPressed: () {}),
            actions: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Image.network(
                    "https://gigantic.store/wp-content/uploads/2019/04/09.jpg"),
              ),
            ],
          ),
          body: BodyPage(),
        ));
  }
}
