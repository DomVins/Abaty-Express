import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_home/messages.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_profile/address.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_profile/login.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_profile/orders.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_profile/settings.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_profile/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Expanded(child: Container()),
                  InkWell(
                    onTap: (() => Get.to(const ProfileSettings())),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.settings,
                        color: generalIconsColor,
                        size: 26,
                      ),
                    ),
                  )
                ],
              ),
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
                      color: layer2, borderRadius: BorderRadius.circular(80)),
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 4,
                    ),
                    GestureDetector(
                      onTap: (() => Get.to(const ProfileLogin())),
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
                      height: 2,
                    ),
                    Row(children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: generalTextColor),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(const ProfileSignup());
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(color: appColor),
                          ))
                    ])
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            // Orders ...
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: layer2,
                borderRadius: BorderRadius.circular(15),
                // border: Border.all(color: borderColor, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Orders',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5,
                        color: generalTextColor),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      GestureDetector(
                        onTap: (() => Get.to(const ProfileOrders())),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.wallet,
                              size: 40,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Unpaid',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: generalTextColor),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (() => Get.to(const ProfileOrders())),
                        child: Column(
                          children: [
                            Icon(
                              Icons.delivery_dining_rounded,
                              size: 40,
                              color: appColor,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'In Progress',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: generalTextColor),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (() => Get.to(const ProfileOrders())),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.check_box,
                              size: 40,
                              color: Color.fromARGB(255, 255, 102, 0),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Delivered',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: generalTextColor),
                            )
                          ],
                        ),
                      ),
                      const SizedBox()
                    ],
                  )
                ],
              ),
            ),

            // Services ...
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: layer2,
                borderRadius: BorderRadius.circular(15),
                // border: Border.all(color: Colors.grey, width: 0.3),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Services',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: generalTextColor,
                        letterSpacing: 0.5),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      GestureDetector(
                        onTap: (() => Get.to(const DeliveryAdress())),
                        child: Column(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 40,
                              color: Color.fromARGB(255, 45, 8, 255),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Delivery\nAddress',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: generalTextColor),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(const Messages());
                        },
                        child: Column(
                          children: [
                            const Icon(
                              Icons.headset_mic,
                              size: 40,
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Customer\n     Care',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: generalTextColor),
                            )
                          ],
                        ),
                      ),
                      const SizedBox()
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
