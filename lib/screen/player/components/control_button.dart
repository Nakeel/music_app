import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/constants/colors.dart';

class ControlButton extends StatelessWidget {
  final double btnRadius, childRadius;
  final bool daymode;
  final IconData iconData;
  final Function onPressed;

  const ControlButton({Key key, this.btnRadius, this.childRadius, this.daymode, this.onPressed, this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: btnRadius,
        height: btnRadius,
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: new LinearGradient( colors:  daymode ? [
            Colors.white70,
            Colors.black12
          ]:[
            themeColorLight.withOpacity(.050),
            Colors.black
          ]
          ),
          boxShadow: daymode ? [
            BoxShadow(
              offset: Offset(8,8),
              blurRadius: 15.0,
              color: Color(0xff090010).withOpacity(.6),
              spreadRadius: 3
            ),

            BoxShadow(
                offset: Offset(-8,-8),
                blurRadius: 15.0,
                color: Color(0xffb8b9bc),
                spreadRadius: 2
            ),
          ] : [
            BoxShadow(
                offset: Offset(8,8),
                blurRadius: 15.0,
                color: Colors.black.withOpacity(.8),
                spreadRadius: 3
            ),

            BoxShadow(
                offset: Offset(-8,-8),
                blurRadius: 15.0,
                color: themeColorDark.withOpacity(.2),
                spreadRadius: 3
            ),
          ]
        ),
        child: Center(
          child: Container(
            height: childRadius,
            width: childRadius,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: buttonGradient,
            ),
            child: Center(
              // child: Padding(
              //   padding: EdgeInsets.all(11),
                child: Icon(
                  iconData,
                  color: themeColorLight.withOpacity(0.7),
                )
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
