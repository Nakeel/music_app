import 'package:flutter/material.dart';
import 'package:music_app/constants/colors.dart';

class Beats extends StatelessWidget {
  const Beats({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .05,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: beatsGradient,
              borderRadius: BorderRadius.circular(100.0)
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .08,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: beatsGradient,
              borderRadius: BorderRadius.circular(100.0)
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .1,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: beatsGradient,
              borderRadius: BorderRadius.circular(100.0)
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .05,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: beatsGradient,
              borderRadius: BorderRadius.circular(100.0)
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * .03,
          width: 5,
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: beatsGradient,
              borderRadius: BorderRadius.circular(100.0)
          ),
        ),
      ],
    );
  }
}

