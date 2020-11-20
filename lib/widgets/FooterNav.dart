import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key key,
    @required this.img,
    @required this.title,
    @required this.press,
  }) : super(key: key);
  final String title, img;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Image.asset(
              img,
              height: 30,
              color: Color(0xff48AFC8),
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: Color(0xff48AFC8),

              ),
            )
          ],
        ),
      ),
    );
  }
}
