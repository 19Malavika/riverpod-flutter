import 'package:riverpod_files/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
const Set<Product> allProducts={
  Product(id:'1',title:'Groovy Shorts',price:12,image:'assets/products/shorts.jpeg'),
  Product(id:'2',title:'Karati Kit',price:34,image:'assets/products/karati.jpeg'),
  Product(id:'3',title:'Denim Jeans',price:54,image:'assets/products/jeans.jpg'),
  Product(id:'4',title:'Back pack',price:14,image:'assets/products/backpack.jpeg'),
  Product(id:'5',title:'Drums band',price:29,image:'assets/products/drum.jpg'),
  Product(id:'6',title:'Suitcase',price:44,image:'assets/products/suitcase.jpeg'),
  Product(id:'7',title:'Rollar Skates',price:52,image:'assets/products/skates.jpeg'),
  Product(id:'7',title:'Electric Guitar',price:79,image:'assets/products/guitar.jpeg'),
};
final productsProvider = Provider((ref){
  return allProducts;
});
final reducedProductsProvider=Provider((ref){
  return allProducts.where((p)=>p.price<50).toList();
});