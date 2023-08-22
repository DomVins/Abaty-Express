import 'package:abaty_express/constants/colors.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
import '../custom_widgets/custom_widgets.dart';

List<Widget> products(List<ProductModel> productsList) {
  List<Widget> p = [];
  for (var c in productsList) {
    p.add(product(c));
  }
  return p;
}

List<Widget> similarProducts(List<ProductModel> productsList) {
  List<Widget> p = [];
  for (var c in productsList) {
    p.add(similarProduct(c));
  }
  return p;
}

Widget categorySet(List<CategoryModel> chunk) {
  List<Widget> p = [];
  for (var c in chunk) {
    p.add(categoryItem(c));
  }
  return Column(
    children: p,
  );
}

List<Widget> catSets(List list) {
  List<Widget> p = [];
  List chunks = [];
  const int chunkSize = 4;
  int len = list.length;

  for (var i = 0; i < len; i += 4) {
    int size = i + chunkSize;
    chunks.add(list.sublist(i, size > len ? len : size));
  }

  for (var c in chunks) {
    p.add(categorySet(c));
  }
  return p;
}

List<Widget> subProductCats(List<SubProductCategoryModel> subProductsList) {
  List<Widget> p = [];
  for (var c in subProductsList) {
    p.add(subProductCategory(c));
  }
  return p;
}

companiesList(List<CompanyModel> companies) {
  List<Widget> temp = [];
  for (int i = 0; i < companies.length; i++) {
    temp.add(distributorCompanyItem(companies[i]));
  }
  return Column(
    children: temp,
  );
}

// Categories ...
Widget wholeCategories(List<String> c) {
  List<Widget> column = [];

  List chunks = [];
  const int chunkSize = 2;
  int len = c.length;

  for (var i = 0; i < len; i += chunkSize) {
    int size = i + chunkSize;
    chunks.add(c.sublist(i, size > len ? len : size));
  }

  for (var chunk in chunks) {
    List<Widget> row = [];
    for (var c in chunk) {
      row.add(categoryItemSidebar(c, ''));
    }
    column.add(Row(
      children: row,
    ));
  }

  return Expanded(
    child: SingleChildScrollView(
      child: Column(
        children: column,
      ),
    ),
  );
}

Widget categoryItemSidebar(String name, String imageUrl) {
  return Container(
    margin: const EdgeInsets.only(right: 10, left: 10, bottom: 6, top: 1),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onTap: (() {}),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: generalTextColor),
            ),
          ],
        ),
      ),
    ),
  );
}

