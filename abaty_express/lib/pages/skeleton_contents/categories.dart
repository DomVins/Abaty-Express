import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/models/models.dart';
import 'package:flutter/material.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../../utils/utils.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCat = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SafeArea(
            child: searchBarCategories(),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [categorySelector(), categories()],
            ),
          ),
        ],
      ),
    );
  }

  Widget categories() {
    Widget right = Container();
    switch (selectedCat) {
      case 0:
        right = wholeCategories(homeItems);
        break;
      case 1:
        right = wholeCategories(phoneItems);
        break;
      case 2:
        right = wholeCategories(electronicsItems);
        break;
      case 3:
        right = wholeCategories(electronicsItems);
        break;
      case 4:
        right = wholeCategories(homeItems);
        break;
      case 5:
        right = wholeCategories(phoneItems);
        break;
      case 6:
        right = wholeCategories(electronicsItems);
        break;
      case 7:
        right = wholeCategories(electronicsItems);
        break;
      case 8:
        right = wholeCategories(electronicsItems);
        break;
      case 9:
        right = wholeCategories(electronicsItems);
        break;
      case 10:
        right = wholeCategories(homeItems);
        break;
      case 11:
        right = wholeCategories(phoneItems);
        break;
      default:
        break;
    }

    return right;
  }

  Widget categorySelector() {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(left: 6, right: 4, bottom: 6, top: 0),
      height: double.maxFinite,
      width: MediaQuery.of(context).size.width * .24,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: ci(categoriesList),
        ),
      ),
    );
  }

  Widget categoryBarItem(String text, bool selected, int index) {
    return InkWell(
      onTap: () {
        if (!selected) {
          setState(() {
            for (int i = 0; i < categoriesList.length; i++) {
              if (i != index) {
                categoriesList[i].isSelected = false;
              } else {
                categoriesList[i].isSelected = true;
                selectedCat = i;
              }
            }
          });
        }
      },
      child: Container(
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 6),
        decoration: BoxDecoration(
          color: selected
              ? const Color.fromARGB(226, 12, 9, 190)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Text(
          text,
          textAlign: selected ? TextAlign.center : TextAlign.start,
          maxLines: 3,
          textScaleFactor: 1,
          style: TextStyle(
              color: selected ? Colors.white : Colors.black,
              fontSize: 11,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  ci(List<Categ> list) {
    List<Widget> temp = [];
    for (int i = 0; i < list.length; i++) {
      temp.add(categoryBarItem(list[i].name, list[i].isSelected, i));
    }
    return temp;
  }
}

List<Categ> categoriesList = [
  Categ('Home', isSelected: true),
  Categ('Phones & Tablets'),
  Categ('Electronics'),
  Categ('Male wears'),
  Categ('Female Wear'),
  Categ('Cosmetics'),
  Categ('Books & References'),
  Categ('Plants & Crops'),
  Categ('Animals'),
  Categ('Home Appliances'),
  Categ('Jewelries'),
];

List<String> homeItems = [
  'Furniture',
  'Television',
  'Kitchen Utensils',
  'Food',
  'Plate',
  'Food',
  'Plate',
  'Chair',
  'House',
  'Food',
  'Plate',
  'Food',
  'Plate',
  'Chair',
  'House',
  'Food',
  'Plate',
];
List<String> phoneItems = [
  'Mobile Phones',
  'Tablets',
  'Button Phones',
  'Phone Batteries',
  'Laptops',
  'Laptop Parts',
  'Food',
  'Plate',
  'Chair',
  'House',
  'Food',
  'Plate',
  'Food',
  'Plate',
  'Chair',
  'House',
  'Food',
  'Plate',
];
List<String> electronicsItems = [
  'Refrigerators',
  'Ovens',
  'Stoves',
  'Burners',
  'Pressing Iron',
  'Laptop Parts',
  'Food',
  'Plate',
  'Chair',
  'House',
  'Food',
  'Plate',
  'Food',
  'Plate',
  'Chair',
  'House',
  'Food',
  'Plate',
];
