import 'package:flutter/material.dart';

/// basic 基类封装
class BaseCared extends StatefulWidget {
  @override
  BaseCaredState createState() => BaseCaredState();
}

class BaseCaredState extends State<BaseCared> {
  Color subTitleColors = Colors.grey;
  Color bottomTitleColors = Colors.lightBlue;

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
/*头部组件封装*/
  topContent() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 26, 10, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,//横轴对齐
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
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
    /*头部副标题封*/
  Widget subTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 11, color: subTitleColors),
      ),
    );
  }
/*头部标题组件*/
  topTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 22, color: Colors.black87),
    );
  }

  topTitle2(String title) {
    return Container();
  }
  bottomTitle(String title){
    return Text(title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 12,color:bottomTitleColors ),);
  }
}
