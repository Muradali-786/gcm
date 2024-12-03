import 'package:freezed_annotation/freezed_annotation.dart';

part 'drop_down_model.freezed.dart';

@freezed
class DropdownModel with _$DropdownModel {
  const factory DropdownModel({
    required String title,
    required String id,
  }) = _DropdownModel;
}
