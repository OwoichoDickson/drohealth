import 'package:drohealth/imports/imports.dart';




class MyCart{
  final List <CartItem> cartItems ;
  
  MyCart({required this.cartItems});
  
  //CartItem get prized => CartItem(name: 'name',description:'description',prize: 'prize' ,miligram: 'miligram',image: 'image');
  
  
  double getCartTotalPrize(){
    double total=0;
    for(int i=0;  i<cartItems.length; i++){
       
       total+=double.parse(cartItems[i].prize);
    }
    
     
    return total;
  
}
  
  double getCartTotalCount(){
   
    return cartItems.length-1;
  
}

}


class CartProvider extends ChangeNotifier {
  double _totalItems = 0;
  double get totalItems => _totalItems;
  
 List<CartItem> _catItemList = [] ;
  
  List<CartItem> get catItemList =>_catItemList;
  
  
  MyCart get myCart=>MyCart(cartItems:catItemList);
  
 addToCart(CartItem item){
   _catItemList.add(item);
   notifyListeners();
 }
  removeFromCart(CartItem item){
   _catItemList.removeWhere((cat)=>cat.name==item.name);
   notifyListeners();
 }
}




