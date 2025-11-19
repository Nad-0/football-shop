import 'dart:convert';

List<ProductsEntry> newsEntryFromJson(String str) => List<ProductsEntry>.from(json.decode(str).map((x) => ProductsEntry.fromJson(x)));

String newsEntryToJson(List<ProductsEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductsEntry {
    String id;
    String name;
    int price;
    String description;
    String thumbnail;
    String category;
    bool isFeatured;
    int userId;
    int jerseyViews;
    bool isJerseyHot;
    DateTime createdAt;

    ProductsEntry({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.thumbnail,
        required this.category,
        required this.isFeatured,
        required this.userId,
        required this.jerseyViews,
        required this.isJerseyHot,
        required this.createdAt,
    });

    factory ProductsEntry.fromJson(Map<String, dynamic> json) => ProductsEntry(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        thumbnail: json["thumbnail"],
        category: json["category"],
        isFeatured: json["is_featured"],
        userId: json["user_id"],
        jerseyViews: json["jersey_views"],
        isJerseyHot: json["is_jersey_hot"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "thumbnail": thumbnail,
        "category": category,
        "is_featured": isFeatured,
        "user_id": userId,
        "jersey_views": jerseyViews,
        "is_jersey_hot": isJerseyHot,
        "created_at": createdAt.toIso8601String(),
    };
}
