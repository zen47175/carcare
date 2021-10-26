import 'package:carcare/models/Acessories_class.dart';
import 'package:flutter/material.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({Key? key, required this.product, this.press})
      : super(key: key);

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
                child: Hero(
                  //ไม่เด้ง
                  //todo
                  tag: product.id,
                  child: FadeInImage.assetNetwork(
                    placeholder: "assets/tenor.gif",
                    image: product.url,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(product.name),
              ),
              SizedBox(
                height: 5,
              ),
              Text("฿ ${product.price}"),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
