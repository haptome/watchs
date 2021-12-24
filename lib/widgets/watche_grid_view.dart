import 'package:flutter/material.dart';
import 'package:watchs/model/watches.dart';

class WatcheGridView extends StatelessWidget {
  const WatcheGridView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width / 100;
    var _height = MediaQuery.of(context).size.height / 100;
    return GridView.builder(
        primary: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            mainAxisExtent: _height * 30,
            crossAxisSpacing: _width * 5,
            mainAxisSpacing: _width * 5),
        itemCount: watchesList.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (BuildContext context, index) {
          final watch = watchesList[index];
          return Container(
              width: _width * 25,
              decoration: BoxDecoration(
                color: watch.color,
                borderRadius: BorderRadius.circular(15),
                // image: DecorationImage(
                //     image: AssetImage(watch.image), fit: BoxFit.contain),
              ),
              child: Column(
                children: [
                  SizedBox(height: _height * 2),
                  AspectRatio(
                    aspectRatio: 1.0,
                    child: Image.asset(
                      watch.image,

                      height: _height * 20,
                      // width: _width * 25,
                    ),
                  ),
                  Text(watch.title,
                      style: TextStyle(
                          fontSize: _width * 4,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  Text(watch.price,
                      style: TextStyle(
                          fontSize: _width * 4,
                          fontWeight: FontWeight.w600,
                          color: Colors.brown)),
                ],
              ));
        });
  }
}
