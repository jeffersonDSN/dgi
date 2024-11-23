import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dgi/domain/entities/Vehicle/vehicle.dart';
import 'package:dgi/domain/entities/brand/brand.dart';
import 'package:dgi/domain/entities/product_other_store/product_other_store.dart';
import 'package:dgi/domain/repositories/abs_i_product_other_stores_repository.dart';
import 'package:dgi/infrastructure/firebase/firestore_repository.dart';

class ProductOtherStoresFireStoreRepository extends FireStoreRepository
    implements AbsIProductOtherStoresRepository {
  final String tenantId;

  ProductOtherStoresFireStoreRepository({required this.tenantId})
      : super(collectionName: 'tenant');

  @override
  Future<List<ProductOtherStore>> getAll() async {
    List<ProductOtherStore> allProducts = [];

    QuerySnapshot tenantSnapshot =
        await FirebaseFirestore.instance.collection('tenant').get();

    for (var tenantDoc in tenantSnapshot.docs) {
      if (tenantDoc.id != this.tenantId) {
        String tenantId = tenantDoc.id;

        QuerySnapshot brandSnapshot =
            await tenantDoc.reference.collection('brand').get();

        List<Brand> brands = brandSnapshot.docs
            .map((DocumentSnapshot document) {
              var doc = document.data() as Map<String, dynamic>;

              return {...doc, 'id': document.id};
            })
            .toList()
            .map((e) => Brand.fromJson(e))
            .toList();

        QuerySnapshot vehicleSnapshot =
            await tenantDoc.reference.collection('vehicle').get();

        List<Vehicle> vehicles = vehicleSnapshot.docs
            .map((DocumentSnapshot document) {
              var doc = document.data() as Map<String, dynamic>;

              return {...doc, 'id': document.id};
            })
            .toList()
            .map((e) => Vehicle.fromJson(e))
            .toList();

        QuerySnapshot productSnapshot =
            await tenantDoc.reference.collection('product').get();

        List<ProductOtherStore> products = productSnapshot.docs
            .map((DocumentSnapshot document) {
              var doc = document.data() as Map<String, dynamic>;

              return {...doc, 'id': document.id};
            })
            .toList()
            .map(
              (e) => ProductOtherStore.fromJson(e).copyWith(
                store: tenantId,
              ),
            )
            .map((product) {
              return product.copyWith(
                brand: product.brand != ''
                    ? brands
                        .firstWhere((brand) => brand.id == product.brand)
                        .name
                    : '',
                vehicle: product.vehicle != ''
                    ? vehicles
                        .firstWhere((vehicle) => vehicle.id == product.vehicle)
                        .name
                    : '',
              );
            })
            .toList();

        allProducts.addAll(products);
      }
    }

    return allProducts;
  }

  @override
  Future<ProductOtherStore> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return ProductOtherStore.fromJson({...doc, 'id': snapshot.id});
  }
}
