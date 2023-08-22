import 'package:abaty_express/constants/colors.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: SearchBarWidgetEditable(),
          )
        ],
      )),
    );
  }
}

class SearchBarWidgetEditable extends StatelessWidget {
  const SearchBarWidgetEditable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_rounded,
                color: generalIconsColor,
              ),
            )),
        Expanded(
            child: Container(
          height: 45,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: layer2, borderRadius: BorderRadius.circular(40)),
          child: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextFormField(
                  autofocus: true,
                  decoration: InputDecoration.collapsed(
                      hintText: 'Search products.',
                      hintStyle: TextStyle(color: generalTextColor)),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    child: Icon(
                      Icons.photo_camera_outlined,
                      color: generalIconsColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
        )),
        TextButton(
            onPressed: () {},
            child: Text(
              'Search',
              style: TextStyle(fontSize: 14, color: appColor),
            ))
      ],
    );
  }
}
