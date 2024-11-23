import 'package:dgi/domain/entities/product_other_store/product_other_store.dart';
import 'package:dgi/domain/repositories/abs_i_product_other_stores_repository.dart';

class ProductOtherStoresController {
  final AbsIProductOtherStoresRepository _repository;

  ProductOtherStoresController({
    required AbsIProductOtherStoresRepository repository,
  }) : _repository = repository;

  Future<List<ProductOtherStore>> getAll() {
    return _repository.getAll();
  }

  Future<ProductOtherStore> getById(String id) {
    return _repository.getById(id);
  }
}
