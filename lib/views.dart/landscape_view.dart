import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandscapeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        Container(
            margin: EdgeInsets.symmetric(
                horizontal: _width * 0.05, vertical: _width * 0.03),
            height: _width * 0.5,
            decoration: BoxDecoration(
                color: Color(0x000000),
                borderRadius: BorderRadius.circular(_width * 0.025)),
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: _width * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(_width * 0.02),
                          bottomLeft: Radius.circular(_width * 0.02),
                          ),color: Color(0x000000)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialLink(
                        text: 'FACEBOOK',
                      ),
                      SocialLink(
                        text: 'INSTAGRAM',
                      ),
                      SocialLink(
                        text: 'GITHUB',
                      ),
                      SocialLink(
                        text: 'LINKEDIN',
                      ),
                      SocialLink(
                        text: 'TWITTER',
                      ),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}

class SocialLink extends StatelessWidget {
  final String text;
  SocialLink({this.text});
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return RotatedBox(
      quarterTurns: -1,
      child: Padding(
          child: Text(text,
              style: GoogleFonts.montserrat(
                  color: Colors.green,
                  fontSize: _width * 0.008,
                  fontWeight: FontWeight.w700)),
          padding: EdgeInsets.symmetric(horizontal: _width * 0.01)),
    );
  }
}
