// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasktext.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TasktextAdapter extends TypeAdapter<Tasktext> {
  @override
  final int typeId = 1;

  @override
  Tasktext read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tasktext(
      text: fields[0] as String,
      id: fields[1] as String,
      isdone: fields[4] as bool,
      time: fields[2] as String,
      icon: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Tasktext obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.icon)
      ..writeByte(4)
      ..write(obj.isdone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TasktextAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
