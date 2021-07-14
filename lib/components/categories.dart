import 'package:flutter/material.dart';
import 'package:shopper/screens/couplesScreen.dart';
import 'package:shopper/screens/dealScreen.dart';
import 'package:shopper/screens/menScreen.dart';
import 'package:shopper/screens/scripturesScreen.dart';
import 'package:shopper/screens/trendingScreen.dart';
import 'package:shopper/screens/unisexScreen.dart';
import 'package:shopper/screens/vogueScreen.dart';
import 'package:shopper/screens/womenScreen.dart';

import '../constants.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CategoryCardOne(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CategoryCardTwo(),
        )
      ],
    );
  }
}

class CategoryCardOne extends StatelessWidget {
  const CategoryCardOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(color: veyronColorWhite),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: veyronTheme),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            DaelScreen.routeName,
                          );
                        },
                        icon: Icon(
                          Icons.fireplace,
                          color: veyronColorWhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Deals',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF3D82AE)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            TrendingScreen.routeName,
                          );
                        },
                        icon: Icon(
                          Icons.trending_up,
                          color: veyronColorWhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Trending',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFD3A984)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            VogueScreen.routeName,
                          );
                        },
                        icon: Icon(
                          Icons.male,
                          color: veyronColorWhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Vogue',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amber),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            ScripturesScreen.routeName,
                          );
                        },
                        icon: Icon(
                          Icons.book,
                          color: veyronColorWhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Scriptures',
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class CategoryCardTwo extends StatelessWidget {
  const CategoryCardTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(color: veyronColorWhite),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 25, top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lime),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            UnisexScreen.routeName,
                          );
                        },
                        icon: Icon(
                          Icons.male,
                          color: veyronColorWhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Unisex',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.purple),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            WomenScreen.routeName,
                          );
                        },
                        icon: Icon(
                          Icons.male,
                          color: veyronColorWhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Women',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.pinkAccent),
                    child: GestureDetector(
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              CouplesScreen.routeName,
                            );
                          },
                          icon: Icon(
                            Icons.male,
                            color: veyronColorWhite,
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Couples',
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lightBlue),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(
                            MenScreen.routeName,
                          );
                        },
                        icon: Icon(
                          Icons.male,
                          color: veyronColorWhite,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Men',
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
