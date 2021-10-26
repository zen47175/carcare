import 'package:carcare/models/Acessories_class.dart';
import 'package:carcare/models/cars_class.dart';
import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//productdesciprion1
class CarsDescription extends StatelessWidget {
  const CarsDescription({
    Key? key,
    required this.cars,
    required this.press,
    required this.index,
  }) : super(key: key);

  final Cars cars;
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
            ("Model: ${cars.model}"),
            //cars.model,
            style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, height: 1.9),
            // style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          Text(
              ("฿ ${cars.price.toString()}"),
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, height: 1.9),
            ),
          SizedBox(
            height: 20,
          ),
          Text(
            cars.info,
            style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              height: 1.8,
            ),
          ),
          SizedBox(
            height: 40,
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
                      //store1.addProduct(store1.products[index]);
                      //todo
                      Navigator.pop(context);
                    }, // add to cart creat page for cart
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Make an appointment',
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
