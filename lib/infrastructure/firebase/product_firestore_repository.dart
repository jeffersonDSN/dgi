import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dgi/domain/core/types_defs.dart';
import 'package:dgi/domain/entities/product/product.dart';
import 'package:dgi/domain/repositories/abs_i_crud_repository.dart';
import 'package:dgi/infrastructure/firebase/tenant_firestore_repository.dart';

class ProductFireStoreRepository extends TenantFirestoreRepository
    implements AbsICRUDRepository<Product> {
  ProductFireStoreRepository({required super.tenantId})
      : super(collectionName: 'product');

  @override
  Future<List<Product>> getAll() async {
    var querySnapshot = await collection.get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => Product.fromJson(e))
        .toList();
  }

  @override
  Future<Product> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return Product.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, String>> post(Product value) async {
    var produc = {
      'name': value.name,
      'number': value.number,
      'vehicle': value.vehicle,
      'brand': value.brand,
      'quantity': value.quantity,
      'price': value.price,
      //'base64Image': value.base64Image,
    };

    var doc = await collection.add(produc);
    return right(doc.id);
  }

  @override
  Future<Either<ErrorFields, bool>> put(Product value) async {
    var produc = {
      'name': value.name,
      'number': value.number,
      'vehicle': value.vehicle,
      'brand': value.brand,
      'quantity': value.quantity,
      'price': value.price,
      //'base64Image': value.base64Image,
    };

    await collection.doc(value.id).update(produc);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }
}
