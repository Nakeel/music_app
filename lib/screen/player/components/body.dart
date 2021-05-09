import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app/constants/colors.dart';
import 'package:music_app/screen/player/components/control_button.dart';
import 'package:music_app/screen/player/components/volume_button.dart';

import 'beats.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool day = true;
  bool isPlaying = false;

  void changeMode(){
    setState(() {
      day = !day;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My App',
          style: GoogleFonts.nunitoSans(
            fontSize: 19,
          ),
        ),
      ),
        body: Container(
          decoration: BoxDecoration(
            gradient: new LinearGradient(
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
              colors: day ?
                  [bgColorLightTop,bgColorLightBottom] :
              [bgColorDarkTop,bgColorDarkBottom]
            )
          ),
          child: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,

                          children: [
                            GestureDetector(
                              onTap: changeMode,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                height: 50,
                                width: 50,
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  day ? Icons.nights_stay_sharp : Icons.wb_sunny_outlined
                                ),
                              ),
                            ),
                            SizedBox(height: 30,)

                          ],
                        ),
                        SizedBox(height: 30,),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Column(
                              children: [
                                Text(
                                  'Design by Nakeeljr',
                                  style: GoogleFonts.nunito(
                                    fontSize: 14,
                                    color: day ? textColorLight : textColorDark
                                  ),
                                ),
                                Spacer(flex: 1,),
                                Text(
                                  'Intentions',
                                  style: GoogleFonts.nunito(
                                      fontSize: 30,
                                      color: day ? textColorLight : textColorDark,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text(
                                  'Justin Bieber',
                                  style: GoogleFonts.nunito(
                                      fontSize: 18,
                                      color: day ? textColorLight : textColorDark
                                  ),
                                ),
                              ],
                            ),

                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: height * 0.2,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: buttonGradient,
                      border: Border.all(
                        width: 5,
                        color: Color(0xff555555)
                      ),
                      boxShadow: day ? [
                        BoxShadow(
                          color: Color(0xff090010).withOpacity(.7),
                          offset: Offset(10,10),
                          blurRadius: 20.0,
                          spreadRadius: 4.0
                        ),
                      BoxShadow(
                          color: Colors.white.withOpacity(.5),
                          offset: Offset(-10,-10),
                          blurRadius: 20.0,
                          spreadRadius: 4.0
                      )] : [
                      BoxShadow(
                          color: Color(0xff090010).withOpacity(.7),
                          offset: Offset(10,10),
                          blurRadius: 20.0,
                          spreadRadius: 4.0
                      ),
                        BoxShadow(
                            color: themeColorLight.withOpacity(.5),
                            offset: Offset(-10,-10),
                            blurRadius: 20.0,
                            spreadRadius: 4.0
                        )
                      ]

                    ),
                    child: Center(
                      child: Beats(),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '3:42',
                              style: GoogleFonts.montserrat(
                                color: day ? textColorLight : textColorDark,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                                  Container(
                                      width: width * .45,
                                      height: 7,
                                      margin: EdgeInsets.symmetric(horizontal: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: new LinearGradient(
                                        colors: [
                                          Color(0xff474747),
                                          Color(0xff414141)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter
                                      )
                                    ),
                                      child: FAProgressBar(
                                        currentValue: 80,
                                        backgroundColor: Colors.transparent,
                                        progressColor: themeColorLight.withOpacity(0.8),
                                      )
                                  ),
                            Text(
                              '1:02',
                              style: GoogleFonts.montserrat(
                                color: day ? textColorLight : textColorDark,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),

                          ],
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            VolumeButton(
                              btnRadius: height * .04,
                              childRadius: height * .034,
                              actionText: '-',
                              daymode: day,
                              onPressed: (){},
                            ),
                            Container(
                              height: height * .06,
                              width: height * .06,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: new LinearGradient(
                                  colors: [
                                    Colors.black,
                                    themeColorDark

                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight
                                )
                              ),
                              child: Center(
                                child: Container(
                                  height: height * .052,
                                  width: height * .052,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: new LinearGradient(
                                          colors: [
                                            Color(0xff2f2934),
                                            Color(0xff483a51),
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight
                                      )
                                  ),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: GoogleFonts.nunitoSans(
                                        fontSize: 23,
                                        color: themeColorLight
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            VolumeButton(
                              btnRadius: height * .04,
                              childRadius: height * .034,
                              actionText: '+',
                              daymode: day,
                              onPressed: (){},
                            ),


                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'Repeat',
                            style: GoogleFonts.nunitoSans(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: day ? textColorLight : textColorDark
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ControlButton(
                        iconData: Icons.skip_previous_sharp,
                        btnRadius: height * .07,
                        childRadius: height * .062,
                        daymode: day,
                        onPressed: (){},

                      ),
                      ControlButton(
                        iconData: isPlaying ? Icons.pause : Icons.play_arrow_sharp,
                        btnRadius: height * .1,
                        childRadius: height * .094,
                        daymode: day,
                        onPressed: (){
                          setState(() {
                            isPlaying = !isPlaying;
                          });
                        },

                      ),
                      ControlButton(
                        iconData: Icons.skip_next,
                        btnRadius: height * .07,
                        childRadius: height * .062,
                        daymode: day,
                        onPressed: (){},

                      ),
                    ],
                  ),
                  SizedBox(height: height * .025,)
                ],

              ),
            ),
          ),
        )
    );
  }
}

