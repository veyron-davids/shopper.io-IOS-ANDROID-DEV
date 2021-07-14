import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class WomenScreen extends StatelessWidget {
  const WomenScreen({Key? key}) : super(key: key);

  static const routeName = '/women';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: veyronColorBlack,
        elevation: 0,
        title: Text(
          'Women',
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
