// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductResponse product) addToWishList,
    required TResult Function(ProductResponse product) removeFromWishList,
    required TResult Function() getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductResponse product)? addToWishList,
    TResult? Function(ProductResponse product)? removeFromWishList,
    TResult? Function()? getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductResponse product)? addToWishList,
    TResult Function(ProductResponse product)? removeFromWishList,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
    required TResult Function(_GetWishList value) getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
    TResult? Function(_GetWishList value)? getWishList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    TResult Function(_GetWishList value)? getWishList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductsEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductResponse product) addToWishList,
    required TResult Function(ProductResponse product) removeFromWishList,
    required TResult Function() getWishList,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductResponse product)? addToWishList,
    TResult? Function(ProductResponse product)? removeFromWishList,
    TResult? Function()? getWishList,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductResponse product)? addToWishList,
    TResult Function(ProductResponse product)? removeFromWishList,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
    required TResult Function(_GetWishList value) getWishList,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
    TResult? Function(_GetWishList value)? getWishList,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    TResult Function(_GetWishList value)? getWishList,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddToWishListImplCopyWith<$Res> {
  factory _$$AddToWishListImplCopyWith(
          _$AddToWishListImpl value, $Res Function(_$AddToWishListImpl) then) =
      __$$AddToWishListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductResponse product});
}

/// @nodoc
class __$$AddToWishListImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$AddToWishListImpl>
    implements _$$AddToWishListImplCopyWith<$Res> {
  __$$AddToWishListImplCopyWithImpl(
      _$AddToWishListImpl _value, $Res Function(_$AddToWishListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddToWishListImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse,
    ));
  }
}

/// @nodoc

class _$AddToWishListImpl implements _AddToWishList {
  const _$AddToWishListImpl(this.product);

  @override
  final ProductResponse product;

  @override
  String toString() {
    return 'ProductsEvent.addToWishList(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToWishListImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToWishListImplCopyWith<_$AddToWishListImpl> get copyWith =>
      __$$AddToWishListImplCopyWithImpl<_$AddToWishListImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductResponse product) addToWishList,
    required TResult Function(ProductResponse product) removeFromWishList,
    required TResult Function() getWishList,
  }) {
    return addToWishList(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductResponse product)? addToWishList,
    TResult? Function(ProductResponse product)? removeFromWishList,
    TResult? Function()? getWishList,
  }) {
    return addToWishList?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductResponse product)? addToWishList,
    TResult Function(ProductResponse product)? removeFromWishList,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
    required TResult Function(_GetWishList value) getWishList,
  }) {
    return addToWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
    TResult? Function(_GetWishList value)? getWishList,
  }) {
    return addToWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    TResult Function(_GetWishList value)? getWishList,
    required TResult orElse(),
  }) {
    if (addToWishList != null) {
      return addToWishList(this);
    }
    return orElse();
  }
}

abstract class _AddToWishList implements ProductsEvent {
  const factory _AddToWishList(final ProductResponse product) =
      _$AddToWishListImpl;

  ProductResponse get product;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddToWishListImplCopyWith<_$AddToWishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromWishListImplCopyWith<$Res> {
  factory _$$RemoveFromWishListImplCopyWith(_$RemoveFromWishListImpl value,
          $Res Function(_$RemoveFromWishListImpl) then) =
      __$$RemoveFromWishListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductResponse product});
}

/// @nodoc
class __$$RemoveFromWishListImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$RemoveFromWishListImpl>
    implements _$$RemoveFromWishListImplCopyWith<$Res> {
  __$$RemoveFromWishListImplCopyWithImpl(_$RemoveFromWishListImpl _value,
      $Res Function(_$RemoveFromWishListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveFromWishListImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductResponse,
    ));
  }
}

/// @nodoc

class _$RemoveFromWishListImpl implements _RemoveFromWishList {
  const _$RemoveFromWishListImpl(this.product);

  @override
  final ProductResponse product;

