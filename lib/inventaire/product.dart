class Product {
  final int id;
  final String label;
  final String libelle;
  final String entrepot;
  final String produit;

  Product(
      {required this.id,
      required this.label,
      required this.libelle,
      required this.entrepot,
      required this.produit});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      label: json['label'] as String,
      libelle: json['description'] as String,
      entrepot: json['stock'] as String,
      produit: json['stock'] as String,
    );
  }
}
