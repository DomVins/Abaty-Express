import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_distributor/inner_d_profile/profile_settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistributorProfile extends StatelessWidget {
  const DistributorProfile({super.key});

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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: generalIconsColor,
                            )),
                      ),
                      Expanded(child: Container()),
                      IconButton(
                          onPressed: () {
                            Get.to(const DProfileSettings());
                          },
                          icon: Icon(
                            Icons.settings,
                            color: generalIconsColor,
                          )),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: layer1,
                            borderRadius: BorderRadius.circular(80)),
                        child: Center(
                            child: Icon(
                          Icons.person,
                          size: 50,
                          color: generalIconsColor,
                        )),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Simon Abel',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: generalTextColor),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text("From Benue State",
                                style: TextStyle(color: generalTextColor)),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              'Distributor items: 20 | Delivered: 5',
                              style: TextStyle(
                                  fontSize: 14, color: generalTextColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: Text(
                      'Items',
                      style: TextStyle(
                          color: appColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: Text(
                      'Overall Progress',
                      style: TextStyle(
                          color: appColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: Text(
                      "KPIs",
                      style: TextStyle(
                          color: appColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: Text(
                      'Outstandings',
                      style: TextStyle(
                          color: appColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: Text(
                      'Distributions History',
                      style: TextStyle(
                          color: appColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
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
