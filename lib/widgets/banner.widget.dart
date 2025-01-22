import 'package:coffee_shop/widgets/card.top.banner.widget.dart';
import 'package:flutter/material.dart';

import '../shared/theme.dart';
import 'card.promo.widget.dart';

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
    return SizedBox(
      //color: Colors.red,
        height: 350,
        child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: CardTopBannerWidget(),
        ),
        Positioned(
            top: 180,
            child: CardPromoWidget()
        ),
      ],
        )
    );
  }

}