// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorited_event.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoritedEventAdapter extends TypeAdapter<FavoritedEvent> {
  @override
  final int typeId = 0;

  @override
  FavoritedEvent read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoritedEvent(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, FavoritedEvent obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritedEventAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
