import 'package:abaty_express/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../local_data/data.dart';
import '../../custom_widgets/custom_widgets.dart';
import '../../utils/utils.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(viewportFraction: 0.85);

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SafeArea(
            child: searchBar(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 10),
                    child: Text(
                      'Top Selections',
                      style: TextStyle(
                          color: generalTextColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.7,
                      autoPlay: true,
                      // aspectRatio: 2.0,
                      height: 300,
                      enlargeCenterPage: true,
                    ),
                    items: productsList.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return sliderProduct(item);
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 10),
                    child: Text(
                      'Products',
                      style: TextStyle(
                          color: generalTextColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: StaggeredGrid.count(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          children: products(productsList)))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
