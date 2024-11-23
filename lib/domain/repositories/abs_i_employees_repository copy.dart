import 'package:dgi/domain/entities/user/user.dart';
import 'package:dgi/domain/repositories/abs_i_crud_repository.dart';

abstract interface class AbsIUserRepository
    implements AbsICRUDRepository<User> {
  Future<User?> getEmployeeByUserNamePassword(
    String userName,
    String password,
  );

  Future<List<User>> getEmployeesByID(List<String> ids);
}
