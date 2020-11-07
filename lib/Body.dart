import 'package:flutter/material.dart';
import 'package:new_app2/Const.dart';
import 'Data.dart';
import 'CardItem.dart';

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
                margin: EdgeInsets.all(13),
                height: 135,
                width: 355,
                decoration: BoxDecoration(
                  color: Colors.amber[600],
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 18, right: 5, top: 10, bottom: 3),
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
                                  .headline1
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "OpenSans-SemiBold",
                                  ),
                            ),
                            Text(
                              "Adoptable pets ",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontFamily: "Cairo-SemiBold",
                                  ),
                            ),
                            Text(
                              "Located in over\n1,600 Stores.",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: "OpenSans-SemiBold",
                                  ),
                            )
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/image/resize-removebg.png',
                          height: 700,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Featured pets ",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.art_track,
                    color: Colors.black,
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: listCat.length,
                  itemBuilder: (context, int key) {
                    return CardItem(index: key);
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
