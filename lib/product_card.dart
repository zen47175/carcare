import 'package:flutter/material.dart';

import 'models/Products.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 10 * 14.5,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder:
                      "https://tenor.com/view/loading-waiting-gif-20872397",
                  image:
                      "https://www.autoguide.com/blog/wp-content/uploads/2020/04/anker-mini-car-charger.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Charger',
                ),
              ),
              SizedBox(
                height: 10 / 2,
              ),
              Text("${product.price}"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

//product 2
class AllProduct2 extends StatelessWidget {
  const AllProduct2({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 10 * 14.5,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: AspectRatio(
              aspectRatio: 0.693,
              child: SizedBox(
                child: Column(
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 1,
                      child: FadeInImage.assetNetwork(
                        placeholder:
                            "https://tenor.com/view/loading-waiting-gif-20872397",
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSjV-QDaxDWbN2n_kqwtMu9QqSmsp1MrPIsQ&usqp=CAU",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                        'phone set',
                      ),
                    ),
                    SizedBox(
                      height: 10 / 2,
                    ),
                    Text("${80}"),
                    Spacer()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AllProduct3 extends StatelessWidget {
  const AllProduct3({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 10 * 14.5,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: AspectRatio(
              aspectRatio: 0.693,
              child: SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      AspectRatio(
                        aspectRatio: 1,
                        child: FadeInImage.assetNetwork(
                          placeholder:
                              "https://tenor.com/view/loading-waiting-gif-20872397",
                          image:
                              "https://uidesign.gbtcdn.com/gb_blog/3576/Xiaomi-70mai-car-air-purifier-pro-using-experience-good-value-and-excellent-purifying-performance-C06.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          'car air purifier',
                        ),
                      ),
                      SizedBox(
                        height: 10 / 2,
                      ),
                      Text("${89}"),
                      Spacer()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
