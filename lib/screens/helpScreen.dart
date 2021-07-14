import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: veyronColorBlack,
        elevation: 0,
        title: Text(
          'Orders',
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              // By default our  icon color is white
              color: veyronColorWhite,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(),
    );
  }
}