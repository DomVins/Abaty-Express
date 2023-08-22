import '../models/models.dart';

List<ProductModel> productsList = [
  ProductModel('Male Shirt', '10000', 'assets/products/shirt.jpeg', 3, 25,
      ['Black', 'Blue', 'Green'], 'Short description', 'Full description', []),
  ProductModel('IPhone 12', '500000', 'assets/products/iphone.jpeg', 5, 30,
      ['Black', 'White'], 'Short description', 'Full description', []),
  ProductModel('Oven', '15000', 'assets/products/oven.jpeg', 2, 65,
      ['Blue', 'Pink', 'Red'], 'Short description', 'Full description', []),
  ProductModel('Wireless Mouse', '10000', 'assets/products/mouse.jpeg', 3, 25,
      ['Black', 'Blue', 'Green'], 'Short description', 'Full description', []),
  ProductModel('Headset', '500000', 'assets/products/headset.jpeg', 5, 30,
      ['Black', 'White'], 'Short description', 'Full description', []),
  ProductModel('Pressing Iron', '15000', 'assets/products/iron.jpeg', 2, 65,
      ['Blue', 'Pink', 'Red'], 'Short description', 'Full description', []),
  ProductModel('Blouse', '10000', 'assets/products/blouse.jpeg', 3, 25,
      ['Black', 'Blue', 'Green'], 'Short description', 'Full description', []),
  ProductModel('Wrist Watch', '15000', 'assets/products/watch.png', 2, 65,
      ['Blue', 'Pink', 'Red'], 'Short description', 'Full description', []),
];
List<SubProductCategoryModel> phonesSubProductCategories = [
  SubProductCategoryModel('Infinix', 'assets/categories/tabs.jpeg'),
  SubProductCategoryModel('Tecno', 'assets/products/iphone.jpeg'),
  SubProductCategoryModel('Nokia', 'assets/categories/tabs.jpeg'),
  SubProductCategoryModel('IPhone', 'assets/products/iphone.jpeg'),
  SubProductCategoryModel('Samsung', 'assets/categories/tabs.jpeg'),
];
List<SubProductCategoryModel> electronicsSubProductCategories = [
  SubProductCategoryModel('Fans', 'assets/images/phone.jpg'),
  SubProductCategoryModel('Televisions', 'assets/images/tv.jpg'),
  SubProductCategoryModel('Heaters and Stoves', 'assets/images/m_shirt.jpg'),
  SubProductCategoryModel('Computer Accessories', 'assets/images/f_shirt.jpg'),
  SubProductCategoryModel('Washing Machines', 'assets/images/phone.jpg'),
];
List<SubProductCategoryModel> fWearsSubProductCategories = [
  SubProductCategoryModel('Blouse', 'assets/products/blouse.jpeg'),
  SubProductCategoryModel('Gowns', 'assets/products/blouse.jpeg'),
  SubProductCategoryModel('Heels', 'assets/products/blouse.jpeg'),
  SubProductCategoryModel('Jewelries', 'assets/categories/jewelries.jpeg'),
];
List<SubProductCategoryModel> mWearsSubProductCategories = [
  SubProductCategoryModel('Shirts', 'assets/products/shirt.jpeg'),
  SubProductCategoryModel('Vests', 'assets/products/shirt.jpeg'),
  SubProductCategoryModel('Jackets', 'assets/products/shirt.jpeg'),
];
List<SubProductCategoryModel> cosmeticsSubProductCategories = [
  SubProductCategoryModel('Body Creams', 'assets/categories/cosmetics.jpeg'),
  SubProductCategoryModel('Lip Sticks', 'assets/categories/cosmetics.jpeg'),
  SubProductCategoryModel('Eye Lashes', 'assets/categories/cosmetics.jpeg'),
  SubProductCategoryModel(
      'Nail Extensions', 'assets/categories/cosmetics.jpeg'),
];
List<SubProductCategoryModel> booksSubProductCategories = [
  SubProductCategoryModel('Motivation', 'assets/categories/tabs.jpeg'),
  SubProductCategoryModel('Sciences', 'assets/categories/tabs.jpeg'),
  SubProductCategoryModel('Arts', 'assets/categories/tabs.jpeg'),
  SubProductCategoryModel('Religious', 'assets/categories/tabs.jpeg'),
];
List<SubProductCategoryModel> plantsSubProductCategories = [
  SubProductCategoryModel('Live Flowers', 'assets/categories/plants.jpeg'),
  SubProductCategoryModel('Farm Products', 'assets/categories/plants.jpeg'),
  SubProductCategoryModel('Fruits', 'assets/categories/plants.jpeg'),
];
List<SubProductCategoryModel> animalsSubProductCategories = [
  SubProductCategoryModel('Pets', 'assets/categories/animals.jpeg'),
  SubProductCategoryModel(
      'Cattles, Sheeps & Goats', 'assets/categories/animals.jpeg'),
  SubProductCategoryModel('Cat', 'assets/categories/animals.jpeg'),
];
List<SubProductCategoryModel> applianceSubProductCategories = [
  SubProductCategoryModel('Fans', 'assets/categories/appliances.jpeg'),
  SubProductCategoryModel('Televisions', 'assets/categories/electronics.jpeg'),
  SubProductCategoryModel('Home Theatre', 'assets/categories/appliances.jpeg'),
  SubProductCategoryModel('Radio', 'assets/categories/electronics.jpeg'),
  SubProductCategoryModel(
      'Satellite Decoder', 'assets/categories/appliances.jpeg'),
];
List<SubProductCategoryModel> jewelriesSubProductCategories = [
  SubProductCategoryModel('Necklace', 'assets/categories/jewelries.jpeg'),
  SubProductCategoryModel('Ear rings', 'assets/categories/jewelries.jpeg'),
  SubProductCategoryModel('Wrist watch', 'assets/categories/jewelries.jpeg'),
  SubProductCategoryModel('Eye glasses', 'assets/categories/jewelries.jpeg'),
];

