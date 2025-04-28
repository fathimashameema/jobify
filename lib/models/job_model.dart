// class JobModel {
//   final int id;
//   final String profileImage;
//   final String jobTitle;
//   final String companyName;
//   final String location;
//   final String datetime;
//   final String payment;
//   final String description;

//   JobModel({
//     required this.id,
//     required this.description,
//     required this.jobTitle,
//     required this.companyName,
//     required this.payment,
//     required this.profileImage,
//     required this.location,
//     required this.datetime,
//   });
// }
import 'package:hive/hive.dart';

part 'job_model.g.dart'; // Generated file

@HiveType(typeId: 1) // Must be unique (different from RecentlyViewedHive)
class JobModel {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String profileImage;

  @HiveField(2)
  final String jobTitle;

  // Add @HiveField to all other fields...
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

  JobModel({
    required this.id,
    required this.profileImage,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.datetime,
    required this.payment,
    required this.description,
  });
}