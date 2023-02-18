class Product {
  final int id;
  final String label;
  final String description;
  final int stock;

  Product(
      {required this.id,
      required this.label,
      required this.description,
      required this.stock});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      label: json['label'] as String,
      description: json['description'] as String,
      stock: json['stock'] as int,
    );
  }
}
