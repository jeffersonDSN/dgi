import 'package:dgi/domain/controllers/crud_controller.dart';
import 'package:dgi/domain/entities/user/user.dart';
import 'package:dgi/domain/repositories/abs_i_employees_repository%20copy.dart';

class UserController extends CRUDController<User> {
  final AbsIUserRepository _repository;

  UserController({required AbsIUserRepository repository})
      : _repository = repository,
        super(repository: repository);

  Future<User?> getEmployeeByUserNamePassword(
    String userName,
    String password,
  ) {
    return _repository.getEmployeeByUserNamePassword(userName, password);
  }

  Future<List<User>> getEmployeesByID(List<String> ids) {
    return _repository.getEmployeesByID(ids);
  }
}
