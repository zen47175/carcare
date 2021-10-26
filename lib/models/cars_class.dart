import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cars {
  final int id;
  final String name;
  final String subTitle;
  final String model;
  final int price;
  final int discount;
  int qty;
  final int year;
  final String colors;
  final String info;
  final String url;
  final Group group;
  Cars({
    required this.id,
    required this.name,
    required this.subTitle,
    required this.model,
    required this.price,
    required this.discount,
    required this.qty,
    required this.year,
    required this.colors,
    required this.info,
    required this.url,
    required this.group,
  });

  Cars copyWith({
    int? id,
    String? name,
    String? subTitle,
    String? model,
    int? price,
    int? discount,
    int? qty,
    int? year,
    String? colors,
    String? info,
    String? url,
    Group? group,
  }) {
    return Cars(
      id: id ?? this.id,
      name: name ?? this.name,
      subTitle: subTitle ?? this.subTitle,
      model: model ?? this.model,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      qty: qty ?? this.qty,
      year: year ?? this.year,
      colors: colors ?? this.colors,
      info: info ?? this.info,
      url: url ?? this.url,
      group: group ?? this.group,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'subTitle': subTitle,
      'model': model,
      'price': price,
      'discount': discount,
      'qty': qty,
      'year': year,
      'colors': colors,
      'info': info,
      'url': url,
      'group': group.toMap(),
    };
  }

  factory Cars.fromMap(Map<String, dynamic> map) {
    return Cars(
      id: map['id']?.toInt(),
      name: map['name'],
      subTitle: map['subTitle'],
      model: map['model'],
      price: map['price']?.toInt(),
      discount: map['discount']?.toInt(),
      qty: map['qty']?.toInt(),
      year: map['year']?.toInt(),
      colors: map['colors'],
      info: map['info'],
      url: map['url'],
      group: Group.fromMap(map['group']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Cars.fromJson(String source) => Cars.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cars(id: $id, name: $name, subTitle: $subTitle, model: $model, price: $price, discount: $discount, qty: $qty, year: $year, colors: $colors, info: $info, url: $url, group: $group)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cars &&
        other.id == id &&
        other.name == name &&
        other.subTitle == subTitle &&
        other.model == model &&
        other.price == price &&
        other.discount == discount &&
        other.qty == qty &&
        other.year == year &&
        other.colors == colors &&
        other.info == info &&
        other.url == url &&
        other.group == group;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        subTitle.hashCode ^
        model.hashCode ^
        price.hashCode ^
        discount.hashCode ^
        qty.hashCode ^
        year.hashCode ^
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

const TitleItem = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  letterSpacing: -0.9,
  height: 1.5,
);
const TextItem = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  letterSpacing: -0.9,
  height: 1,
);

const AccItem = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  letterSpacing: -0.9,
  height: 1,
);

const cars_url = "http://172.20.10.10:1880/cars";
//192.168.1.4 // zen
//172.20.10.2 //Jn iphone
//192.168.1.2 //Jn wifi

Future<List<Cars>> getGroup1() async {
  //get data from datastore
  var result = await http.get(Uri.parse(cars_url));
  if (result.statusCode != 200) {
    return [];
  } else {
    var map1 = json.decode(result.body) as List;
    List<Cars> list1 = map1.map((x) => Cars.fromMap(x)).toList();
    return list1.where((element) => element.group.groupId == 1).toList();
  } //e else
} //ef
