import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _title = 'Flutter特训班';
  final String _lector = 'Hank';

  @override
  Widget build(BuildContext context) {
    return Text(
      '《 ${_title} 》-- $_lector.本套课程将针对iOS开发者快速上手Flutter技术.通过快速的配置使用iOS的技术和Flutter对比让同学们能更加容易的理解这门技术.本课程设计贯穿整个实战项目,通过项目需求快速学习各项技术.',
      textAlign: TextAlign.center,
      style: _textStyle,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '《 Flutter特训班 》',
        style: TextStyle(fontSize: 30, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: 'Hank',
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          TextSpan(
            text: '😁',
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
          TextSpan(
            text: 'Hank',
            style: TextStyle(fontSize: 16, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}



class BaseWidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            padding: EdgeInsets.only(left: 30,right: 10,top: 10,bottom: 10),
            color: Colors.red,
            child: Icon(Icons.add),
          ),
        ],
      ),

    );
  }
}
