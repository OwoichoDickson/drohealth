import 'package:drohealth/imports/imports.dart';

class Cartz extends StatefulWidget {
  final CartItem item;

  const Cartz({required this.item});

  @override
  State<Cartz> createState() => _CartzState();
}

class _CartzState extends State<Cartz> {
  var myIntialItem = '1';
  List<String> myitems = ['1', '2', '3', '4', '5'];
  String value = '0';
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Padding(
          padding:  EdgeInsets.only(left: 10.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: 90,
              width: 200,
              //color: Colors.amber,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 100,
                        width: 80,
                        // color: Colors.green,
                        child: Image.asset('asset/images/ibu.jpeg')),
                    SizedBox(
                        width: 100,
                        //color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Paracetamol'),
                              Text(
                                'Capsule',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text('5OOmg', style: TextStyle(fontSize: 12)),
                              Text('N1000',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ))
                  ]),
            ),
            SizedBox(
                height: 120,
                width: 110,
                //color: Colors.amber,
                child: Padding(
                  padding:  EdgeInsets.only(top: 30.0),
                  child: Column(children: [
                    SizedBox(
                        height: 40,
                        
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            items: myitems.map((items) {
                              return DropdownMenuItem(
                                  value: items, child: Text(items));
                            }).toList(),
                            onChanged: (value) {
                              myIntialItem = value.toString();
                              setState(() {
                                 
                              });
                            },
                            value: myIntialItem,
                          ),
                        )),
                        Container(child:IconButton(onPressed: (){
                           Provider.of<CartProvider>(context, listen: false).removeFromCart(CartItem(image: populars[0]['image'], description: populars[0]['description'], name: populars[0]['name'], miligram: populars[0]['miligram'], prize: populars[0]['price']));
    
                        }, icon:Icon(MyFlutterApp.dispenced) ,) )
                  ]),
                ))
          ]))
    ]));
  }
}
