// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class JobModelAdapter extends TypeAdapter<JobModel> {
  @override
  final int typeId = 1;

  @override
  JobModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return JobModel(
      id: fields[0] as int,
      profileImage: fields[1] as String,
      jobTitle: fields[2] as String,
      companyName: fields[3] as String,
      location: fields[4] as String,
      datetime: fields[5] as String,
      payment: fields[6] as String,
      description: fields[7] as String,
      experience: fields[8] as String?,
      vacancy: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, JobModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.profileImage)
      ..writeByte(2)
      ..write(obj.jobTitle)
      ..writeByte(3)
      ..write(obj.companyName)
      ..writeByte(4)
      ..write(obj.location)
      ..writeByte(5)
      ..write(obj.datetime)
      ..writeByte(6)
      ..write(obj.payment)
      ..writeByte(7)
      ..write(obj.description)
      ..writeByte(8)
      ..write(obj.experience)
      ..writeByte(9)
      ..write(obj.vacancy);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is JobModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
