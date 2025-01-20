import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget{

  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() {
    return BannerWidgetSate();
  }

}

class BannerWidgetSate extends State<BannerWidget>{

  @override
  Widget build(BuildContext context) {
    return
      Container(
          padding: const EdgeInsets.all(15),
          margin: EdgeInsets.all(10),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            'W1 Bleu',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          )
      );
  }

}