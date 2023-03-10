import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Place/UI/widgets/card_image_list.dart';
import 'package:platzi_trips_app/Widgets/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [GradientBack(height: 360.0), CardImageList()],
    );
  }
}
