import 'dart:typed_data';

import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/product/product.dart';
import 'package:dgi/domain/repositories/abs_i_image_repository.dart';

class ProductController extends CRUDController<Product> {
  final AbsIImageRepository imageRepository;

  ProductController({
    required super.repository,
    required this.imageRepository,
  });

  Future<String> uploadUint8List(Uint8List data) async {
    return imageRepository.uploadUint8List(data).then(
          (either) => either.fold(
            (l) => '',
            (r) => r,
          ),
        );
  }
}
