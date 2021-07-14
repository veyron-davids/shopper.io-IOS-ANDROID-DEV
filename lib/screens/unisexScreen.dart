import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class UnisexScreen extends StatelessWidget {
  const UnisexScreen({ Key? key }) : super(key: key);

  static const routeName = '/unisex';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: veyronColorBlack,
        elevation: 0,
        title: Text(
          'Unisex',
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