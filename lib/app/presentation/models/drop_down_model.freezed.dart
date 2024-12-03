// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drop_down_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DropdownModel {
  String get title => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DropdownModelCopyWith<DropdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropdownModelCopyWith<$Res> {
  factory $DropdownModelCopyWith(
          DropdownModel value, $Res Function(DropdownModel) then) =
      _$DropdownModelCopyWithImpl<$Res, DropdownModel>;
  @useResult
  $Res call({String title, String id});
}

/// @nodoc
class _$DropdownModelCopyWithImpl<$Res, $Val extends DropdownModel>
    implements $DropdownModelCopyWith<$Res> {
  _$DropdownModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropdownModelImplCopyWith<$Res>
    implements $DropdownModelCopyWith<$Res> {
  factory _$$DropdownModelImplCopyWith(
          _$DropdownModelImpl value, $Res Function(_$DropdownModelImpl) then) =
      __$$DropdownModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String id});
}

/// @nodoc
class __$$DropdownModelImplCopyWithImpl<$Res>
    extends _$DropdownModelCopyWithImpl<$Res, _$DropdownModelImpl>
    implements _$$DropdownModelImplCopyWith<$Res> {
  __$$DropdownModelImplCopyWithImpl(
      _$DropdownModelImpl _value, $Res Function(_$DropdownModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_$DropdownModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DropdownModelImpl implements _DropdownModel {
  const _$DropdownModelImpl({required this.title, required this.id});

  @override
  final String title;
  @override
  final String id;

  @override
  String toString() {
    return 'DropdownModel(title: $title, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropdownModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, id);

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DropdownModelImplCopyWith<_$DropdownModelImpl> get copyWith =>
      __$$DropdownModelImplCopyWithImpl<_$DropdownModelImpl>(this, _$identity);
}

abstract class _DropdownModel implements DropdownModel {
  const factory _DropdownModel(
      {required final String title,
      required final String id}) = _$DropdownModelImpl;

  @override
  String get title;
  @override
  String get id;

  /// Create a copy of DropdownModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DropdownModelImplCopyWith<_$DropdownModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
