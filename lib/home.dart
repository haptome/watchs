import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watchs/model/watches.dart';

import 'widgets/tabs.dart';
import 'widgets/watche_grid_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

bool trending = true;
bool popular = false;
bool recommended = false;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width / 100;
    var _height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Transform.rotate(
            angle: 33,
            child: const Icon(FeatherIcons.barChart2, color: Colors.black)),
        actions: [
          SvgPicture.asset(
            "assets/slider.svg",
            width: _width * 1.5,
            height: _height * 1.5,
            // color: Colors.red,
          ),
          SizedBox(width: _width * 4),
          SvgPicture.asset(
            "assets/bag.svg",
            width: _width * 2,
            height: _height * 2,
            // color: Colors.red,
          ),
          SizedBox(width: _width * 4),
        ],
      ),
      body: body(_width, _height),
    );
  }

  /// Widget for the [body] of the home page
  Widget body(double _width, double _height) {
    return Padding(
      padding: EdgeInsets.only(
          left: _width * 5, right: _width * 5, top: _height * 2),
      child: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Discover our exclusive \nwatches",
              style: TextStyle(
                  fontSize: _width * 7,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          SizedBox(height: _height * 6),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Tabs(
                  title: "Trending",
                  isActive: trending,
                  onTap: () {
                    setState(() {
                      trending = true;
                      popular = false;
                      recommended = false;
                    });
                  },
                ),
                Tabs(
                  title: "Popular",
                  isActive: popular,
                  onTap: () {
                    setState(() {
                      trending = false;
                      popular = true;
                      recommended = false;
                    });
                  },
                ),
                Tabs(
                  title: "We recommend",
                  isActive: recommended,
                  onTap: () {
                    setState(() {
                      trending = false;
                      popular = false;
                      recommended = true;
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: _height * 4),
          WatcheGridView()
        ]),
      ),
    );
  }
}
