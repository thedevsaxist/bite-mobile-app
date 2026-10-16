import 'package:fpdart/fpdart.dart';

import 'package:calorie_estimator/core/error/failures.dart';

typedef FutureEither<T> = Future<Either<Failure, T>>;
typedef JsonMap = Map<String, dynamic>;
