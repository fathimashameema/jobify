// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recently_viewed_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecentlyViewedHiveAdapter extends TypeAdapter<RecentlyViewedHive> {
  @override
  final int typeId = 0;

  @override
  RecentlyViewedHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecentlyViewedHive(
      job: fields[0] as JobModel?,
    );
  }

  @override
  void write(BinaryWriter writer, RecentlyViewedHive obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.job);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecentlyViewedHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
