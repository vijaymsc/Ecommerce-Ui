import 'package:flutter/material.dart';

import '../Constance/common_constance.dart';
import '../custom_Widgets/custom_productBanner.dart';

class TrendingCollection extends StatefulWidget {
  const TrendingCollection({super.key});

  @override
  State<TrendingCollection> createState() => _TrendingCollectionState();
}

class _TrendingCollectionState extends State<TrendingCollection> {
  bool isWomanShow = false;
  bool isMenShow = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Trending Collection For You",
              style: TextStyle(
                  color: CommonConstance.secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "View all",
              style: TextStyle(
                  color: CommonConstance.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Stack(
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      isWomanShow = !isWomanShow;
                      if (isWomanShow) {
                        isMenShow = false;
                      }
                      setState(() {});
                    },
                    child: Opacity(
                      opacity: isWomanShow ? 1 : 0.1,
                      child: const ProductBanner(
                          height: 200,
                          bannerTag: true,
                          tagTitle: "Women",
                          imageUrl:
                              'assets/product_banner/product_banner2.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      isMenShow = !isMenShow;
                      if (isMenShow) {
                        isWomanShow = false;
                      }
                      setState(() {});
                    },
                    child: Opacity(
                      opacity: isMenShow ? 1 : 0.1,
                      child: const ProductBanner(
                          height: 200,
                          bannerTag: true,
                          tagTitle: "Men",
                          imageUrl:
                              'assets/product_banner/product_banner3.png'),
                    ),
                  ),
                ],
              ),
              (!isWomanShow && !isMenShow)
                  ? Positioned(
                      left: 80,
                      top: 15,
                      bottom: 10,
                      right: 10,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 1,
                        width: MediaQuery.of(context).size.width * 1,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:
                                      2, // number of items in each row
                                  mainAxisSpacing: 6.0, // spacing between rows
                                  crossAxisSpacing: 6.0,
                                  childAspectRatio: 1.1
                                  // mainAxisExtent: 130, // spacing between columns
                                  ),
                          itemCount: CommonConstance.cloths.length,
                          itemBuilder: (context, index) {
                            return Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          CommonConstance.cloths[index]),
                                      fit: BoxFit.fill),
                                  color: Colors.grey),
                            );
                          },
                        ),
                      ))
                  : const SizedBox.shrink()
            ],
          ),
        )
      ],
    );
  }
}
