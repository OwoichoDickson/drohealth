import 'package:drohealth/imports/imports.dart';



class Similarproducts extends StatelessWidget {
  Similarproducts({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 190,
        //color: Colors.amber,
        child: Stack(
          children: [
            
            Positioned(
              left: 10,
              top: 10,
              child: Card(
                elevation: 1,
                child: Container(
                  // ignore: sort_child_properties_last
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(data["image"])),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              data["name"],
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              data["description"],
                              style:
                                 const TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                            Text(
                              data["price"],
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  height: 170,
                ),
              ),
            ),
            
          ],
        ));
  }
}
