import 'package:abaty_express/constants/colors.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

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
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Enter Your Card details",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: generalTextColor),
                ),
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
                        hintText: 'Card Number',
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
                        hintText: 'CVV',
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
                        hintText: 'Expiry Date',
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
                  width: MediaQuery.of(context).size.width * 0.5,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: blueBottonColor,
                  ),
                  child: Center(
                    child: Text(
                      "Make Payments",
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
                Text(
                  "Master Cards | Visa | Verve",
                  style: TextStyle(color: generalTextColor),
                ),
                /* TextButton(
                    onPressed: () {}, child: const Text('Sign up instead')) */
              ])
            ],
          )
        ]),
      ),
    );
  }
}
