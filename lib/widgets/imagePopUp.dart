import 'package:estonian_history/constants.dart';
import 'package:estonian_history/widgets/HeroPhotoViewWrapper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ImagePupUp extends StatelessWidget {
  final String image;
  final String tag;
  final String imageDescription;
  ImagePupUp(this.image, this.tag, this.imageDescription, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HeroPhotoViewWrapper(
              tagName: tag,
              imageProvider: AssetImage(image),
            ),
          ),
        );
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: tag,
              child: Image.asset(image),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                imageDescription,
                style: GoogleFonts.gabriela(
                    fontSize: 15,
                    color: kText2Color,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
