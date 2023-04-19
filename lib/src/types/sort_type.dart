import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

@JsonEnum(valueField: 'name')
enum SABnzbdSortType with EnumSerializableMixin {
  averageAge('avg_age'),
  displayName('name'),
  size('size'),
  ;

  @override
  final String name;

  const SABnzbdSortType(this.name);
}
