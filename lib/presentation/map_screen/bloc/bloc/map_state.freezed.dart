// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapInitial value) initial,
    required TResult Function(MapLoaded value) loaded,
    required TResult Function(MapError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapInitial value)? initial,
    TResult? Function(MapLoaded value)? loaded,
    TResult? Function(MapError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapInitial value)? initial,
    TResult Function(MapLoaded value)? loaded,
    TResult Function(MapError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MapInitialImplCopyWith<$Res> {
  factory _$$MapInitialImplCopyWith(
          _$MapInitialImpl value, $Res Function(_$MapInitialImpl) then) =
      __$$MapInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MapInitialImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapInitialImpl>
    implements _$$MapInitialImplCopyWith<$Res> {
  __$$MapInitialImplCopyWithImpl(
      _$MapInitialImpl _value, $Res Function(_$MapInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MapInitialImpl implements MapInitial {
  const _$MapInitialImpl();

  @override
  String toString() {
    return 'MapState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MapInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapInitial value) initial,
    required TResult Function(MapLoaded value) loaded,
    required TResult Function(MapError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapInitial value)? initial,
    TResult? Function(MapLoaded value)? loaded,
    TResult? Function(MapError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapInitial value)? initial,
    TResult Function(MapLoaded value)? loaded,
    TResult Function(MapError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MapInitial implements MapState {
  const factory MapInitial() = _$MapInitialImpl;
}

/// @nodoc
abstract class _$$MapLoadedImplCopyWith<$Res> {
  factory _$$MapLoadedImplCopyWith(
          _$MapLoadedImpl value, $Res Function(_$MapLoadedImpl) then) =
      __$$MapLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<LatLng> currentPolygonPoints,
      Set<Polygon> savedPolygons,
      Set<Polyline> polylines,
      Set<Marker> markers,
      int polygonIdCounter,
      bool isInitialized,
      LatLng? currentLocation});
}

/// @nodoc
class __$$MapLoadedImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapLoadedImpl>
    implements _$$MapLoadedImplCopyWith<$Res> {
  __$$MapLoadedImplCopyWithImpl(
      _$MapLoadedImpl _value, $Res Function(_$MapLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPolygonPoints = null,
    Object? savedPolygons = null,
    Object? polylines = null,
    Object? markers = null,
    Object? polygonIdCounter = null,
    Object? isInitialized = null,
    Object? currentLocation = freezed,
  }) {
    return _then(_$MapLoadedImpl(
      currentPolygonPoints: null == currentPolygonPoints
          ? _value._currentPolygonPoints
          : currentPolygonPoints // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      savedPolygons: null == savedPolygons
          ? _value._savedPolygons
          : savedPolygons // ignore: cast_nullable_to_non_nullable
              as Set<Polygon>,
      polylines: null == polylines
          ? _value._polylines
          : polylines // ignore: cast_nullable_to_non_nullable
              as Set<Polyline>,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as Set<Marker>,
      polygonIdCounter: null == polygonIdCounter
          ? _value.polygonIdCounter
          : polygonIdCounter // ignore: cast_nullable_to_non_nullable
              as int,
      isInitialized: null == isInitialized
          ? _value.isInitialized
          : isInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLocation: freezed == currentLocation
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as LatLng?,
    ));
  }
}

/// @nodoc

class _$MapLoadedImpl implements MapLoaded {
  const _$MapLoadedImpl(
      {final List<LatLng> currentPolygonPoints = const [],
      final Set<Polygon> savedPolygons = const {},
      final Set<Polyline> polylines = const {},
      final Set<Marker> markers = const {},
      this.polygonIdCounter = 1,
      this.isInitialized = false,
      this.currentLocation})
      : _currentPolygonPoints = currentPolygonPoints,
        _savedPolygons = savedPolygons,
        _polylines = polylines,
        _markers = markers;

  final List<LatLng> _currentPolygonPoints;
  @override
  @JsonKey()
  List<LatLng> get currentPolygonPoints {
    if (_currentPolygonPoints is EqualUnmodifiableListView)
      return _currentPolygonPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentPolygonPoints);
  }

  final Set<Polygon> _savedPolygons;
  @override
  @JsonKey()
  Set<Polygon> get savedPolygons {
    if (_savedPolygons is EqualUnmodifiableSetView) return _savedPolygons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_savedPolygons);
  }

  final Set<Polyline> _polylines;
  @override
  @JsonKey()
  Set<Polyline> get polylines {
    if (_polylines is EqualUnmodifiableSetView) return _polylines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_polylines);
  }

  final Set<Marker> _markers;
  @override
  @JsonKey()
  Set<Marker> get markers {
    if (_markers is EqualUnmodifiableSetView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_markers);
  }

  @override
  @JsonKey()
  final int polygonIdCounter;
  @override
  @JsonKey()
  final bool isInitialized;
  @override
  final LatLng? currentLocation;

  @override
  String toString() {
    return 'MapState.loaded(currentPolygonPoints: $currentPolygonPoints, savedPolygons: $savedPolygons, polylines: $polylines, markers: $markers, polygonIdCounter: $polygonIdCounter, isInitialized: $isInitialized, currentLocation: $currentLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._currentPolygonPoints, _currentPolygonPoints) &&
            const DeepCollectionEquality()
                .equals(other._savedPolygons, _savedPolygons) &&
            const DeepCollectionEquality()
                .equals(other._polylines, _polylines) &&
            const DeepCollectionEquality().equals(other._markers, _markers) &&
            (identical(other.polygonIdCounter, polygonIdCounter) ||
                other.polygonIdCounter == polygonIdCounter) &&
            (identical(other.isInitialized, isInitialized) ||
                other.isInitialized == isInitialized) &&
            (identical(other.currentLocation, currentLocation) ||
                other.currentLocation == currentLocation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_currentPolygonPoints),
      const DeepCollectionEquality().hash(_savedPolygons),
      const DeepCollectionEquality().hash(_polylines),
      const DeepCollectionEquality().hash(_markers),
      polygonIdCounter,
      isInitialized,
      currentLocation);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapLoadedImplCopyWith<_$MapLoadedImpl> get copyWith =>
      __$$MapLoadedImplCopyWithImpl<_$MapLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(currentPolygonPoints, savedPolygons, polylines, markers,
        polygonIdCounter, isInitialized, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(currentPolygonPoints, savedPolygons, polylines, markers,
        polygonIdCounter, isInitialized, currentLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(currentPolygonPoints, savedPolygons, polylines, markers,
          polygonIdCounter, isInitialized, currentLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapInitial value) initial,
    required TResult Function(MapLoaded value) loaded,
    required TResult Function(MapError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapInitial value)? initial,
    TResult? Function(MapLoaded value)? loaded,
    TResult? Function(MapError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapInitial value)? initial,
    TResult Function(MapLoaded value)? loaded,
    TResult Function(MapError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MapLoaded implements MapState {
  const factory MapLoaded(
      {final List<LatLng> currentPolygonPoints,
      final Set<Polygon> savedPolygons,
      final Set<Polyline> polylines,
      final Set<Marker> markers,
      final int polygonIdCounter,
      final bool isInitialized,
      final LatLng? currentLocation}) = _$MapLoadedImpl;

  List<LatLng> get currentPolygonPoints;
  Set<Polygon> get savedPolygons;
  Set<Polyline> get polylines;
  Set<Marker> get markers;
  int get polygonIdCounter;
  bool get isInitialized;
  LatLng? get currentLocation;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapLoadedImplCopyWith<_$MapLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MapErrorImplCopyWith<$Res> {
  factory _$$MapErrorImplCopyWith(
          _$MapErrorImpl value, $Res Function(_$MapErrorImpl) then) =
      __$$MapErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MapErrorImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$MapErrorImpl>
    implements _$$MapErrorImplCopyWith<$Res> {
  __$$MapErrorImplCopyWithImpl(
      _$MapErrorImpl _value, $Res Function(_$MapErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MapErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MapErrorImpl implements MapError {
  const _$MapErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MapState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapErrorImplCopyWith<_$MapErrorImpl> get copyWith =>
      __$$MapErrorImplCopyWithImpl<_$MapErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            List<LatLng> currentPolygonPoints,
            Set<Polygon> savedPolygons,
            Set<Polyline> polylines,
            Set<Marker> markers,
            int polygonIdCounter,
            bool isInitialized,
            LatLng? currentLocation)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MapInitial value) initial,
    required TResult Function(MapLoaded value) loaded,
    required TResult Function(MapError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MapInitial value)? initial,
    TResult? Function(MapLoaded value)? loaded,
    TResult? Function(MapError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MapInitial value)? initial,
    TResult Function(MapLoaded value)? loaded,
    TResult Function(MapError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MapError implements MapState {
  const factory MapError(final String message) = _$MapErrorImpl;

  String get message;

  /// Create a copy of MapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapErrorImplCopyWith<_$MapErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
