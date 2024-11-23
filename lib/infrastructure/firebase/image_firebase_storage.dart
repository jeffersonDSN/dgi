import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dgi/domain/core/types_defs.dart';
import 'package:dgi/domain/repositories/abs_i_image_repository.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ImageFirebaseStorage implements AbsIImageRepository<Uint8List> {
  final Reference ref = FirebaseStorage.instance.ref();

  @override
  Future<Either<ErrorFields, String>> uploadUint8List(data) async {
    try {
      final String uniqueFileName =
          'images/${DateTime.now().millisecondsSinceEpoch}.png';

      var result = await ref.child(uniqueFileName).putData(data);

      return right(await result.ref.getDownloadURL());
    } catch (e) {
      return left(
        (
          code: 50,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<ErrorFields, Uint8List>> downloadUint8List(
      String fullPath) async {
    try {
      var data = await ref.child(fullPath).getData();
      return right(data!);
    } catch (e) {
      return left(
        (
          code: 50,
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<void> deleteImage(String fullPath) async {
    final ref = FirebaseStorage.instance.ref().child(fullPath);
    await ref.delete();
  }
}
