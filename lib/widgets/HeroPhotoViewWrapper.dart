import 'package:estonian_history/constants.dart';
import 'package:estonian_history/widgets/backButton.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class HeroPhotoViewWrapper extends StatelessWidget {
  HeroPhotoViewWrapper(
      {this.imageProvider,
      this.loadingBuilder,
      this.backgroundDecoration,
      this.minScale,
      this.maxScale,
      this.tagName,
      this.name});

  final ImageProvider imageProvider;
  final LoadingBuilder loadingBuilder;
  final Decoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final String tagName;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          children: <Widget>[
            PhotoView(
              backgroundDecoration: BoxDecoration(color: Colors.transparent),
              imageProvider: imageProvider,
              loadingBuilder: loadingBuilder,
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.covered * 2,
              heroAttributes: PhotoViewHeroAttributes(tag: tagName),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 0.0,
              child: Container(
                alignment: Alignment.bottomLeft,
                decoration:
                    BoxDecoration(color: kPrimaryColor.withOpacity(0.5)),
                padding: EdgeInsets.all(20),
                child: Text(name,
                    style: TextStyle(fontSize: 25, color: kText2Color)),
              ),
            ),
            backButton(context, kPrimaryColor, kText2Color),
          ],
        ),
      ),
    );
  }
}
