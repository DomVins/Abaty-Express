import 'package:abaty_express/constants/colors.dart';
import 'package:abaty_express/pages/skeleton_contents/inner_distributor/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DistributorSignUp extends StatelessWidget {
  const DistributorSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(children: [
          SafeArea(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.clear_rounded,
                        color: generalIconsColor,
                        size: 25,
                      )),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Distributor's  Signup",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: generalTextColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.75,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: layer2,
                ),
                child: Center(
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Full name',
                        hintStyle: TextStyle(color: generalTextColor)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.75,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: layer2,
                ),
                child: Center(
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Email adress',
                        hintStyle: TextStyle(color: generalTextColor)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.75,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: layer2,
                ),
                child: Center(
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Phone number',
                        hintStyle: TextStyle(color: generalTextColor)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width * 0.75,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: layer2,
                ),
                child: Center(
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Password',
                        hintStyle: TextStyle(color: generalTextColor)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.3,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: blueBottonColor,
                  ),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: generalTextColor),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("Already have an account? ",
                    style: TextStyle(color: generalTextColor)),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Get.to(const DistributorLogin());
                    },
                    child: Text('Login', style: TextStyle(color: appColor)))
              ])
            ],
          )
        ]),
      ),
    );
  }
}
