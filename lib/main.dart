import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:ui_task/screens/home_page.dart';
import 'package:ui_task/screens/myCartPage/view_model/cartProduct_viewModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return ChangeNotifierProvider(
      create: (context) => ProductCardDetails(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Ecommerce Ui',
          home: HomePage()),
    );
  }
}
