import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_entity.freezed.dart';

@freezed
class TodoEntity with _$TodoEntity {
  const factory TodoEntity({
    @Default(0) int userId,
    @Default(0) int id,
    @Default("") String title,
    @Default(false) bool completed
  }) = _TodoEntity;
}