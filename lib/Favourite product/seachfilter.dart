import 'dart:async';

import 'package:carcare/servive/Acessories_class.dart';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Searchfilter extends StatefulWidget {
  const Searchfilter({
    Key? key,
  }) : super(key: key);

  @override
  _SearchfilterState createState() => _SearchfilterState();
}

class _SearchfilterState extends State<Searchfilter> {
  TextEditingController controller = new TextEditingController();

  Future<List<Product>> getAll() async {
    var result = await http.get(Uri.parse(products_url));
    if (result.statusCode != 200) {
      return [];
    } else {
      var map1 = json.decode(result.body) as List;
      List<Product> list1 = map1.map((x) => Product.fromMap(x)).toList();
      return list1;
    }
  }

  @override
  void initState() {
    super.initState();

    getAll();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Search'),
        elevation: 0.0,
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            color: Theme.of(context).primaryColor,
            child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Card(
                child: new ListTile(
                  leading: new Icon(Icons.search),
                  title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: onSearchTextChanged,
                  ),
                  trailing: new IconButton(
                    icon: new Icon(Icons.cancel),
                    onPressed: () {
                      controller.clear();
                      onSearchTextChanged("");
                    },
                  ),
                ),
              ),
            ),
          ),
          new Expanded(
            child: _searchResult.length != 0 || controller.text.isNotEmpty
                ? new ListView.builder(
                    itemCount: _searchResult.length,
                    itemBuilder: (context, i) {
                      return new Card(
                        child: new ListTile(
                          leading: new CircleAvatar(
                            backgroundImage: new NetworkImage(
                              _searchResult[i].url,
                            ),
                          ),
                          title: new Text(_searchResult[i].name),
                        ),
                        margin: const EdgeInsets.all(0.0),
                      );
                    },
                  )
                : new ListView.builder(
                    itemCount: _product.length,
                    itemBuilder: (context, index) {
                      return new Card(
                        child: new ListTile(
                          leading: new CircleAvatar(
                            backgroundImage: new NetworkImage(
                              _product[index].url,
                            ),
                          ),
                          title: new Text(_product[index].name),
                        ),
                        margin: const EdgeInsets.all(0.0),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  onSearchTextChanged(String text) async {
    _searchResult.clear();
    if (text.isEmpty) {
      setState(() {});
      return;
    }

    // ignore: non_constant_identifier_names
    _product.forEach((Product) {
      if (Product.name.contains(text)) _searchResult.add(Product);
    });
//อาจจะผิดเเถวนร้
    setState(() {});
  }
}

List<Product> _searchResult = [];

List<Product> _product = [];
