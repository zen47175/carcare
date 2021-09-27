import 'package:flutter/material.dart';

import 'models/categories.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 10 * 20.5,
        child: AspectRatio(
          aspectRatio: 0.85,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                color: Colors.grey[100],
              ),
              ClipPath(
                clipper: CategoryShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(10 * 2),
                    color: Colors.blueGrey[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Front car carmera'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${category.numOfProduct}+ สินค้า",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/tenor.gif',
                    image:
                        'https://cdn.istudio.store/media/catalog/product/cache/image/700x560/e9c3970ab036de70892d86c6d221abfe/m/i/mi_car_air_2.jpg',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}

class CategoryType2 extends StatelessWidget {
  const CategoryType2({
    Key? key,
    required this.category,
  }) : super(key: key);
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 10 * 20.5,
        child: AspectRatio(
          aspectRatio: 0.85,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                color: Colors.grey[100],
              ),
              ClipPath(
                clipper: CategoryShape(),
                child: AspectRatio(
                  aspectRatio: 1.025,
                  child: Container(
                    padding: EdgeInsets.all(10 * 2),
                    color: Colors.blueGrey[100],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text('Air purifier'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${category.numOfProduct}+ สินค้า",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: FadeInImage.assetNetwork(
                    placeholder: 'assets/tenor.gif',
                    image:
                        'https://cdn.istudio.store/media/catalog/product/cache/image/700x560/e9c3970ab036de70892d86c6d221abfe/m/i/mi_car_air_2.jpg',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryShape2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double height = size.height;
    double width = size.width;
    double cornerSize = 30;

    path.lineTo(0, height - cornerSize);
    path.quadraticBezierTo(0, height, cornerSize, height);
    path.lineTo(width - cornerSize, height);
    path.quadraticBezierTo(width, height, width, height - cornerSize);
    path.lineTo(width, cornerSize);
    path.quadraticBezierTo(width, 0, width - cornerSize, 0);
    path.lineTo(cornerSize, cornerSize * 0.75);
    path.quadraticBezierTo(0, cornerSize, 0, cornerSize * 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