List<CategoryModel> categories = [
  CategoryModel('Phones and Tablets', 'Tech', 'assets/categories/tabs.jpeg',
      phonesSubProductCategories),
  CategoryModel('Electronics', 'Tech', 'assets/categories/electronics.jpeg',
      electronicsSubProductCategories),
  CategoryModel('Male wears', 'Wears', 'assets/products/shirt.jpeg',
      mWearsSubProductCategories),
  CategoryModel('Female Wears', 'Wears', 'assets/products/blouse.jpeg',
      fWearsSubProductCategories),
  CategoryModel('Cosmetics', 'Home', 'assets/categories/cosmetics.jpeg',
      cosmeticsSubProductCategories),
  CategoryModel('Books and References', 'Education',
      'assets/categories/tabs.jpeg', booksSubProductCategories),
  CategoryModel('Plants and Crops', 'Agriculture',
      'assets/categories/plants.jpeg', plantsSubProductCategories),
  CategoryModel('Animals', 'Agriculture', 'assets/categories/animals.jpeg',
      animalsSubProductCategories),
  CategoryModel('Home Appliances', 'Home', 'assets/categories/appliances.jpeg',
      applianceSubProductCategories),
  CategoryModel('Jewelries', 'Wears', 'assets/categories/jewelries.jpeg',
      jewelriesSubProductCategories),
];

List<CategoryModel> stores = [
  CategoryModel('Big J Venture', 'Super Market', 'assets/images/phone.jpg',
      phonesSubProductCategories),
  CategoryModel('Wema Warehouse', 'Ware House', 'assets/images/tv.jpg',
      electronicsSubProductCategories),
  CategoryModel('JJ and Sons', 'Wholesales', 'assets/images/m_shirt.jpg',
      mWearsSubProductCategories),
  CategoryModel('Amadi Picks', 'Boutique', 'assets/images/f_shirt.jpg',
      fWearsSubProductCategories),
];

List<CartItemModel> cartItems = [
  CartItemModel('IPhone', 'assets/products/iphone.jpeg', 'Green', '5000', 1),
  CartItemModel('Oven', 'assets/products/oven.jpeg', 'Black', '100000', 1),
  CartItemModel('Shirt', 'assets/products/shirt.jpeg', 'Blue', '5000', 1),
];

var companies = [
  CompanyModel(
    'Cocacolla Company',
    'Street 4. Ajaba Lagos',
    'assets/images/cocacola.png',
    2,
    12,
    'Short description',
    'Full description',
  ),
  CompanyModel(
    'Nasco Company',
    'Plateau State Jos',
    'assets/images/nasco.jpg',
    2,
    65,
    'Short description',
    'Full description',
  ),
];

  List<String> categoryItems = [
    'Food',
    'Plate',
    'Chair',
    'House',
    'Food',
    'Plate',
    'Food',
    'Plate',
    'Chair',
    'House',
    'Food',
    'Plate',
    'Food',
    'Plate',
    'Chair',
    'House',
    'Food',
    'Plate',
  ];