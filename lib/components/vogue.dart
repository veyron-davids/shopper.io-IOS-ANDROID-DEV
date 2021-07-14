import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopper/components/displayCardTwo.dart';
import 'package:shopper/constants.dart';
import 'package:shopper/providers/products.dart';
import 'package:shopper/providers/vogue.dart';

class VogueCard extends StatefulWidget {
  const VogueCard({Key? key}) : super(key: key);

  @override
  _VogueCardState createState() => _VogueCardState();
}

class _VogueCardState extends State<VogueCard> {
  @override
  // void initState() {
  //   Provider.of<Vogue>(context, listen: false).fetchVogue();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    final _vogueData = Provider.of<Vogues>(context);
    final _vogue = _vogueData.vogues;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'OUR VOGUE COLLECTIONS!',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: veyronColorWhite,
                  borderRadius: BorderRadius.circular(5)),
              child: _vogue.length > 0
                  ? GridView.builder(
                      itemCount: _vogue.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        childAspectRatio: 0.75,
                      ),
                      itemBuilder: (context, index) =>
                          DisplayCardTwo(vogue: _vogue[index]))
                  : Center(
                      child: CircularProgressIndicator(
                        color: veyronTheme,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
