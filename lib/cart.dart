import 'package:carcare/servive/real%20local%20store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';


class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    var store1 = Provider.of<StoreLanguage>(context); //Cart
    return Scaffold(
      appBar: AppBar(
        title: //Text(store1.t5).tr(),
        Text("Cart",
        //style: TextStyle(color: Colors.black)
        ),
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        children: [
          //listview box
          Expanded(
            flex: 6,
            child: ListView.builder(
                itemCount: store1.cart.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    background: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFE6E6),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(),
                    ),
                    onDismissed: (DismissDirection direction) {
                      //make sure to update the item qty
                      //to zero and then remove it from the cart
                      setState(() {
                        store1.cart[index].qty = 0;
                        store1.cart.removeWhere(
                            (store) => store.name == store1.cart[index].name);
                      });
                    },
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            width: 80,
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(store1.cart[index].url),
                              ),
                            ),
                          ),
                          //title: Text('1123'),
                          title: ListTile(
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(' ${store1.cart[index].name} ',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                // Text(' ${store1.cart[index].price.toString()} ',
                                //     style: TextStyle(
                                //         fontSize: 15,
                                //         fontWeight: FontWeight.bold)),
                              ],
                            ),
                            title: Column(
                              children: [
                                //Text('฿ ${store1.cart[index].price}'),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          store1.cart[index].qty += 1;
                                        });
                                      },
                                      icon: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black54
                                                      .withOpacity(0.2),
                                                  offset: Offset(0, 0),
                                                  blurRadius: 15)
                                            ],
                                          ),
                                          child: Icon(Icons.add,
                                              color: Colors.green)),
                                    ),
                                    SizedBox(
                                      child: Text('${store1.cart[index].qty}'),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          store1.cart[index].qty -= 1;
                                          //if the value of qty == 0 then just remove it
                                          if (store1.cart[index].qty == 0) {
                                            store1.cart.removeWhere((store) =>
                                                store.name ==
                                                store1.cart[index].name);
                                          }
                                        });
                                      },
                                      icon: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.black54
                                                      .withOpacity(0.2),
                                                  offset: Offset(0, 0),
                                                  blurRadius: 10)
                                            ],
                                          ),
                                          child: Icon(Icons.remove,
                                              color: Colors.red)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  ('฿ ${store1.cart[index].price * store1.cart[index].qty}')
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          //button box
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: MaterialButton(
              color: Colors.grey[800],
              child: Text("Buy", style: TextStyle(color: Colors.white)),
              minWidth: 300,
              height: 40,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              onPressed: () {
                //store1.sendOrder();
              },
            ),
          ),
        ],
      ),
    );
  }
} //ec