class Product {
  String name;
  String description;
  double price;

  String summary;

  Product(this.name, this.description, this.price)
      : summary = description.substring(0, 100);
}
