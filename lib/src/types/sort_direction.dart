import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

@JsonEnum(valueField: 'name')
enum SABnzbdSortDirection with EnumSerializableMixin {
  ascending('asc'),
  descending('desc'),
  ;

  @override
  final String name;

  const SABnzbdSortDirection(this.name);
}
