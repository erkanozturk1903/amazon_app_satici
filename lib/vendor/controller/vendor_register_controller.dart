import 'package:image_picker/image_picker.dart';

class VendorController {

  //TODO: Function to PICK STORe IMAGe
  pickStoreImage(ImageSource source) async {
    final ImagePicker _imagePicker = ImagePicker();

    XFile? _file = await _imagePicker.pickImage(source: source);

    if (_file != null) {
      return await _file.readAsBytes();
    } else {
      print('Resim seçilmedi');
    }
  }

  //TODO: FUNTION TO PICK STORA IMAGE ENDS HERE
}
