import 'package:hive/hive.dart';
import 'package:jobify/models/job_model.dart';

part 'recently_viewed_hive.g.dart';

@HiveType(typeId: 0)
class RecentlyViewedHive {
  @HiveField(0)
  JobModel? job;

  RecentlyViewedHive({this.job});
}
