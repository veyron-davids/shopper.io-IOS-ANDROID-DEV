import 'package:flutter/material.dart';

class DisplayCard extends StatelessWidget {
  final deal;

  DisplayCard(this.deal);

  @override
  Widget build(BuildContext context) {
    var imgData = deal.images[0];
    final String img = 'http://192.168.28.177:3900/$imgData';
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Card(
          margin: EdgeInsets.only(right: 0, bottom: 10),
          child: Container(
            height: 250,
            width: size.width * 0.5,
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage('https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80')),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Column(
                    children: [
                      Text(deal.pname),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        deal.price,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
