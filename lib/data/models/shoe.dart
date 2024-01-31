// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  Shoe({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
  });

  Shoe copyWith({
    String? name,
    String? price,
    String? imagePath,
    String? description,
  }) {
    return Shoe(
      name: name ?? this.name,
      price: price ?? this.price,
      imagePath: imagePath ?? this.imagePath,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'imagePath': imagePath,
      'description': description,
    };
  }

  factory Shoe.fromMap(Map<String, dynamic> map) {
    return Shoe(
      name: map['name'] as String,
      price: map['price'] as String,
      imagePath: map['imagePath'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Shoe.fromJson(String source) => Shoe.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Shoe(name: $name, price: $price, imagePath: $imagePath, description: $description)';
  }

  @override
  bool operator ==(covariant Shoe other) {
    if (identical(this, other)) return true;

    return other.name == name && other.price == price && other.imagePath == imagePath && other.description == description;
  }

  @override
  int get hashCode {
    return name.hashCode ^ price.hashCode ^ imagePath.hashCode ^ description.hashCode;
  }
}
