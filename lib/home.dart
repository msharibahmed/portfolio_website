import 'package:flutter/material.dart';

import 'views.dart/landscape_view.dart';
import 'views.dart/portrait_view.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0x00000),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth >= 800) {
            return LandscapeView();
          } else {
            // return PortraitView();
            return Container(
              color: Colors.amber,
            );
          }
        }));
  }
}
