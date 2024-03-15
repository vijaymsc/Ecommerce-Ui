import 'package:flutter/material.dart';

import '../Constance/common_constance.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key, required this.pageTitle});
  final String pageTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pageTitle,
                style: const TextStyle(
                    color: CommonConstance.secondaryColor,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
