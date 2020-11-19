import 'package:flutter/material.dart';

class BaseCared extends StatefulWidget {
  @override
  BaseCaredState createState() => BaseCaredState();
}

class BaseCaredState extends State<BaseCared> {
  Color subTitleColors = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(6),
      clipBehavior: Clip.antiAlias,
      child: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: <Widget>[topContent(), bottomContent()],
        ),
      ),
    );
  }

  topContent() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 26, 10, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              topTitle(''),
              topTitle2(''),
            ],
          ),
          subTitle('')
        ],
      ),
    );
  }

  bottomContent() {
    return Container();
  }

  Widget subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: subTitleColors),
      ),
    );
  }

  topTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, color: Colors.black87),
    );
  }

  topTitle2(String title) {
    return Container();
  }
}
