
abstract class UseCase<I, O> {
  Future<O> invoke(I input);
}