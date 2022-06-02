import 'package:drohealth/imports/imports.dart';

class CatergoryItem extends StatelessWidget {
  CatergoryItem({Key? key, required this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
     // margin: EdgeInsets.only(right: 10),
      height: 130, width: 150,
      // color: secondary,
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: Container(
              height: 100,
              width: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(const Color.fromARGB(221, 62, 57, 57).withOpacity(0.8), BlendMode.modulate),
                    fit: BoxFit.cover, image: NetworkImage(data["image"])),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 40,
            child: SizedBox(
                width: 220,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text(
                            data["name"],
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )),
                        ],
                      ),
                    ])),
          )
        ],
      ),
    );
  }
}
