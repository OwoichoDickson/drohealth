import 'package:drohealth/imports/imports.dart';

class Pharm extends StatefulWidget {
  Pharm({Key? key}) : super(key: key);

  @override
  State<Pharm> createState() => _PharmState();
}

class _PharmState extends State<Pharm> {
   int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
       
        bottomNavigationBar: BottomNavigationBar(
          
          currentIndex: _selectedIndex,
          onTap: _onItemTapped, //New
         selectedItemColor: Colors.purple,
  unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: Color.fromARGB(255, 86, 83, 83),fontSize: 10),

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.homeonly,
                color: Colors.grey,size: 15,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.doctoronly,
                color: Colors.grey,size: 15
              ),
              label: 'Doctor',
               backgroundColor: Color.fromARGB(255, 255, 201, 250),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.pharmonly,
                color: Colors.purple,size: 15,
              ),
              label: 'Pharmacy',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.communityonly,
                color: Colors.grey,size: 15,
              ),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.profileonly,
                color: Colors.grey,size: 15,
              ),
              label: 'Profile',
            ),
          ],
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
              floatingActionButtonTheme: const FloatingActionButtonThemeData(
            extendedSizeConstraints:
                BoxConstraints.tightFor(height: 45, width: 150),
          )),
          child: Builder(
            builder: (context) {
              return FloatingActionButton.extended(
                elevation: 15,
                  shape: RoundedRectangleBorder(
                    
                      borderRadius: BorderRadius.circular(40)),
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  label: Text(' Checkout'),
                  
                  
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Cart()));
                  },
                  );
            }
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 170,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pharmacy',
                            style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold))),
                        const Icon(
                          MyFlutterApp.delievery,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 20.0, right: 20.0),
                    child: CustomTextBox(
                      hint: "Search",
                      prefix: const Icon(
                        MyFlutterApp.seach,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
            //here
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                    height: 30,
                    width: 400,
                    color: Colors.grey.shade300,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.location_pin,
                              size: 15,
                            ),
                          ),
                          // ignore: avoid_unnecessary_containers
                          Container(
                              child: RichText(
                                  text: const TextSpan(
                                      text: 'Delivery in ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10),
                                      children: <TextSpan>[
                                TextSpan(
                                    text: 'LAGOS NG',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10))
                              ])))
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'CATERGORIES',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 11),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Category()));
                                  },
                                  child: const Text(
                                    'VIEW ALL',
                                    style: TextStyle(
                                        color: Colors.deepPurpleAccent,
                                        fontSize: 11),
                                  ),
                                ))
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: listCategory(),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, top: 0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'SUGGESTIONS',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 11),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 1),
                          child: listSuggestion(),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      //_selectedIndex = index;
    });
  }
}

getBody() {
  return SingleChildScrollView(
    child: Column(),
  );
}

listCategory() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(left: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          featured.length, (index) => CatergoryItem(data: featured[index])),
    ),
  );
}

listSuggestion() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(left: 5),
    child: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //  crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
          populars.length, (index) => SuggestionItem(data: populars[index])),
    ),
  );
}
