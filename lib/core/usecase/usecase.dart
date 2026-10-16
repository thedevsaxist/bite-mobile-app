import 'package:calorie_estimator/core/utils/typedefs.dart';

/// A single business action in the domain layer.
abstract interface class UseCase<T, Params> {
  FutureEither<T> call(Params params);
}

/// For use cases that take no input.
final class NoParams {
  const NoParams();
}
