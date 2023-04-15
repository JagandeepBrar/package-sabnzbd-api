import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

@JsonEnum(valueField: 'name')
enum SABnzbdCompleteAction with EnumSerializableMixin {
  hibernatePc('hibernate_pc'),
  shutdownProgram('shutdown_program'),
  standbyPc('standby_pc'),
  ;

  @override
  final String name;

  const SABnzbdCompleteAction(this.name);
}
