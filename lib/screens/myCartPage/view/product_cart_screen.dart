import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Constance/common_constance.dart';
import '../view_model/cartProduct_viewModel.dart';

class ProductCartPage extends StatefulWidget {
  const ProductCartPage({super.key});

  @override
  State<ProductCartPage> createState() => _ProductCartPageState();
}

class _ProductCartPageState extends State<ProductCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: CommonConstance.secondaryColor,
            )),
        title: const Text(
          "Shopping Cart",
          style: TextStyle(
              color: CommonConstance.secondaryColor,
              fontWeight: FontWeight.w600),
        ),
        actions: const [
          Image(
              height: 30,
              width: 30,
              image: AssetImage("assets/add-cart.png"),
              color: CommonConstance.secondaryColor),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Consumer<ProductCardDetails>(builder: (context, state, child) {
        return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 15),
            itemCount: CommonConstance.cartProduct.length,
            itemBuilder: (context, index) {
              final item = CommonConstance.cartProduct[index];
              return Column(
                children: [
                  Dismissible(
                    key: Key(item.productImage!),
                    background: Container(
                        color: Colors.red.shade100,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20.0),
                        child: const ImageIcon(
                          AssetImage('assets/trash.png'),
                          color: Colors.white,
                        )),
                    onDismissed: (direction) {
                      setState(() {
                        CommonConstance.cartProduct.removeAt(index);
                      });
                    },
                    child: Card(
                      shadowColor: Colors.grey.withOpacity(0.2),
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        color: Colors.white,
                        height: 120,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(CommonConstance
                                            .cartProduct[index].productImage!),
                                        fit: BoxFit.fill)),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      CommonConstance.cartProduct[index].productName!,
                                      style: const TextStyle(
                                          color: CommonConstance.secondaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Size : ${CommonConstance.cartProduct[index].productSize!}',
                                      style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: CommonConstance.subTitle),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '\u{20B9} ${CommonConstance.cartProduct[index].totalPrice!.toString()}',
                                          style: const TextStyle(
                                              color: CommonConstance
                                                  .secondaryColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Container(
                                          height: 40,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey.shade300,
                                                  width: 0.8),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  state.addProductQuantity(
                                                      index);
                                                },
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 8,
                                                  ),
                                                  child: Text(
                                                    '+',
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: CommonConstance
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                CommonConstance.cartProduct[index]
                                                    .productQuantity!
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontSize: 18,
                                                  color: CommonConstance
                                                      .secondaryColor,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  state.subProductQuantity(
                                                      index);
                                                },
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 8),
                                                  child: Text(
                                                    '-',
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: CommonConstance
                                                            .primaryColor,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              );
            });
      }),
    );
  }
}
