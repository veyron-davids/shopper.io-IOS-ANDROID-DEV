import 'package:flutter/material.dart';

class DisplayCardTwo extends StatelessWidget {
  const DisplayCardTwo({Key? key, required this.vogue}) : super(key: key);

  final vogue;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80"),
          ),
        ),
      ),
    );
  }
}
