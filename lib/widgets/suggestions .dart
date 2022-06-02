import 'package:drohealth/imports/imports.dart';

class SuggestionItem extends StatelessWidget {
  SuggestionItem({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
        width: 360,
        height: 190,
        //color: Colors.amber,
        child: Stack(
          children: [
            Positioned(
              left: 10,
              top: 10,
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductScreen()));
                  },
                  child: Card(
                      child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProductScreen()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 100,
                              width: 160,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                      data["image"],
                                    ),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                          ],
                        ),
                       const  Divider(
                          height: 10,
                          color: Colors.green,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(data["name"],
                              style: const TextStyle(fontSize: 13)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            data["description"],
                            style: const TextStyle(fontSize: 10),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 11),
                          child: Text(data["price"],
                              style: const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ))),
            ),
            Positioned(
                right: 11,
                top: 10,
                child: Card(
                    child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProductScreen()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            width: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    data["image"],
                                  ),
                                  fit: BoxFit.fitHeight),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.green,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child:
                            Text(data["name"], style: const TextStyle(fontSize: 13)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          data["description"],
                          style: const TextStyle(fontSize: 10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 11),
                        child: Text(data["price"],
                            style: const TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                )))
          ],
        ));
  }
}
