import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

@JsonEnum(valueField: 'name')
enum SABnzbdPostProcessing with EnumSerializableMixin {
  catDefault(-1),
  none(0),
  repair(1),
  repairUnpack(2),
  repairUnpackDelete(3),
  ;

  @override
  String get name => option.toString();

  final int option;
  const SABnzbdPostProcessing(this.option);
}
