extension IterableMapIndexed<T> on Iterable<T> {
  Iterable<R> mapIndexed<R>(R Function(int index, T element) convert) sync* {
    int index = 0;

    for (final element in this) {
      yield convert(index++, element);
    }
  }
}
