import 'package:flutter/material.dart';
import 'Data.dart';

class CardItem extends StatelessWidget {
  final int index;
  CardItem({this.index});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            width: 110,
            height: 110,
            child: Image.asset(listCat[index].imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    listCat[index].name,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.teal,
                      fontFamily: "VarelaRound-Regular",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width * 0.6,
                    child: Text(
                      listCat[index].text,
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: "OpenSans-SemiBold",
                        color: Colors.teal[300],
                        ),
                    ),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
