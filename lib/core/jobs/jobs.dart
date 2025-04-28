import 'package:jobify/core/images/images.dart';
import 'package:jobify/models/job_model.dart';

List<JobModel> getHardcodedJobs() {
  return [
    JobModel(
      profileImage: AppImages.companyProfile1,
      jobTitle: 'Catering Boy',
      companyName: 'Life Catering',
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
      payment: '100/hr',
      description: '',
    ),
    JobModel(
      profileImage: AppImages.companyProfile2,
      jobTitle: 'Delivary Boy',
      companyName: 'Brownz Cafe',
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
      payment: '200/hr',
      description: '',
    ),
    JobModel(
      description: '',
      jobTitle: 'Supermarket Staff',
      companyName: 'Smartmarket',
      payment: '200/hr',
      profileImage: AppImages.companyProfile3,
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
    ),
  ];
}
