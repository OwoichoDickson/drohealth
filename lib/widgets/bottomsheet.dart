import 'package:drohealth/imports/imports.dart';

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Wrap(
          children: <Widget>[
            Text('Emzor Paracetamol have been successfully added')
           
          ],
        );
      });
}
