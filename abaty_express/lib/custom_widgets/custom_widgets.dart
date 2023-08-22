import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_distributor/company.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_home/messages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/models.dart';
import '../pages/skeleton_contents/inner_home/category.dart';
import '../pages/skeleton_contents/inner_home/product.dart';
import '../pages/skeleton_contents/inner_home/search.dart';

Widget searchBar() {
  return Container(
    padding: const EdgeInsets.only(left: 14, top: 6, bottom: 6, right: 6),
    child: Row(children: [
      Expanded(
        child: Container(
          height: 45,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                    color: appColor.withAlpha(70),
                    spreadRadius: 0.8,
                    blurRadius: 0.8)
              ],
              borderRadius: BorderRadius.circular(40)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              onTap: () {
                Get.to(() => const Search(),
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 500));
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      child: Icon(
                        Icons.photo_camera_outlined,
                        color: generalIconsColor,
                      ),
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                        color: generalIconsColor,
                        fontSize: 17,
                        height: 0.95,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search items',
                    style: TextStyle(
                        color: generalTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.search_rounded,
                      color: generalIconsColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      IconButton(
          onPressed: () {
            Get.to(const Messages());
          },
          icon: Icon(
            Icons.chat_rounded,
            color: generalIconsColor,
            size: 26,
          ))
    ]),
  );
}

Widget searchBarWholesale() {
  return Container(
    padding: const EdgeInsets.only(left: 14, top: 10, bottom: 10, right: 14),
    child: Row(children: [
      Expanded(
        child: Container(
          height: 45,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                    color: appColor.withAlpha(70),
                    spreadRadius: 0.8,
                    blurRadius: 0.8)
              ],
              borderRadius: BorderRadius.circular(40)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              onTap: () {
                Get.to(() => const Search(),
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 500));
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Search Wholesale items ...',
                    style: TextStyle(
                        color: generalTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search_rounded,
                      color: generalIconsColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      /*  const SizedBox(
        width: 8,
      ),
      IconButton(
          onPressed: () {
            Get.to(const Messages());
          },
          icon: const Icon(
            Icons.chat_bubble_outline,
            color: Colors.black,
            size: 26,
          )) */
    ]),
  );
}

Widget searchBarCategories() {
  return Container(
    padding: const EdgeInsets.only(left: 14, top: 10, bottom: 10, right: 14),
    child: Row(children: [
      Expanded(
        child: Container(
          height: 45,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                    color: appColor.withAlpha(70),
                    spreadRadius: 0.8,
                    blurRadius: 0.8)
              ],
              borderRadius: BorderRadius.circular(40)),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
              onTap: () {
                Get.to(() => const Search(),
                    transition: Transition.fade,
                    duration: const Duration(milliseconds: 500));
              },
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Search Categories ...',
                    style: TextStyle(
                        color: generalTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.4),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.search_rounded,
                      color: generalIconsColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      /*  const SizedBox(
        width: 8,
      ),
      IconButton(
          onPressed: () {
            Get.to(const Messages());
          },
          icon: const Icon(
            Icons.chat_bubble_outline,
            color: Colors.black,
            size: 26,
          )) */
    ]),
  );
}

Widget categoryItem(CategoryModel catItem) {
  return Container(
    decoration:
        BoxDecoration(color: layer1, borderRadius: BorderRadius.circular(6)),
    margin: const EdgeInsets.only(bottom: 15, right: 15),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        onTap: () {
          Get.to(() => Category(category: catItem),
              transition: Transition.upToDown);
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Stack(children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 226, 226, 226),
                        borderRadius: BorderRadius.circular(6))),
                Image.asset(
                  catItem.imageUrl,
                  height: 50,
                  width: 50,
                  fit: BoxFit.fitHeight,
                ),
              ]),
            ),
            const SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  catItem.cat,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: generalTextColor),
                ),
                Text(
                  catItem.subCat,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: generalTextColor),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}

Widget product(ProductModel product) {
  return Container(
    decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 233, 233, 233),
        borderRadius: BorderRadius.circular(12)),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: (() {
          Get.to(
            () => Product(product: product),
            transition: Transition.rightToLeftWithFade,
          );
        }),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Text(
                '₦${product.cost}',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: generalTextColor),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Row(
                children: [
                  Text(
                    '${product.orders} sold',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: generalTextColor),
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 219, 16, 2),
                        borderRadius: BorderRadius.circular(6)),
                    child: const Text(
                      'Free Delivery',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: generalTextColor),
                    ),
                  ),
                  /*   const Icon(
                    Icons.more_vert_rounded,
                    size: 18,
                  ), */
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget sliderProduct(ProductModel product) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor, width: 0.8),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Color.fromARGB(255, 150, 150, 150), blurRadius: 1.5)
        ]),
    child: GestureDetector(
      onTap: () {
        Get.to(Product(product: product));
      },
      child: Column(children: [
        Expanded(
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.contain,
                width: double.maxFinite,
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 90,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              color: backgroundColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name.toString(),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      color: generalTextColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cost: ₦${product.cost}',
                      style: TextStyle(
                          fontSize: 14,
                          color: generalTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Orders: ${product.orders}",
                      maxLines: 1,
                      style: TextStyle(color: generalTextColor, fontSize: 12),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.redAccent,
                          size: 24,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Makurdi",
                          maxLines: 1,
                          style:
                              TextStyle(color: generalTextColor, fontSize: 12),
                        )
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 14, top: 4),
                        child: stars(product.stars, appColor, 20)),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    ),
  );
}

