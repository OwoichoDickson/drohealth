import 'package:drohealth/imports/imports.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(children: [
            Container(
              height: 134,
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
                        top: 60.0, left: 20.0, right: 30, bottom: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Pharm()));
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text('Pharmacy',
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        const Padding(
                          padding: EdgeInsets.only(left: 180.0),
                          child: Icon(
                            MyFlutterApp.pharmonly,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 350,
                      // ignore: sort_child_properties_last
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Image.asset('asset/images/para.jpeg'),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Emzor Paracetamol',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text('Tablet - 500g',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                        height: 110,
                        width: 350,
                        //  color: Colors.green,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(MyFlutterApp.productscan),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 18.0, left: 5),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text('SOLD BY',
                                            style: TextStyle(fontSize: 8)),
                                        Text(
                                          'Emzor Pharamactical',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.blueGrey,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 150.0),
                                    child: Icon(
                                      MyFlutterApp.heart,
                                      color: Colors.purple,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      height: 20,
                      width: 350,
                      child: Text(
                        'PRODUCT DETAILS',
                        style: TextStyle(
                            color: Colors.blueGrey.shade200,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ),
                    SizedBox(
                        height: 130,
                        width: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(MyFlutterApp.drug,
                                          color: Colors.purple),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, left: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('PACK SIZE',
                                              style: TextStyle(fontSize: 8)),
                                          Text(
                                            '8x12 tables (96)',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Icon(MyFlutterApp.productscan,
                                          color: Colors.purple),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5.0, left: 5),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text('PRODUCT ID',
                                              style: TextStyle(fontSize: 8)),
                                          Text(
                                            'PRO2345678',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          MyFlutterApp.vector,
                                          color: Colors.purple,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text('CONSTITUENT',
                                                style: TextStyle(fontSize: 8)),
                                            Text(
                                              'Paracetamol',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.blueGrey,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0),
                                  child: Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(MyFlutterApp.dispenced,
                                            color: Colors.purple),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, left: 5),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text('DISPENCED IN',
                                                style: TextStyle(fontSize: 8)),
                                            Text(
                                              'Packs',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.blueGrey,
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 80,
                      width: 300,
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          '1 pack of Emzor Paracetamol (500mg) contains 8 units of 12 tablets.',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      )),
                    ),
                    const SizedBox(
                      height: 40,
                      width: 350,
                      child: Text(
                        'Similar Products',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      width: 400,
                      child: listProduct(),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {
                            Provider.of<CartProvider>(context, listen: false).addToCart(CartItem(image: populars[0]['image'], description: populars[0]['description'], name: populars[0]['name'], miligram: populars[0]['miligram'], prize: populars[0]['price']));
                            _settingModalBottomSheet(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                          ),
                          child: const Text('Add to Cart')),
                    ),
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}

listProduct() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(left: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          populars.length, (index) => Similarproducts(data: populars[index])),
    ),
  );
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            Card(
              elevation: 5,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,),
                    height: 200,
                    
                    child: Center(
                        child: Column(children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 50.0),
                        child: Text(
                            'Emzor paracetamol have been successflully ',style: TextStyle(fontSize: 15),),
                            
                      ),
                      Padding(
                        
                        padding: EdgeInsets.only(top: .0),
                        child: Text(
                            'added to cart! ',style: TextStyle(fontSize: 15),),
                      ),
                      
                    ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                          onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Cart()));
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.purple,
                            padding:const  EdgeInsets.symmetric(
                                horizontal: 40, vertical: 10),
                          ),
                          child: const Text('View Cart')),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {
                           Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Pharm()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          padding:const  EdgeInsets.symmetric(
                              horizontal: 40, vertical: 10),
                        ),
                        child: const Text('Continue Shopping')),
                  ),
                ],
              ),
            )
          ],
        );
      });
}


