import 'package:hive/hive.dart';

part 'job_model.g.dart';

@HiveType(typeId: 1)
class JobModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String profileImage;

  @HiveField(2)
  final String jobTitle;

  @HiveField(3)
  final String companyName;

  @HiveField(4)
  final String location;

  @HiveField(5)
  final String datetime;

  @HiveField(6)
  final String payment;

  @HiveField(7)
  final String description;

  @HiveField(8)
  final String? experience;
  @HiveField(9)
  final String? vacancy;

  JobModel({
    required this.id,
    required this.profileImage,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.datetime,
    required this.payment,
    required this.description,
    this.experience,
    this.vacancy,
  });
}
