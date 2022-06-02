import 'dart:ui';

import 'package:drohealth/imports/imports.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  late final data;

  List<Widget> completecart = [];
  List cartitems =[];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      cartitems = Provider.of<CartProvider>(context, listen: false).catItemList;
      for (int i =0; i <cartitems.length; i++){ 
completecart.add(Cartz(item:cartitems[i]));

}
setState(() {
  
});
print("Items in cart: ${cartitems.length}");
     
      
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                child: Column(children: [
      Container(
        height: 120,
        width: 400,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.deepPurple, Colors.purple])),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 20.0, right: 30, bottom: 20),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Pharm()));
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      MyFlutterApp.pharmonly,
                      color: Colors.white,
                    ),
                  ),
                  Text('Cart',
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: completecart,
                ),
              ),
            )
          ],
        ),
      )
    ]))));
  }
}
