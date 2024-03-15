import 'package:flutter/material.dart';
import 'package:ui_task/screens/trending_collection.dart';
import '../custom_Widgets/custom_productBanner.dart';

class ProductHomePage extends StatefulWidget {
  const ProductHomePage({super.key});

  @override
  State<ProductHomePage> createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              ProductBanner(
                height: 200,
                imageUrl: "assets/product_banner/product_banner1.png",
              ),
              SizedBox(
                height: 30,
              ),
              TrendingCollection(),
            ],
          ),
        ),
      ),
    );
  }
}
