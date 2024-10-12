/// An abstract class to convert a type of M to E type and vice versa
abstract class BaseMapper<M, E> {
  M fromEntity(E entity);

  E toEntity(M model);
}
