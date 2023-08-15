class CategoryStor {
  static final CategoryStor _singleton = CategoryStor._internal();
  factory CategoryStor() {
    return _singleton;
  }
  CategoryStor._internal();
  String? category;
}
