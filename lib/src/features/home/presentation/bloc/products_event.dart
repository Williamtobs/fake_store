part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.started() = _Started;
  const factory ProductsEvent.addToWishList(ProductResponse product) =
      _AddToWishList;
  const factory ProductsEvent.removeFromWishList(ProductResponse product) =
      _RemoveFromWishList;
  const factory ProductsEvent.getWishList() = _GetWishList;
}
