import 'package:flutter/material.dart';

/// *[Tabs] are used to show the tabs in the home page
/// *required props:[title] which is the title of the tab
/// *required props:[isActive] which is the active tab
/// *required props:[onTap] which is the function to be called when the tab is tapped
class Tabs extends StatelessWidget {
  const Tabs({
    Key? key,
    required this.title,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);
  final String title;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width / 100;
    var _height = MediaQuery.of(context).size.height / 100;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: _width * 5),
        height: _height * 4,
        decoration: BoxDecoration(
            color: isActive ? Colors.brown : Colors.transparent,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(title,
                style: TextStyle(
                    fontSize: _width * 4,
                    fontWeight: FontWeight.w600,
                    color: isActive ? Colors.white : Colors.black))),
      ),
    );
  }
}
