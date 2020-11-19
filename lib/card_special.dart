import 'package:beauty_flutter/base_cared.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

/// 长安十二时辰卡片
class CardSpecial extends BaseCared {
  @override
  CardSpecialState createState() => CardSpecialState();
}

class CardSpecialState extends BaseCaredState {
  @override
  void initState() {
    bottomTitleColors = Colors.blue;
    super.initState();
  }

  @override
  topContent() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 66, right: 66, top: 36, bottom: 30),
          decoration: BoxDecoration(color: Color(0xfffffcf7)),
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(//阴影效果
                  color: Colors.grey, blurRadius: 20, offset: Offset(0, 10))
              //水平偏移，垂直偏移
            ]),
            child: Image.network(
                'http://www.devio.org/io/flutter_beauty/changan_book.jpg'),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20, top: 15, bottom: 15, right: 20),
          decoration: BoxDecoration(
            color: Color(0xfff7f3ea),
          ),
          child: Row(
            //行
            children: <Widget>[
              Column(
                //列
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '长安十二时辰...',
                    style: TextStyle(fontSize: 18, color: Color(0xff473b25)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '马伯庸',
                      style: TextStyle(fontSize: 13, color: Color(0xff7d725c)),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(left: 24),
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    //装饰器
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Color(0xffd9bc82), Color(0xffecd9ae)])),
                child: Text(
                  '分享免费领',
                  style: TextStyle(fontSize: 13, color: Color(0xff4f3b1a)),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bottomContent() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch, //水平撑开
        mainAxisAlignment: MainAxisAlignment.spaceAround, //均分分布
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(
                  'http://www.devio.org/io/flutter_beauty/double_quotes.jpg',
                  width: 26,
                  height: 26,
                ),
                Text('揭露历史真相')
              ],
            ),
          ),
          bottomTitle('更多免费好书领不停>')
        ],
      ),
    );
  }
}
