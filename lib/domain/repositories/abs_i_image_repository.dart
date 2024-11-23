import 'package:dartz/dartz.dart';
import 'package:dgi/domain/core/types_defs.dart';

abstract interface class AbsIImageRepository<T> {
  Future<Either<ErrorFields, String>> uploadUint8List(T value);
}
