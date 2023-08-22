import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/custom_widgets/custom_widgets.dart';
import 'package:abaty_express/models/models.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_home/inner_product/buy_now.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_home/inner_product/cart.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_home/inner_product/reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';

class Product extends StatefulWidget {
  final ProductModel product;
  const Product({super.key, required this.product});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(
          widget.product.name,
          style: TextStyle(color: generalTextColor),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios, color: generalIconsColor)),
        actions: [
          IconButton(
              onPressed: () {
                Get.to(ProductCart());
              },
              icon: Icon(Icons.shopping_cart_rounded, color: generalIconsColor))
        ],
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: layer1,
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.maxFinite,
                    child: Image.asset(
                      widget.product.imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 10),
                    child: Text(
                      '₦ ${widget.product.cost}',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: generalTextColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 10),
                    child: Text(
                      widget.product.shortDescription,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: generalTextColor),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 14, top: 4),
                          child: stars(widget.product.stars, appColor, 14)),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${widget.product.stars}.0   |   ${widget.product.orders} orders',
                        style: TextStyle(color: generalTextColor),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 0.4,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 2, bottom: 4),
                    child: Text(
                      'Item color:',
                      style: TextStyle(
                          color: generalTextColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      itemBuilder: (context, index) => index ==
                              selectedColorIndex
                          ? Container(
                              margin: const EdgeInsets.all(8),
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 3, 28, 173),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                widget.product.colors[index],
                                style: TextStyle(
                                    color: generalTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            )
                          : InkWell(
                              onTap: () {
                                setState(() {
                                  selectedColorIndex = index;
                                });
                              },
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: layer2,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Text(
                                  widget.product.colors[index],
                                  style: TextStyle(
                                      color: generalTextColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                      itemCount: widget.product.colors.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 0.4,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 2, bottom: 4),
                    child: Text(
                      'Item description:',
                      style: TextStyle(
                          color: generalTextColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14, top: 10),
                    child: Text(
                      widget.product.fullDescription,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: generalTextColor),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 0.4,
                    width: double.maxFinite,
                    color: Colors.grey,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8, top: 10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: labelColor,
                        borderRadius: BorderRadius.circular(6)),
                    child: Text(
                      'Similar Items',
                      style: TextStyle(
                          color: generalTextColor,
                          fontSize: 16,
                          letterSpacing: 0.3,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: StaggeredGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          children:
                              similarProducts(widget.product.similarItems)))
                ],
              ),
            ),
          ),
          Container(
            color: layer2,
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(child: Container()),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Get.to(const Reviews());
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.reviews_outlined,
                          color: generalIconsColor,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Reviews',
                          style: TextStyle(
                            color: generalTextColor,
                            fontSize: 14,
                          ),
                        ),
                      ],
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
                        Get.to(const BuyNow());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 25),
                        decoration: BoxDecoration(
                            color: blueBottonColor,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 25),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 255, 102, 0),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
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
      ),
    );
  }
}
