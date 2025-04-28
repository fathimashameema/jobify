import 'package:jobify/core/images/images.dart';
import 'package:jobify/models/job_model.dart';

List<JobModel> alljobs() {
  return [
    JobModel(
      id: 1,
      profileImage: AppImages.companyProfile1,
      jobTitle: 'Catering Boy',
      companyName: 'Life Catering',
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
      payment: '100/hr',
      description: '',
    ),
    JobModel(
      id: 2,
      profileImage: AppImages.companyProfile2,
      jobTitle: 'Delivary Boy',
      companyName: 'Brownz Cafe',
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
      payment: '200/hr',
      description: '',
    ),
    JobModel(
      id: 3,
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
