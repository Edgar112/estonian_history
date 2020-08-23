import 'package:Eesti_Ajalugu/constants.dart';
import 'package:Eesti_Ajalugu/models/picture.dart';
import 'package:Eesti_Ajalugu/widgets/HeroPhotoViewWrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ImageSwiper extends StatefulWidget {
  final List<Picture> images;
  final SwiperLayout layout;
  const ImageSwiper(this.images, [this.layout = SwiperLayout.TINDER]);
  @override
  State<StatefulWidget> createState() {
    return new _ImageSwiperState(images, this.layout);
  }
}

class _ImageSwiperState extends State<ImageSwiper> {
  bool _loop;
  bool _autoplay;
  int _autoplayDely;
  bool _outer;
  double _radius;
  double _viewportFraction;
  SwiperLayout _layout;
  int _currentIndex;
  double _scale;
  Axis _scrollDirection;
  Curve _curve;
  double _fade;
  bool _autoplayDisableOnInteraction;
  CustomLayoutOption customLayoutOption;
  SwiperController _controller;
  TextEditingController numberController = new TextEditingController();
  List<Picture> images;

  _ImageSwiperState(this.images, this._layout);

  Widget _buildItem(BuildContext context, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(_radius)),
      child: images.length == 1
          ? Hero(
              tag: images[index].imagePath + ' ' + index.toString(),
              child: Image.asset(
                images[index].imagePath,
                fit: BoxFit.scaleDown,
              ),
            )
          : Image.asset(
              images[index].imagePath,
              fit: BoxFit.scaleDown,
            ),
    );
  }

  @override
  void didUpdateWidget(ImageSwiper oldWidget) {
    customLayoutOption = new CustomLayoutOption(startIndex: -1, stateCount: 3)
        .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
      new Offset(-370.0, -40.0),
      new Offset(0.0, 0.0),
      new Offset(370.0, -40.0)
    ]);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    customLayoutOption = new CustomLayoutOption(startIndex: -1, stateCount: 3)
        .addRotate([-25.0 / 180, 0.0, 25.0 / 180]).addTranslate([
      new Offset(-350.0, 0.0),
      new Offset(0.0, 0.0),
      new Offset(350.0, 0.0)
    ]);
    _fade = 1.0;
    _currentIndex = 0;
    _curve = Curves.ease;
    _scale = 0.8;
    _controller = new SwiperController();
    _radius = 0.0;
    _loop = true;
    _autoplay = true;
    _autoplayDely = 5000;
    _viewportFraction = 0.8;
    _outer = false;
    _scrollDirection = Axis.horizontal;
    _autoplayDisableOnInteraction = true;
    super.initState();
  }

  Widget buildSwiper() {
    return new Swiper(
        onTap: (int index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HeroPhotoViewWrapper(
                tagName: images[index].imagePath + ' ' + index.toString(),
                imageProvider: AssetImage(images[index].imagePath),
                name: images[index].imageName,
              ),
            ),
          );
        },
        customLayoutOption: customLayoutOption,
        fade: _fade,
        index: _currentIndex,
        onIndexChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        curve: _curve,
        scale: _scale,
        itemWidth: 600.0,
        controller: _controller,
        layout: images.length != 1
            ? _layout ?? SwiperLayout.TINDER
            : SwiperLayout.DEFAULT,
        outer: _outer,
        itemHeight: 500.0,
        viewportFraction: _viewportFraction,
        autoplayDelay: _autoplayDely,
        loop: images.length != 1 ? _loop : false,
        autoplay: images.length != 1 ? _autoplay : false,
        itemBuilder: _buildItem,
        itemCount: images.length,
        scrollDirection: _scrollDirection,
        indicatorLayout: PageIndicatorLayout.COLOR,
        autoplayDisableOnInteraction: _autoplayDisableOnInteraction,
        pagination: SwiperPagination(
            builder: DotSwiperPaginationBuilder(
                size: 13.0,
                activeSize: 20.0,
                space: 10.0,
                color: images.length != 1
                    ? Colors.grey.withOpacity(0.5)
                    : Colors.transparent,
                activeColor:
                    images.length != 1 ? kPrimaryColor : Colors.transparent)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 300.0, width: double.infinity, child: buildSwiper()),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              images[_currentIndex].imageName,
              style: TextStyle(
                  fontFamily: 'Exo2',
                  fontSize: 15,
                  color: kText2Color,
                  fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
