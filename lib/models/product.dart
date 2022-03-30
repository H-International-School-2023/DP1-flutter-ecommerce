class Product {
  String name;
  String description;
  String imageUrl;
  double price;

  String summary;

  Product(this.name, this.description, this.imageUrl, this.price)
      : summary = description.substring(0, 10);
}
