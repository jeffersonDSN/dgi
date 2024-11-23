import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:dgi/domain/core/types_defs.dart';
import 'package:dgi/domain/entities/user/user.dart';
import 'package:dgi/domain/repositories/abs_i_employees_repository%20copy.dart';
import 'package:dgi/infrastructure/firestore/firestore_repository.dart';

class UserFireStoreRepository extends FireStoreRepository
    implements AbsIUserRepository {
  final String tenant;

  UserFireStoreRepository({required this.tenant})
      : super(collectionName: 'user');

  @override
  Future<User?> getEmployeeByUserNamePassword(
      String userName, String password) async {
    var querySnapshot = await collection
        .where('email', isEqualTo: userName.toLowerCase())
        .where('password', isEqualTo: password)
        .get();

    var doc = querySnapshot.docs.firstOrNull;
    if (doc != null) {
      var data = doc.data() as Map<String, dynamic>;

      return User.fromJson({...data, 'id': doc.reference.id});
    }

    return Future(() => null);
  }

  Future<List<User>> getUserByUserName(String userName) async {
    var querySnapshot = await collection
        .where('userName', isEqualTo: userName.toLowerCase())
        .get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => User.fromJson(e))
        .toList();
  }

  Future<List<User>> getEmployeeByEmail(String email) async {
    var querySnapshot =
        await collection.where('email', isEqualTo: email.toLowerCase()).get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => User.fromJson(e))
        .toList();
  }

  @override
  Future<List<User>> getAll() async {
    var querySnapshot = await collection
        .where(
          'tenant',
          isEqualTo: tenant,
        )
        .get();

    return querySnapshot.docs
        .map((DocumentSnapshot document) {
          var doc = document.data() as Map<String, dynamic>;

          return {...doc, 'id': document.id};
        })
        .toList()
        .map((e) => User.fromJson(e))
        .toList();
  }

  @override
  Future<List<User>> getEmployeesByID(List<String> ids) async {
    List<Future<DocumentSnapshot>> futures = ids.map((id) {
      return collection.doc(id).get();
    }).toList();

    var querySnapshot = await Future.wait(futures);

    return querySnapshot.map((snapshot) {
      var doc = snapshot.data() as Map<String, dynamic>;
      return User.fromJson({...doc, 'id': snapshot.id});
    }).toList();
  }

  @override
  Future<User> getById(String id) async {
    var snapshot = await collection.doc(id).get();

    var doc = snapshot.data() as Map<String, dynamic>;
    return User.fromJson({...doc, 'id': snapshot.id});
  }

  @override
  Future<Either<ErrorFields, String>> post(User value) async {
    if (value.email.isNotEmpty) {
      var result = await getUserByUserName(value.email);

      if (result.isNotEmpty) {
        if (value.id.isEmpty || result.any((user) => user.id != value.id)) {
          return left(
            (
              code: 1,
              message: 'Username is already being used',
            ),
          );
        }
      }
    }

    if (value.email.isNotEmpty) {
      var result = await getEmployeeByEmail(value.email);

      if (result.isNotEmpty) {
        if (value.id.isEmpty ||
            result.any((employee) => employee.id != value.id)) {
          return left(
            (
              code: 2,
              message: 'Email is already being used',
            ),
          );
        }
      }
    }

    var user = {
      'firstName': value.firstName,
      'lastName': value.lastName,
      'email': value.email.toLowerCase(),
      'phoneNumber': value.phoneNumber,
      'password': value.password,
      'tenant': value.tenant.isNotEmpty ? value.tenant : tenant,
    };

    var doc = await collection.add(user);
    return right(doc.id);
  }

  @override
  Future<Either<ErrorFields, bool>> put(User value) async {
    if (value.email.isNotEmpty) {
      var result = await getUserByUserName(value.email);

      if (result.isNotEmpty) {
        if (value.id.isEmpty || result.any((user) => user.id != value.id)) {
          return left(
            (
              code: 1,
              message: 'Username is already being used',
            ),
          );
        }
      }
    }

    if (value.email.isNotEmpty) {
      var result = await getEmployeeByEmail(value.email);

      if (result.isNotEmpty) {
        if (value.id.isEmpty || result.any((user) => user.id != value.id)) {
          return left(
            (
              code: 2,
              message: 'Email is already being used',
            ),
          );
        }
      }
    }

    var user = {
      'firstName': value.firstName,
      'lastName': value.lastName,
      'email': value.email.toLowerCase(),
      'phoneNumber': value.phoneNumber,
      'password': value.password,
      'tenant': value.tenant.isNotEmpty ? value.tenant : tenant,
    };

    await collection.doc(value.id).update(user);
    return right(true);
  }

  @override
  Future<bool> delete(String id) async {
    await collection.doc(id).delete();
    return true;
  }
}
