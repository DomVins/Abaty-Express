import 'package:abaty_express/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../local_data/data.dart';
import '../../utils/utils.dart';
import 'inner_distributor/d_profile.dart';
import 'inner_distributor/login.dart';
import 'inner_distributor/register_company.dart';
import 'inner_distributor/signup.dart';

class Distributor extends StatefulWidget {
  const Distributor({super.key});

  @override
  State<Distributor> createState() => _DistributorState();
}

class _DistributorState extends State<Distributor> {
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
                      Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Distributors Dashboard',
                          style: TextStyle(
                              color: generalTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      )
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
                            color: layer2,
                            borderRadius: BorderRadius.circular(80)),
                        child: const Center(
                            child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.white,
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
                            GestureDetector(
                              onTap: (() => Get.to(const DistributorLogin())),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 25),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(80)),
                                child: Text(
                                  'Log in',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: generalTextColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Don't have a distributor's account? ",
                                    style: TextStyle(color: generalTextColor),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        Get.to(const DistributorSignUp());
                                      },
                                      child: Text(
                                        'Sign Up',
                                        style: TextStyle(color: appColor),
                                      ))
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (() {
                        Get.to(const DistributorProfile());
                      }),
                      child: Container(
                        decoration: BoxDecoration(
                            color: layer2,
                            // border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(16)),
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 20),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            Text("Distributor's Profile",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: generalTextColor,
                                    letterSpacing: 0.2)),
                            Expanded(child: Container()),
                            Icon(
                              Icons.arrow_forward_rounded,
                              color: appColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: Text(
                      'Companies',
                      style: TextStyle(
                          color: appColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  companiesList(companies),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, bottom: 8),
                    child: TextButton(
                      onPressed: () {
                        Get.to(const ResgisterCompany());
                      },
                      child: Text(
                        'Register your company',
                        style: TextStyle(
                            color: appColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
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
