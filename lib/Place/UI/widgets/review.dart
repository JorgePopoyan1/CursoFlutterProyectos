import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  final String pathImage;

  ///= "assets/img/turista.png";
  final String name;

  /// = "Pedro Yaaxa";
  final String details;

  /// = "1 review 5 photos";
  final String comment;

  /// = "Es un lugar bastante bonito, para ir a desconectarse del mundo y perder toda la señal de la ciudad";

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(top: 24.0, right: 5.0),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(top: 24.0, right: 5.0),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final stars = Container(
      margin: EdgeInsets.only(top: 24.0, right: 5.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 15.0, fontWeight: FontWeight.w900),
      ),
    );
    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato", fontSize: 15.0, color: Color(0xFF112233)),
      ),
    );

    final userName = Container(
        margin: EdgeInsets.only(left: 20.0),
        child: Row(
          children: [
            Text(
              name,
              textAlign: TextAlign.left,
              style: TextStyle(fontFamily: "Lato", fontSize: 20.0),
            ),
            stars,
            stars,
            stars,
            star_half,
            star_border
          ],
        ));

    final userDetalles = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );
    final photo = Container(
        margin: const EdgeInsets.only(top: 30.0, left: 20.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(pathImage))));

    return Row(children: <Widget>[photo, userDetalles]);
  }
}
