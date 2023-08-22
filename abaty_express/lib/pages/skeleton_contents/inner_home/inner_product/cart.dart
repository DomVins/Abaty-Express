// ignore_for_file: must_be_immutable

import 'package:abaty_express/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widgets/custom_widgets.dart';
import '../../../../local_data/data.dart';
import '../../inner_cart/checkout.dart';

class ProductCart extends StatelessWidget {
  ProductCart({super.key});

  ValueNotifier<double> notifier = ValueNotifier(0.0);
  bool all = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded,
                color: generalIconsColor)),
        title: Text(
          'Cart',
          style: TextStyle(
              color: generalTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.6),
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
                color: layer1,
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
                                width: 16,
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
