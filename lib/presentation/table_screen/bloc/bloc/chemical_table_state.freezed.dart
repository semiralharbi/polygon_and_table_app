// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chemical_table_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChemicalTableState {
  List<ChemicalElement> get elements => throw _privateConstructorUsedError;
  List<ChemicalElement> get originalElements =>
      throw _privateConstructorUsedError;
  List<SortState> get sortStates => throw _privateConstructorUsedError;
  List<int> get sortedIndices => throw _privateConstructorUsedError;

  /// Create a copy of ChemicalTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChemicalTableStateCopyWith<ChemicalTableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChemicalTableStateCopyWith<$Res> {
  factory $ChemicalTableStateCopyWith(
          ChemicalTableState value, $Res Function(ChemicalTableState) then) =
      _$ChemicalTableStateCopyWithImpl<$Res, ChemicalTableState>;
  @useResult
  $Res call(
      {List<ChemicalElement> elements,
      List<ChemicalElement> originalElements,
      List<SortState> sortStates,
      List<int> sortedIndices});
}

/// @nodoc
class _$ChemicalTableStateCopyWithImpl<$Res, $Val extends ChemicalTableState>
    implements $ChemicalTableStateCopyWith<$Res> {
  _$ChemicalTableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChemicalTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? originalElements = null,
    Object? sortStates = null,
    Object? sortedIndices = null,
  }) {
    return _then(_value.copyWith(
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ChemicalElement>,
      originalElements: null == originalElements
          ? _value.originalElements
          : originalElements // ignore: cast_nullable_to_non_nullable
              as List<ChemicalElement>,
      sortStates: null == sortStates
          ? _value.sortStates
          : sortStates // ignore: cast_nullable_to_non_nullable
              as List<SortState>,
      sortedIndices: null == sortedIndices
          ? _value.sortedIndices
          : sortedIndices // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChemicalTableStateImplCopyWith<$Res>
    implements $ChemicalTableStateCopyWith<$Res> {
  factory _$$ChemicalTableStateImplCopyWith(_$ChemicalTableStateImpl value,
          $Res Function(_$ChemicalTableStateImpl) then) =
      __$$ChemicalTableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChemicalElement> elements,
      List<ChemicalElement> originalElements,
      List<SortState> sortStates,
      List<int> sortedIndices});
}

/// @nodoc
class __$$ChemicalTableStateImplCopyWithImpl<$Res>
    extends _$ChemicalTableStateCopyWithImpl<$Res, _$ChemicalTableStateImpl>
    implements _$$ChemicalTableStateImplCopyWith<$Res> {
  __$$ChemicalTableStateImplCopyWithImpl(_$ChemicalTableStateImpl _value,
      $Res Function(_$ChemicalTableStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChemicalTableState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? elements = null,
    Object? originalElements = null,
    Object? sortStates = null,
    Object? sortedIndices = null,
  }) {
    return _then(_$ChemicalTableStateImpl(
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<ChemicalElement>,
      originalElements: null == originalElements
          ? _value._originalElements
          : originalElements // ignore: cast_nullable_to_non_nullable
              as List<ChemicalElement>,
      sortStates: null == sortStates
          ? _value._sortStates
          : sortStates // ignore: cast_nullable_to_non_nullable
              as List<SortState>,
      sortedIndices: null == sortedIndices
          ? _value._sortedIndices
          : sortedIndices // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ChemicalTableStateImpl implements _ChemicalTableState {
  const _$ChemicalTableStateImpl(
      {final List<ChemicalElement> elements = const [],
      final List<ChemicalElement> originalElements = const [],
      final List<SortState> sortStates = const [],
      final List<int> sortedIndices = const []})
      : _elements = elements,
        _originalElements = originalElements,
        _sortStates = sortStates,
        _sortedIndices = sortedIndices;

  final List<ChemicalElement> _elements;
  @override
  @JsonKey()
  List<ChemicalElement> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  final List<ChemicalElement> _originalElements;
  @override
  @JsonKey()
  List<ChemicalElement> get originalElements {
    if (_originalElements is EqualUnmodifiableListView)
      return _originalElements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_originalElements);
  }

  final List<SortState> _sortStates;
  @override
  @JsonKey()
  List<SortState> get sortStates {
    if (_sortStates is EqualUnmodifiableListView) return _sortStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortStates);
  }

  final List<int> _sortedIndices;
  @override
  @JsonKey()
  List<int> get sortedIndices {
    if (_sortedIndices is EqualUnmodifiableListView) return _sortedIndices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sortedIndices);
  }

  @override
  String toString() {
    return 'ChemicalTableState(elements: $elements, originalElements: $originalElements, sortStates: $sortStates, sortedIndices: $sortedIndices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChemicalTableStateImpl &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._originalElements, _originalElements) &&
            const DeepCollectionEquality()
                .equals(other._sortStates, _sortStates) &&
            const DeepCollectionEquality()
                .equals(other._sortedIndices, _sortedIndices));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_originalElements),
      const DeepCollectionEquality().hash(_sortStates),
      const DeepCollectionEquality().hash(_sortedIndices));

  /// Create a copy of ChemicalTableState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChemicalTableStateImplCopyWith<_$ChemicalTableStateImpl> get copyWith =>
      __$$ChemicalTableStateImplCopyWithImpl<_$ChemicalTableStateImpl>(
          this, _$identity);
}

abstract class _ChemicalTableState implements ChemicalTableState {
  const factory _ChemicalTableState(
      {final List<ChemicalElement> elements,
      final List<ChemicalElement> originalElements,
      final List<SortState> sortStates,
      final List<int> sortedIndices}) = _$ChemicalTableStateImpl;

  @override
  List<ChemicalElement> get elements;
  @override
  List<ChemicalElement> get originalElements;
  @override
  List<SortState> get sortStates;
  @override
  List<int> get sortedIndices;

  /// Create a copy of ChemicalTableState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChemicalTableStateImplCopyWith<_$ChemicalTableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
