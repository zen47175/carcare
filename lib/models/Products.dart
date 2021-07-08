class Product {
  final int price;
  final String id, title, category, image, subTitle, description;

  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.category,
    required this.image,
    required this.subTitle,
    required this.description,
  });

  // It create an Category from JSON
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json["id"],
      title: json["title"],
      image: json["image"],
      price: json["price"],
      category: json["category"],
      subTitle: json["subTitle"],
      description: json["description"],
    );
  }
}

//product1
Product product = Product(
  id: "1",
  price: 129,
  title: "Charger in car",
  image:
      "https://www.autoguide.com/blog/wp-content/uploads/2020/04/anker-mini-car-charger.jpg",
  category: "Charger",
  subTitle: "xiaomi charger",
  description: description,
);
//product2
String description =
    'The micro USB cable comes with a Type-C adapter for a wide range of charging options that support phones that help to provide the fast charge in Car the make xiao mi become the Best \n write by ';

Product product2 = Product(
  id: "2",
  price: 85,
  title: "Phone Holder In Car",
  image:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSjV-QDaxDWbN2n_kqwtMu9QqSmsp1MrPIsQ&usqp=CAU",
  category: "phone",
  subTitle: "xiaomi",
  description: description2,
);

String description2 =
    'The Xiaomi Universal Mobile Phone Holder will keep your phone held however you want it, thanks to its 360° of rotation. It`ll also keep hold of your Sat Nav, PDA or iPod. ';

//product3
Product product3 = Product(
  id: "3",
  price: 2500,
  title: 'Car Air purifier',
  image:
      "https://uidesign.gbtcdn.com/gb_blog/3576/Xiaomi-70mai-car-air-purifier-pro-using-experience-good-value-and-excellent-purifying-performance-C06.jpg",
  category: "Purifier",
  subTitle: "xiaomi Air purifier",
  description: description3,
);

String description3 =
    'Breathing with the life of every moment, the quality of each breath a direct impact on our body every cell health. The car closed environment so that the air can not effectively flow and update, xiaomi car air purifier has a high standard of clean filter, clean air';
