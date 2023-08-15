class Category {
  final int id;
  final int? parentId;
  final String name;
  final String? description;
  final String status;
  final String? deletedAt;
  final String createdAt;
  final String? updatedAt;

  Category({
    required this.id,
    required this.parentId,
    required this.name,
    required this.description,
    required this.status,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      parentId: json['parent_id'],
      name: json['name'],
      description: json['description'],
      status: json['status'],
      deletedAt: json['deleted_at'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}

