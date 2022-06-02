import 'package:drohealth/imports/imports.dart';

void main() {
  runApp( MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: Pharm(),
    ),);
}

//Pharm()
//ProductScreen()
//Cart