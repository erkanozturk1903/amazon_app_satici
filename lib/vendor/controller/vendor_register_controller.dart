import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class VendorController {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //TODO: Function to store image in firebase store

  _uploadVendorImageTOStorage(Uint8List? image) async {
    Reference ref =
        _storage.ref().child('storeImages').child(_auth.currentUser!.uid);
    UploadTask uploadTask = ref.putData(image!);

    TaskSnapshot snapshot = await uploadTask;

    String downloadUrl = await snapshot.ref.getDownloadURL();
    return downloadUrl;
  }

  //TODO: Function to store image in firebase storage ends here

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

//TODO: function to save vendor data
  Future<String> registerVendor(
    String businessName,
    String email,
    String phoneNumber,
    String countryValue,
    String stateValue,
    String cityValue,
    String taxRegistered,
    String taxNumber,
    Uint8List? image,
  ) async {
    String res = 'Beklenmeyen bir hata oluştu.';
    try {
      String storeImage = await _uploadVendorImageTOStorage(image);
      //TODO: SAVE DATA TO CLOUD FİRESTORE
      await _firestore.collection('vendors').doc(_auth.currentUser!.uid).set({
        'businessName': businessName,
        'email': email,
        'phoneNumber': phoneNumber,
        'countryValue': countryValue,
        'stateValue': stateValue,
        'cityValue': cityValue,
        'taxRegistered': taxRegistered,
        'taxNumber': taxNumber,
        'storeImage': storeImage,
        'approved': false,
        'vendorId': _auth.currentUser!.uid,
      });
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  //TODO: Function to save vendor data ends here

}
