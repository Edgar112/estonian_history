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
      this.tagName});

  final ImageProvider imageProvider;
  final LoadingBuilder loadingBuilder;
  final Decoration backgroundDecoration;
  final dynamic minScale;
  final dynamic maxScale;
  final String tagName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(
          height: MediaQuery.of(context).size.height,
        ),
        child: Stack(
          children: <Widget>[
            PhotoView(
              backgroundDecoration: BoxDecoration(color: kPrimaryColor),
              imageProvider: imageProvider,
              loadingBuilder: loadingBuilder,
              minScale: PhotoViewComputedScale.contained * 0.8,
              maxScale: PhotoViewComputedScale.covered * 2,
              heroAttributes: PhotoViewHeroAttributes(tag: tagName),
            ),
            backButton(context, kPrimaryColor, kText2Color)
          ],
        ),
      ),
    );
  }
}
