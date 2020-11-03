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
              Text("Matthew Nunez",
                  style: Theme.of(context).textTheme.headline2.copyWith(
                        color: Colors.white,
                        fontFamily: "VarelaRound-Regular",
                        fontSize: 30,
                      )),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          width: 700,
          height: 650,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(1.0),
              )
            ],
          ),
          child: Column(
            children: <Widget>[
              
            ]
          ),
        ),
      ],
    );
  }
}
