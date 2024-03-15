import 'package:flutter/material.dart';

import '../Constance/common_constance.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner(
      {super.key,
      required this.height,
      required this.imageUrl,
      this.bannerTag = false,
      this.tagTitle = ''});
  final double height;
  final String imageUrl;
  final String tagTitle;
  final bool bannerTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15),
      ),
      child: bannerTag
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    tagTitle,
                    style: const TextStyle(
                        color: CommonConstance.primaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            )
          : const SizedBox.shrink(),
    );
  }
}
