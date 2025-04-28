class JobModel {
  final String profileImage;

  final String jobTitle;
  final String companyName;
  final String location;
  final String datetime;
  final String payment;
  final String description;

  JobModel({
    required this.description,
    required this.jobTitle,
    required this.companyName,
    required this.payment,
    required this.profileImage,
    required this.location,
    required this.datetime,
  });
}
