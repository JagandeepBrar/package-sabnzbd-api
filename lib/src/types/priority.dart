import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabnzbd_api/src/internal/mixins/serializable.dart';

@JsonEnum(valueField: 'name')
enum SABnzbdPriority with EnumSerializableMixin {
  catDefault(-100),
  stop(-4),
  duplicate(-3),
  paused(-2),
  low(-1),
  normal(0),
  high(1),
  force(2),
  ;

  @override
  String get name => priority.toString();

  final int priority;
  const SABnzbdPriority(this.priority);
}
