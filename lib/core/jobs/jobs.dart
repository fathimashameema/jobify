import 'package:jobify/core/images/images.dart';
import 'package:jobify/models/job_model.dart';

List<JobModel> alljobs() {
  return [
    JobModel(
      id: 1,
      experience: '0-1',
      vacancy: '10',
      profileImage: AppImages.companyProfile1,
      jobTitle: 'Catering Boy',
      companyName: 'Life Catering',
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
      payment: '100/hr',
      description:
          'Assist in food preparation, serving, and clean-up at catering events. '
          'Responsibilities include setting up buffet lines, maintaining food safety standards, '
          'and providing excellent customer service. No prior experience required - training provided.',
    ),
    JobModel(
      id: 2,
      experience: '0-1',
      vacancy: '2',
      profileImage: AppImages.companyProfile2,
      jobTitle: 'Delivary Boy',
      companyName: 'Brownz Cafe',
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
      payment: '200/hr',
      description:
          'Responsible for timely delivery of food orders to customers. '
          'Must have own bicycle/scooter and valid driving license. Duties include '
          'order verification, maintaining food temperature during transit, and handling payments. '
          'Knowledge of local areas in Calicut preferred.',
    ),
    JobModel(
      id: 3,
      experience: '6 mnth-1 yr',
      vacancy: '1',
      description:
          'Assist customers with product selection and checkout at supermarket. '
          'Responsibilities include shelf stocking, inventory management, and maintaining '
          'store cleanliness. Previous retail experience preferred but not mandatory. '
          'Must be able to stand for long periods and lift up to 15kg.',
      jobTitle: 'Supermarket Staff',
      companyName: 'Smartmarket',
      payment: '200/hr',
      profileImage: AppImages.companyProfile3,
      location: 'Calicut,Kerala',
      datetime: '20-May-2025, 07:00pm',
    ),
  ];
}
