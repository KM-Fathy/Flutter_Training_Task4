class Product {
  String title;
  int price;
  String thumbnail;

  Product({
    required this.title,
    required this.price,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      price: json['price'],
      thumbnail: json['thumbnail'],
    );
  }
}

