import 'package:flutter/material.dart';
import 'package:kodmyui/Screens/FeaturedScreen.dart';
import 'package:kodmyui/Screens/ProfileScreen.dart';
import 'package:kodmyui/widgets/FooterNav.dart';

class CustomBottonNavBar extends StatelessWidget {
  const CustomBottonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: SafeArea(
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                img: "assets/images/homes.png",
                title: "Home",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
              ),

              NavItem(
                img: "assets/images/prof.png",
                title: "Profile",
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