  @override
  String toString() {
    return 'ProductsEvent.removeFromWishList(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromWishListImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromWishListImplCopyWith<_$RemoveFromWishListImpl> get copyWith =>
      __$$RemoveFromWishListImplCopyWithImpl<_$RemoveFromWishListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductResponse product) addToWishList,
    required TResult Function(ProductResponse product) removeFromWishList,
    required TResult Function() getWishList,
  }) {
    return removeFromWishList(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductResponse product)? addToWishList,
    TResult? Function(ProductResponse product)? removeFromWishList,
    TResult? Function()? getWishList,
  }) {
    return removeFromWishList?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductResponse product)? addToWishList,
    TResult Function(ProductResponse product)? removeFromWishList,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (removeFromWishList != null) {
      return removeFromWishList(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
    required TResult Function(_GetWishList value) getWishList,
  }) {
    return removeFromWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
    TResult? Function(_GetWishList value)? getWishList,
  }) {
    return removeFromWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    TResult Function(_GetWishList value)? getWishList,
    required TResult orElse(),
  }) {
    if (removeFromWishList != null) {
      return removeFromWishList(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromWishList implements ProductsEvent {
  const factory _RemoveFromWishList(final ProductResponse product) =
      _$RemoveFromWishListImpl;

  ProductResponse get product;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveFromWishListImplCopyWith<_$RemoveFromWishListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWishListImplCopyWith<$Res> {
  factory _$$GetWishListImplCopyWith(
          _$GetWishListImpl value, $Res Function(_$GetWishListImpl) then) =
      __$$GetWishListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWishListImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$GetWishListImpl>
    implements _$$GetWishListImplCopyWith<$Res> {
  __$$GetWishListImplCopyWithImpl(
      _$GetWishListImpl _value, $Res Function(_$GetWishListImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetWishListImpl implements _GetWishList {
  const _$GetWishListImpl();

  @override
  String toString() {
    return 'ProductsEvent.getWishList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWishListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProductResponse product) addToWishList,
    required TResult Function(ProductResponse product) removeFromWishList,
    required TResult Function() getWishList,
  }) {
    return getWishList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProductResponse product)? addToWishList,
    TResult? Function(ProductResponse product)? removeFromWishList,
    TResult? Function()? getWishList,
  }) {
    return getWishList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProductResponse product)? addToWishList,
    TResult Function(ProductResponse product)? removeFromWishList,
    TResult Function()? getWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddToWishList value) addToWishList,
    required TResult Function(_RemoveFromWishList value) removeFromWishList,
    required TResult Function(_GetWishList value) getWishList,
  }) {
    return getWishList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddToWishList value)? addToWishList,
    TResult? Function(_RemoveFromWishList value)? removeFromWishList,
    TResult? Function(_GetWishList value)? getWishList,
  }) {
    return getWishList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddToWishList value)? addToWishList,
    TResult Function(_RemoveFromWishList value)? removeFromWishList,
    TResult Function(_GetWishList value)? getWishList,
    required TResult orElse(),
  }) {
    if (getWishList != null) {
      return getWishList(this);
    }
    return orElse();
  }
}

abstract class _GetWishList implements ProductsEvent {
  const factory _GetWishList() = _$GetWishListImpl;
}

/// @nodoc
mixin _$ProductsState {
  ViewState get viewState => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  List<ProductResponse> get products => throw _privateConstructorUsedError;
  List<ProductResponse> get wishListItems => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState viewState, String errorMessage,
            List<ProductResponse> products, List<ProductResponse> wishListItems)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState viewState,
            String errorMessage,
            List<ProductResponse> products,
            List<ProductResponse> wishListItems)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState viewState,
            String errorMessage,
            List<ProductResponse> products,
            List<ProductResponse> wishListItems)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call(
      {ViewState viewState,
      String errorMessage,
      List<ProductResponse> products,
      List<ProductResponse> wishListItems});
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? wishListItems = null,
  }) {
    return _then(_value.copyWith(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      wishListItems: null == wishListItems
          ? _value.wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState viewState,
      String errorMessage,
      List<ProductResponse> products,
      List<ProductResponse> wishListItems});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewState = null,
    Object? errorMessage = null,
    Object? products = null,
    Object? wishListItems = null,
  }) {
    return _then(_$InitialImpl(
      viewState: null == viewState
          ? _value.viewState
          : viewState // ignore: cast_nullable_to_non_nullable
              as ViewState,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      wishListItems: null == wishListItems
          ? _value._wishListItems
          : wishListItems // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.viewState = ViewState.idle,
      this.errorMessage = '',
      final List<ProductResponse> products = const [],
      final List<ProductResponse> wishListItems = const []})
      : _products = products,
        _wishListItems = wishListItems;

  @override
  @JsonKey()
  final ViewState viewState;
  @override
  @JsonKey()
  final String errorMessage;
  final List<ProductResponse> _products;
  @override
  @JsonKey()
  List<ProductResponse> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<ProductResponse> _wishListItems;
  @override
  @JsonKey()
  List<ProductResponse> get wishListItems {
    if (_wishListItems is EqualUnmodifiableListView) return _wishListItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishListItems);
  }

  @override
  String toString() {
    return 'ProductsState.initial(viewState: $viewState, errorMessage: $errorMessage, products: $products, wishListItems: $wishListItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.viewState, viewState) ||
                other.viewState == viewState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._wishListItems, _wishListItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      viewState,
      errorMessage,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_wishListItems));

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState viewState, String errorMessage,
            List<ProductResponse> products, List<ProductResponse> wishListItems)
        initial,
  }) {
    return initial(viewState, errorMessage, products, wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ViewState viewState,
            String errorMessage,
            List<ProductResponse> products,
            List<ProductResponse> wishListItems)?
        initial,
  }) {
    return initial?.call(viewState, errorMessage, products, wishListItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ViewState viewState,
            String errorMessage,
            List<ProductResponse> products,
            List<ProductResponse> wishListItems)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(viewState, errorMessage, products, wishListItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductsState {
  const factory _Initial(
      {final ViewState viewState,
      final String errorMessage,
      final List<ProductResponse> products,
      final List<ProductResponse> wishListItems}) = _$InitialImpl;

  @override
  ViewState get viewState;
  @override
  String get errorMessage;
  @override
  List<ProductResponse> get products;
  @override
  List<ProductResponse> get wishListItems;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
