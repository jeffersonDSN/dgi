import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dgi/domain/core/types_defs.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/domain/repositories/abs_i_crud_repository.dart';
import 'package:dgi/infrastructure/firebase/tenant_firestore_repository.dart';

class BrandFireStoreRepository extends TenantFirestoreRepository
    implements AbsICRUDRepository<Brand> {
  BrandFireStoreRepository({required super.tenantId})
      : super(collectionName: 'brand');

  @override
  Future<List<Brand>> getAll() async {
    var querySnapshot = await collection.get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => Brand.fromJson(e))
        .toList();
  }

  @override
  Future<Brand> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return Brand.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, String>> post(Brand value) async {
    var produc = {
      'name': value.name,
    };

    var doc = await collection.add(produc);
    return right(doc.id);
  }

  @override
  Future<Either<ErrorFields, bool>> put(Brand value) async {
    var produc = {
      'name': value.name,
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
