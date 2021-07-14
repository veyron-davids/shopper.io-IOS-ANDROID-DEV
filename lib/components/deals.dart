import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper/components/displayCard.dart';
import 'package:shopper/constants.dart';
import 'package:shopper/providers/deals.dart';
import 'package:shopper/screens/dealScreen.dart';

class DealsCard extends StatefulWidget {
  const DealsCard({Key? key}) : super(key: key);

  @override
  _DealsCardState createState() => _DealsCardState();
}

class _DealsCardState extends State<DealsCard> {
 var _showOnlyFavorites = false;
  var _isInit = true;
  var _isLoading = false;

  //  @override
  // void didChangeDependencies() {
  //   if (_isInit) {
  //     setState(() {
  //       _isLoading = true;
  //     });
  //     Provider.of<Deals>(context).fetchDeals().then((_) {
  //       setState(() {
  //         _isLoading = false;
  //       });
  //     });
  //   }
  //   _isInit = false;
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    final _loadedData = Provider.of<Deals>(context);
    final _loadedDeals = _loadedData.deals;
    print("dea   $_loadedDeals");
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: veyronColorWhite),
        height: 565,
        child: _loadedDeals.length > 0
            ? Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 6),
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xFFff0000),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 6.0),
                              child: Text(
                                'HOT DEALS',
                                style: TextStyle(color: veyronColorWhite),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  DaelScreen.routeName,
                                );
                              },
                              icon: Icon(Icons.arrow_forward_ios_rounded),
                              color: veyronColorWhite,
                              iconSize: 15,
                              alignment: Alignment.center,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          DisplayCard(_loadedDeals[0]),
                          DisplayCard(_loadedDeals[1])
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      DisplayCard(_loadedDeals[2]),
                      DisplayCard(_loadedDeals[3])
                    ],
                  ),
                ],
              )
            : Center(
                child: CircularProgressIndicator(
                  color: veyronTheme,
                ),
              ),
      ),
    );
  }
}
