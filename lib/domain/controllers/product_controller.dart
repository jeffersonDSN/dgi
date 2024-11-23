import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:dgi/domain/core/types_defs.dart';
import 'package:dgi/domain/entities/product/product.dart';
import 'package:dgi/domain/repositories/abs_i_crud_repository.dart';
import 'package:dgi/domain/repositories/abs_i_image_repository.dart';

class ProductController {
  final AbsIImageRepository _imageRepository;
  final AbsICRUDRepository<Product> _repository;

  ProductController({
    required AbsICRUDRepository<Product> repository,
    required AbsIImageRepository imageRepository,
  })  : _imageRepository = imageRepository,
        _repository = repository;

  Future<List<Product>> getAll() {
    return _repository.getAll();
  }

  Future<Product> getById(String id) {
    return _repository.getById(id);
  }

  Future<Either<ErrorFields, String>> create(
    Product value,
    Uint8List? data,
  ) async {
    String image = '';

    if (data != null) {
      image = await _uploadUint8List(data);
    }

    return await _repository.post(value.copyWith(image: image));
  }

  Future<Either<ErrorFields, bool>> update(
    Product value,
    Uint8List? data,
  ) async {
    String image = '';

    if (value.image != '') {
      await _deleteImage(value.image);
    }

    if (data != null) {
      image = await _uploadUint8List(data);
    }

    return _repository.put(value.copyWith(image: image));
  }

  Future<bool> delete(String id) {
    return _repository.delete(id);
  }

  Future<String> _uploadUint8List(Uint8List data) async {
    return _imageRepository.uploadUint8List(data).then(
          (either) => either.fold(
            (l) => '',
            (r) => r,
          ),
        );
  }

  Future<Uint8List?> downloadUint8List(String fullPath) async {
    return _imageRepository.downloadUint8List(fullPath).then(
          (either) => either.fold(
            (l) => null,
            (r) => r,
          ),
        );
  }

  Future<void> _deleteImage(String fullPath) {
    return _imageRepository.deleteImage(fullPath);
  }
}
