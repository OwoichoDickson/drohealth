import 'package:drohealth/imports/imports.dart';

class Category extends StatefulWidget {
  Category({Key? key,}) : super(key: key);
  

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
      children: [
        Container(
          height: 150,
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
                    top: 60.0, left: 20.0, right: 20, bottom: 20),
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Builder(
                          builder: (context) => IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Pharm()));
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                        )),
                    Text('Categories',
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
        Expanded(
          child: SingleChildScrollView(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        // image: DecorationImage(
                        //   fit: BoxFit.cover, image: NetworkImage(data["image"])),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        // image: DecorationImage(
                        //   fit: BoxFit.cover, image: NetworkImage(data["image"])),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        // image: DecorationImage(
                        //   fit: BoxFit.cover, image: NetworkImage(data["image"])),
                      ),
                      child: Image.asset('asset/images/para.jpeg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        // image: DecorationImage(
                        //   fit: BoxFit.cover, image: NetworkImage(data["image"])),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
        )
      ],
    )));
  }
}



