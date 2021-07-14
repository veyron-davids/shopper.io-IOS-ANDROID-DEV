import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopper/constants.dart';

class CouplesScreen extends StatelessWidget {
  const CouplesScreen({Key? key}) : super(key: key);

  static const routeName = '/couples';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: veyronColorBlack,
        elevation: 0,
        title: Text(
          'Couples',
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
