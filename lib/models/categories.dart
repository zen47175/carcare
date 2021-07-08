class Category {
  final String id, title, image;
  final int numOfProduct;

  Category(
      {required this.id,
      required this.title,
      required this.image,
      required this.numOfProduct});
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        numOfProduct: json['numOfProduct']);
  }
}

Category category = Category(
  id: '1',
  title: 'car front camera',
  image: 'aseets/accessories1.jpg',
  numOfProduct: 50,
);