Widget similarProduct(ProductModel product) {
  return Container(
    decoration: BoxDecoration(
        // color: const Color.fromARGB(255, 233, 233, 233),
        borderRadius: BorderRadius.circular(10)),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        onTap: (() {
          Get.to(
            () => Product(product: product),
            transition: Transition.rightToLeftWithFade,
          );
        }),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                product.imagePath,
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Text(
                '₦${product.cost}',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Text(
                '${product.orders} sold',
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3, bottom: 4),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      product.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Icon(
                    Icons.more_vert_rounded,
                    size: 18,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget subProductCategory(SubProductCategoryModel productSubCat) {
  return Container(
    width: 90,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    decoration:
        BoxDecoration(color: layer2, borderRadius: BorderRadius.circular(12)),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: (() {
          Get.to(() => const Search(),
              transition: Transition.fade,
              duration: const Duration(milliseconds: 500));
        }),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                productSubCat.imageUrl,
                height: 60,
                width: 60,
              ),
            ),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    productSubCat.subCat,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: false,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: generalTextColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget stars(int num, Color color, double size) {
  List<Widget> starsW = [];

  for (int i = 0; i < 5; i++) {
    if (i < num) {
      starsW.add(Icon(
        Icons.star,
        size: size,
        color: color,
      ));
    } else {
      starsW.add(
        Icon(
          Icons.star_border,
          size: size,
        ),
      );
    }
  }
  return Row(
    children: starsW,
  );
}

Widget distributorCompanyItem(CompanyModel company) {
  return Container(
    height: 260,
    width: double.maxFinite,
    decoration: BoxDecoration(
        // border: Border.all(color: Colors.grey)
        color: layer2,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 2.5)]),
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    child: InkWell(
      onTap: () => Get.to(const CompanyPage()),
      child: Column(children: [
        Expanded(
          child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              child: Image.asset(company.imagePath,
                  width: double.maxFinite, fit: BoxFit.cover)),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              padding: const EdgeInsets.all(10),
              height: 90,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: layer1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    company.name.toString(),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        color: generalTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Adress: ${company.adress}',
                        style: TextStyle(
                            fontSize: 14,
                            color: generalTextColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Items: ${company.items}",
                        maxLines: 1,
                        style: TextStyle(color: generalTextColor, fontSize: 13),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                            size: 25,
                          ),
                          const SizedBox(width: 5),
                          Text(
                            "Makurdi",
                            maxLines: 1,
                            style: TextStyle(
                                color: generalTextColor, fontSize: 12),
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 14, top: 4),
                          child: stars(company.stars, appColor, 20)),
                    ],
                  )
                ],
              )),
        ),
      ]),
    ),
  );
}

Widget cartItem(
    CartItemModel item, double screenWidth, ValueNotifier<double> notifier) {
  return InkWell(
    onTap: () {
      item.ticked ? item.ticked = false : item.ticked = true;
      notifier.value += 0.01;
    },
    child: Container(
      height: 150,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.only(
        left: 12,
      ),
      decoration:
          BoxDecoration(color: layer2, borderRadius: BorderRadius.circular(20)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Check circle ...
          Material(
            color: Colors.transparent,
            child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                child: item.ticked
                    ? Center(
                        child: Icon(
                        Icons.circle,
                        size: 13,
                        color: checkColor,
                      ))
                    : Container()),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 10),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  item.imageUrl,
                )),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: generalTextColor),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 14),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    item.color,
                    style: TextStyle(
                        color: checkColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '₦${item.cost}',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: generalTextColor,
                      letterSpacing: 0.6),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        item.quantity > 1 ? item.quantity-- : {};
                        notifier.value += 0.01;
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.remove,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '${item.quantity}',
                        style: TextStyle(fontSize: 16, color: generalTextColor),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        item.quantity++;
                        notifier.value += 0.01;
                      },
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(20)),
                        child: const Icon(
                          Icons.add,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.clear_rounded,
                      color: generalIconsColor,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
