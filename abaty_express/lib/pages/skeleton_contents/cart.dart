import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/local_data/data.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_cart/checkout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../custom_widgets/custom_widgets.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final ValueNotifier<double> notifier = ValueNotifier(0.0);
  bool all = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          'Cart Items',
          style: TextStyle(
              color: generalTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.4),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: ValueListenableBuilder<double>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => cartItem(cartItems[index],
                      MediaQuery.of(context).size.width, notifier),
                  itemCount: cartItems.length,
                ),
              ),
              // Check out bar ...
              Container(
                decoration: BoxDecoration(
                    color: layer1, borderRadius: BorderRadius.circular(14)),
                width: double.maxFinite,
                child: Row(
                  children: [
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          if (all) {
                            for (var i in cartItems) {
                              i.ticked = false;
                            }
                            all = false;
                          } else {
                            for (var i in cartItems) {
                              i.ticked = true;
                            }
                            all = true;
                          }
                          notifier.value += 0.01;
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Material(
                                color: Colors.transparent,
                                child: CircleAvatar(
                                    radius: 10,
                                    backgroundColor: Colors.white,
                                    child: all
                                        ? Center(
                                            child: Icon(
                                            Icons.circle,
                                            size: 13,
                                            color: checkColor,
                                          ))
                                        : Container()),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                'All',
                                style: TextStyle(
                                    color: generalTextColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          onTap: () {
                            Get.to(const CheckOut());
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 25),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 102, 0),
                                borderRadius: BorderRadius.circular(40)),
                            child: const Text(
                              'Check Out',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.5),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                ),
              )
            ],
          );
        },
        valueListenable: notifier,
      ),
    );
  }
}
