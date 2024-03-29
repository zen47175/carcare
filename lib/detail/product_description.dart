import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//productdesciprion1
class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.press,
    required this.index,
  }) : super(key: key);

  final Product product;
  final Function press;
  final int index;

  @override
  Widget build(BuildContext context) {
    var store1 = Provider.of<StoreLanguage>(context);
    return Container(
      constraints: BoxConstraints(minHeight: 400),
      padding: EdgeInsets.only(top: 90, left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.subTitle,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            product.info,
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              height: 1.8,
            ),
          ),
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 0),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: Colors.white,
                    ),
                    onPressed: () {
                      store1.addProduct(product);
                      print(index);
                      print(product);
                      //todo
                      Navigator.pop(context);
                    }, // add to cart creat page for cart
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
