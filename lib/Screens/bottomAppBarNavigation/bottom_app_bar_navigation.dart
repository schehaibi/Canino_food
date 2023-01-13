import 'package:canino_food/Screens/Home_Screen/home_screen.dart';
import 'package:canino_food/const/colors.dart';
import 'package:canino_food/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomAppBarNavigation extends StatefulWidget {
  const BottomAppBarNavigation({super.key});

  @override
  BottomAppBarNavigationState createState() => BottomAppBarNavigationState();
}

class BottomAppBarNavigationState extends State<BottomAppBarNavigation> {
  var _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(index: _currentIndex, children: _widgetOptions),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.only(bottom: 20),
          height: Helper.getScreenHeight(context) * .12,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: const Offset(0, -20),
              ),
            ],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Center(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listOfImagesPath.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                    HapticFeedback.lightImpact();
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: 35,
                          width: 35,
                          child: Image.asset(
                            Helper.getAssetName(
                                "Icons", listOfImagesPath[index]),
                            color: index == _currentIndex
                                ? AppColor.primary
                                : Colors.black26,
                          )),
                      Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == _currentIndex
                              ? AppColor.primary
                              : Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
  List<String> listOfImagesPath = [
    "Home.png",
    "TimeCircle.png",
    "Bag.png",
    "Profile.png",
  ];
}
