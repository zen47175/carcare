import 'dart:convert';

import 'package:http/http.dart' as http;

class Category {
  final String title, image;
  final int numOfProduct, id;

  Category(
      {required this.id,
      required this.title,
      required this.image,
      required this.numOfProduct});

  // Category copyWith({
  //   int? id,
  //   title,
  //   image,
  //   int? numOfProduct,
  // }) {
  //   return Category(
  //       id: id ?? this.id,
  //       title: title ?? this.title,
  //       image: image ?? this.image,
  //       numOfProduct: numOfProduct ?? this.numOfProduct);
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'title': title,
  //     'image': image,
  //     'numOfProduct': numOfProduct,
  //   };
  // }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id']?.toInt(),
      title: map['title'],
      image: map['image'],
      numOfProduct: map['numOfProduct']?.toInt(),
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Category.fromJson(String source) =>
  //     Category.fromMap(json.decode(source));

  // @override
  // String toString() {
  //   return 'Category(id: $id,image: $image,numOfProduct: $numOfProduct,title: $title )';
  // }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;

  //   return other is Category &&
  //       other.id == id &&
  //       other.image == image &&
  //       other.numOfProduct == numOfProduct &&
  //       other.title == title;
  // }

  // @override
  // int get hashCode {
  //   return id.hashCode ^
  //       numOfProduct.hashCode ^
  //       title.hashCode ^
  //       image.hashCode;
  // }
}

Future<List<Category>> fetchCategories() async {
  const String apiUrl = "http://192.168.1.107:1880/category";
  var result = await http.get(Uri.parse(apiUrl));
  if (result.statusCode != 200) {
    return [];
  } else {
    var map1 = json.decode(result.body) as List;
    List<Category> category1 = map1.map((x) => Category.fromMap(x)).toList();

    return category1;
  }
}
