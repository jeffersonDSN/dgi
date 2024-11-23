import 'package:dgi/domain/entities/product_other_store/product_other_store.dart';

abstract interface class AbsIProductOtherStoresRepository {
  Future<List<ProductOtherStore>> getAll();
  Future<ProductOtherStore> getById(String id);
}
