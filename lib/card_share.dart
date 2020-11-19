import 'package:beauty_flutter/base_cared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 分享卡片
class CardShare extends BaseCared {
  @override
  _CardShareState createState() => _CardShareState();
}

class _CardShareState extends BaseCaredState {
  @override
  topTitle(String title) {
    return super.topTitle("分享得联名卡");
  }

  @override
  Widget subTitle(String title) {
    return super.subTitle("分享给朋友最多可获得12天无限卡");
  }

  @override
  topTitle2(String title) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        ' / 第19期',
        style: TextStyle(fontSize: 10, color: Colors.grey),
      ),
    );
  }

  @override
  bottomContent() {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(color: Colors.white12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15, bottom: 20),
                child: Image.network(
                    "http://www.devio.org/io/flutter_beauty/card_list.png")),
          ),
          Container(
            alignment: AlignmentDirectional.center,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: bottomTitle('2143243242人 ·参与活动'),
            ),
          )
        ],
      ),
    ));
  }
}
