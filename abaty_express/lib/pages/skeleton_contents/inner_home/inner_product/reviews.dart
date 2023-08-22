import 'package:abaty_express/constants/colors.dart';
import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Navigator.pop(context);
            },
            icon:   Icon(
              Icons.arrow_back_ios_new_rounded,
              color: generalIconsColor,
            )),
        title:   Text(
          'Reviews',
          style: TextStyle(
              color: generalTextColor,
              fontSize: 24,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.6),
        ),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Column(children: []),
    );
  }
}
