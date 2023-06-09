import 'package:freezed_annotation/freezed_annotation.dart';

mixin JsonSerializableMixin {
  Map<String, dynamic> toJson();
}

mixin EnumSerializableMixin on Enum {
  String get name;

  @internal
  String toJson() => name;
}
