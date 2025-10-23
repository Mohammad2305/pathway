// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskMainInfoAdapter extends TypeAdapter<TaskMainInfo> {
  @override
  final int typeId = 0;

  @override
  TaskMainInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskMainInfo(
      name: fields[0] as String,
      description: fields[1] as String,
      dateTime: fields[2] as DateTime,
      startTime: fields[3] as String,
      endTime: fields[4] as String,
      taskColor: fields[5] as int,
      taskStatus: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TaskMainInfo obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.dateTime)
      ..writeByte(3)
      ..write(obj.startTime)
      ..writeByte(4)
      ..write(obj.endTime)
      ..writeByte(5)
      ..write(obj.taskColor)
      ..writeByte(6)
      ..write(obj.taskStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskMainInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
