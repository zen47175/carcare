import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Product {
  final int id;
  final String name;
  final int price;
  final String subTitle;
  int qty;
  final String colors;
  final String info;
  final String url;
  final Group group;
  Product(
      {required this.id,
      required this.name,
      required this.price,
      required this.qty,
      required this.colors,
      required this.info,
      required this.url,
      required this.group,
      required this.subTitle});

  Product copyWith({
    int? id,
    String? name,
    int? price,
    int? qty,
    String? colors,
    String? info,
    String? url,
    Group? group,
    String? subTitle,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      qty: qty ?? this.qty,
      colors: colors ?? this.colors,
      info: info ?? this.info,
      url: url ?? this.url,
      group: group ?? this.group,
      subTitle: subTitle ?? this.subTitle,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'qty': qty,
      'colors': colors,
      'info': info,
      'url': url,
      'group': group.toMap(),
      'subTitle': subTitle,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toInt(),
      name: map['name'],
      price: map['price']?.toInt(),
      qty: map['qty']?.toInt(),
      colors: map['colors'],
      info: map['info'],
      url: map['url'],
      subTitle: map['subTitle'],
      group: Group.fromMap(
        map['group'],
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, qty: $qty, colors: $colors, info: $info, url: $url, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.id == id &&
        other.name == name &&
        other.price == price &&
        other.qty == qty &&
        other.colors == colors &&
        other.info == info &&
        other.url == url &&
        other.group == group;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        price.hashCode ^
        qty.hashCode ^
        colors.hashCode ^
        info.hashCode ^
        url.hashCode ^
        group.hashCode;
  }
}

class Group {
  final int groupId;
  final String groupName;
  Group({
    required this.groupId,
    required this.groupName,
  });

  Group copyWith({
    int? groupId,
    String? groupName,
  }) {
    return Group(
      groupId: groupId ?? this.groupId,
      groupName: groupName ?? this.groupName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'groupId': groupId,
      'groupName': groupName,
    };
  }

  factory Group.fromMap(Map<String, dynamic> map) {
    return Group(
      groupId: map['groupId']?.toInt(),
      groupName: map['groupName'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Group.fromJson(String source) => Group.fromMap(json.decode(source));

  @override
  String toString() => 'Group(groupId: $groupId, groupName: $groupName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Group &&
        other.groupId == groupId &&
        other.groupName == groupName;
  }

  @override
  int get hashCode => groupId.hashCode ^ groupName.hashCode;
}

const products_url = "http://172.20.10.10:1880/products";

// Future<List<Product>> getGroup1() async {
//   var result = await http.get(Uri.parse(products_url));
//   if (result.statusCode != 200) {
//     return [];
//   } else {
//     var map1 = json.decode(result.body) as List;
//     List<Product> list1 = map1.map((x) => Product.fromMap(x)).toList();
//     return list1.where((element) => element.group.groupId == 1).toList();
//   }
// }

// Future<List<Product>> getGroup2() async {
//   var result = await http.get(Uri.parse(products_url));
//   if (result.statusCode != 200) {
//     return [];
//   } else {
//     var map1 = json.decode(result.body) as List;
//     List<Product> list1 = map1.map((x) => Product.fromMap(x)).toList();
//     return list1.where((element) => element.group.groupId == 2).toList();
//   }
// }

Future<dynamic> getAll() async {
  var result = await http.get(Uri.parse(products_url));
  if (result.statusCode != 200) {
    return [];
  } else {
    var map1 = json.decode(result.body) as List;
    List list1 = map1.map((x) => Product.fromMap(x)).toList();
    return list1;
  }
}

// Future<List<Product>> getAll() async {
//   var result = await http.get(Uri.parse(products_url));

//   if (result.statusCode == 200) {
//     List<Product> list1 = (json.decode(result.body) as List)
//         .map((data) => Product.fromJson(data))
//         .toList();
//     return list1.where((element) => element.group.groupId == 2).toList();
//   } else {
//     var map1 = json.decode(result.body) as List;
//     throw Exception('Failed to load');
//   }
// }

// Future<List<Product>> fetchProducts() async {
//   const String apiUrl = "http://172.20.10.10:1880/products";

//   final response = await http.get(Uri.parse(apiUrl));

//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     var list1 = (json.decode(response.body) as List)
//         .map((data) => Product.fromJson(data))
//         .toList();
//     // Return list of products
//     return list1.toList();
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load');
//   }
// }

void goTo(context, Widget w) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => w),
  );
}
