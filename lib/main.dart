import 'package:flutter/material.dart';
import 'Body.dart';
import 'Const.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primarySwatch: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          // menu Icon
          leading: Icon(Icons.apps),
          actions: <Widget>[
            // Avatar Icon in top left
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
        body: BodyPage(),
      ),
    );
  }
}
