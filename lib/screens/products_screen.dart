import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:shopper/components/carousel.dart';
import 'package:shopper/components/categories.dart';
import 'package:shopper/components/deals.dart';
import 'package:shopper/components/vogue.dart';
import 'package:shopper/providers/deals.dart';
import 'package:shopper/providers/vogue.dart';

import '../constants.dart';
import '../providers/products.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  static const routeName = '/products';

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var _isLoading = false;

  Future<void> _refreshProducts(BuildContext context) async {
    await Provider.of<Vogues>(context, listen: false).fetchVogue();
    // await Provider.of<Products>(context, listen: false).fetchProducts();
    // await Provider.of<Deals>(context, listen: false).fetchDeals();
    // await Provider.of<Vogues>(context, listen: false).fetchVogue();
  }

  @override
  void initState() {
    super.initState();
    Provider.of<Products>(context, listen: false).fetchProducts();
    Provider.of<Deals>(context, listen: false).fetchDeals();
    Provider.of<Vogues>(context, listen: false).fetchVogue();
  }

  @override
  Widget build(BuildContext context) {
    final _productsData = Provider.of<Products>(context);
    final _products = _productsData.items;
    print("prod   $_products");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: veyronColorBlack,
        elevation: 0,
        title: const Text(
          'Shopper.io',
          style: TextStyle(
              color: veyronColorWhite,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.italic),
        ),
        actions: <Widget>[
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
      body: _products.length < 0
          ? Center(
              child: CircularProgressIndicator(
                color: veyronTheme,
              ),
            )
          : RefreshIndicator(
              onRefresh: () => _refreshProducts(context),
              child: SingleChildScrollView(
                child: Column(
                  children: [CSlider(), Categories(), DealsCard(), VogueCard()],
                ),
              ),
            ),
    );
  }
}
