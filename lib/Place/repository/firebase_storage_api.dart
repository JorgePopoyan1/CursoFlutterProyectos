import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageAPI {
  final Reference _storageReference = FirebaseStorage.instance.ref();

  Future<String> uploadFile(String path, File image) async {
    final uploadTask = await _storageReference.child(path).putFile(image);
    final task = await uploadTask;

    return await task.ref.getDownloadURL();
  }
}
