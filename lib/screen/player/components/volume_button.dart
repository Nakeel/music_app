import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/constants/colors.dart';

class VolumeButton extends StatelessWidget {
  final double btnRadius, childRadius;
  final bool daymode;
  final String actionText;
  final Function onPressed;

  const VolumeButton({Key key, this.btnRadius, this.childRadius, this.daymode, this.onPressed, this.actionText}) : super(key: key);
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
            themeColorLight.withOpacity(.1),
            Colors.black
          ]
          ),
          boxShadow: daymode ? [
            BoxShadow(
              offset: Offset(5,5),
              blurRadius: 10.0,
              color: Color(0xff090010).withOpacity(.6),
              spreadRadius: 3
            ),

            BoxShadow(
                offset: Offset(-5,-5),
                blurRadius: 10.0,
                color: Color(0xffb8b9bc),
                spreadRadius: 2
            ),
          ] : [
            BoxShadow(
                offset: Offset(5,5),
                blurRadius: 10.0,
                color: Colors.black.withOpacity(.7),
                spreadRadius: 3
            ),

            BoxShadow(
                offset: Offset(-5,-5),
                blurRadius: 10.0,
                color: themeColorDark.withOpacity(.2),
                spreadRadius: 2
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
                child: Text(
                  actionText,
                  style: GoogleFonts.nunitoSans(
                    color: themeColorLight.withOpacity(0.7),
                    fontSize: 19,
                    fontWeight: FontWeight.w900
                  ),
                )
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
