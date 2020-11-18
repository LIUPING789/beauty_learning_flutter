import 'package:beauty_flutter/base_cared.dart';
import 'package:flutter/material.dart';

///本周推荐
class CardRecommend extends BaseCared {
  @override
  _CardRecommendState createState() => _CardRecommendState();
}

class _CardRecommendState extends BaseCaredState {
  @override
  void initState() {
    subTitleColors = Colors.orange;
    super.initState();
  }

  @override
  topTitle(String title) {
    return super.topTitle("本周推荐");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle("送你一天无限卡.全场书籍免费读>");
  }

  @override
  bottomContent() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
          child: Image.network(
              'http://www.devio.org/io/flutter_beauty/card_1.jpg',fit:BoxFit.cover,)),
    );
  }
}
