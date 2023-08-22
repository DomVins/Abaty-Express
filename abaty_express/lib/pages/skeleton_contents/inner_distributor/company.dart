import 'package:abaty_express/constants/colors.dart';
import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: 1,
              width: double.maxFinite,
              color: Colors.transparent,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: generalIconsColor,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Cocacola Company',
                          style: TextStyle(
                              color: generalTextColor,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/images/cocacola.png",
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: Text(
                      'Distributor Items',
                      style: TextStyle(
                          color: appColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
