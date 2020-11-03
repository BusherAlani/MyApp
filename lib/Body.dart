import 'package:flutter/material.dart';
import 'package:new_app2/Const.dart';

class BodyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            height: size.height * 0.1,
            width: size.height * 0.5,
            color: kBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Hello",
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          color: Colors.white,
                          fontFamily: "VarelaRound-Regular",
                          fontSize: 23,
                        )),
                Text("Matth Nunez",
                    style: Theme.of(context).textTheme.headline2.copyWith(
                          color: Colors.white,
                          fontFamily: "VarelaRound-Regular",
                          fontSize: 30,
                        )),
              ],
            )),
      ],
    );
  }
}
