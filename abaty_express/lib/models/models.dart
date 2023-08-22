class ProductModel {
  String name;
  String cost;
  String imagePath;
  int stars;
  int orders;
  List<String> colors;
  String shortDescription;
  String fullDescription;
  List<ProductModel> similarItems;
  ProductModel(
      this.name,
      this.cost,
      this.imagePath,
      this.stars,
      this.orders,
      this.colors,
      this.shortDescription,
      this.fullDescription,
      this.similarItems);
}

class CategoryModel {
  String cat;
  String subCat;
  String imageUrl;
  List<SubProductCategoryModel> subCatList;
  CategoryModel(this.cat, this.subCat, this.imageUrl, this.subCatList);
}

class SubProductCategoryModel {
  String subCat;
  String imageUrl;
  SubProductCategoryModel(this.subCat, this.imageUrl);
}

class CartItemModel {
  String name;
  String imageUrl;
  String color;
  String cost;
  int quantity;
  String deliveryFee = '';
  bool ticked = false;
  CartItemModel(this.name, this.imageUrl, this.color, this.cost, this.quantity);
}

class CompanyModel {
  String name;
  String adress;
  String imagePath;
  int stars;
  int items;
  String shortDescription;
  String fullDescription;
  CompanyModel(
    this.name,
    this.adress,
    this.imagePath,
    this.stars,
    this.items,
    this.shortDescription,
    this.fullDescription,
  );
}

class Categ {
  String name;
  bool isSelected;
  Categ(this.name, {this.isSelected = false});
}