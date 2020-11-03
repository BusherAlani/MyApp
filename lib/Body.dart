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
          height: 655,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
              bottomLeft: Radius.zero,
              bottomRight: Radius.zero,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(1.0),
              )
            ],
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(13),
                height: 130,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Container(
                  padding: EdgeInsets.all(1),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Meet&Greet",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "OpenSans-SemiBold",
                                  ),
                            ),
                            Text("Adoptable pets \n Located in over\n 1,600 Stores.",
                             style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: "Cairo-SemiBold",
                                  ),

                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/image/resize.jpeg',
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Featured pets ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Icon(
                Icons.art_track,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
