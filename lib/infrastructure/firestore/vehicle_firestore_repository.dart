import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dgi/domain/core/types_defs.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/repositories/abs_i_crud_repository.dart';
import 'package:dgi/infrastructure/firestore/tenant_firestore_repository.dart';

class VehicleFireStoreRepository extends TenantFirestoreRepository
    implements AbsICRUDRepository<Vehicle> {
  VehicleFireStoreRepository({required super.tenantId})
      : super(collectionName: 'vehicle');

  @override
  Future<List<Vehicle>> getAll() async {
    var querySnapshot = await collection.get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => Vehicle.fromJson(e))
        .toList();
  }

  @override
  Future<Vehicle> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return Vehicle.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, String>> post(Vehicle value) async {
    var vehicle = {
      'name': value.name,
      'model': value.model,
      'fromYear': value.fromYear,
      'toYear': value.toYear,
      'brand': value.brand,
    };

    var doc = await collection.add(vehicle);
    return right(doc.id);
  }

  @override
  Future<Either<ErrorFields, bool>> put(Vehicle value) async {
    var vehicle = {
      'name': value.name,
      'model': value.model,
      'fromYear': value.fromYear,
      'toYear': value.toYear,
      'brand': value.brand,
    };

    await collection.doc(value.id).update(vehicle);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }
}
