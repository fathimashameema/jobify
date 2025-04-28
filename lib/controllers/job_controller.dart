// import 'dart:developer';

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:hive/hive.dart';
// import 'package:jobify/models/job_model.dart';
// import 'package:jobify/models/recently_viewed_hive.dart';

// final jobControllerProvider =
//     StateNotifierProvider<JobController, AsyncValue<List<RecentlyViewedHive>>>((
//       ref,
//     ) {
//       return JobController();
//     });

// class JobController
//     extends StateNotifier<AsyncValue<List<RecentlyViewedHive>>> {
//   Box<RecentlyViewedHive>? _jobBox;

//   JobController(super.state);

//   Future<void> openBox() async {
//     try {
//       if (_jobBox == null || !_jobBox!.isOpen) {
//         _jobBox = await Hive.openBox<RecentlyViewedHive>('job box');
//       }
//     } catch (e) {
//       log("Error opening Hive box: $e");
//     }
//   }

//   Future<void> addStudent(JobModel job) async {
//     if (_jobBox == null) {
//       throw Exception('Box not initialized. Call init() first.');
//     }

//     // Check if the job already exists in the box
//     try {
//       final existingEntry = _jobBox!.values.firstWhere(
//         (item) => item.job?.id == job.id,
//         orElse: () => RecentlyViewedHive(),
//       );

//       if (existingEntry.job != null) {
//         // If exists, delete the old entry to maintain uniqueness
//         final key = _jobBox!.values.toList().indexWhere(
//           (item) => item.job?.id == job.id,
//         );
//         if (key != -1) {
//           await _jobBox!.deleteAt(key);
//         }
//       }

//       // Add the new job at the beginning of the list
//       await _jobBox!.add(RecentlyViewedHive(job: job));

//       // Optional: Limit the number of items stored (e.g., keep only last 10)
//       if (_jobBox!.length > 5) {
//         await _jobBox!.deleteAt(0); // Remove the oldest item
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//   }

//   Future<List<RecentlyViewedHive>?> getRecentlyViewed() async {
//     await openBox();

//     try {
//       final jobs = _jobBox!.values.toList();
//       return jobs;
//     } catch (e) {
//       log(e.toString());
//     }
//     return null;
//   }
// }

import 'package:hive/hive.dart';
import 'package:riverpod/riverpod.dart';
import 'package:jobify/models/job_model.dart';
import 'package:jobify/models/recently_viewed_hive.dart';

final jobControllerProvider =
    StateNotifierProvider<JobController, AsyncValue<List<RecentlyViewedHive>>>((
      ref,
    ) {
      return JobController();
    });

class JobController
    extends StateNotifier<AsyncValue<List<RecentlyViewedHive>>> {
  JobController() : super(const AsyncValue.loading()) {
    init();
  }

  Box<RecentlyViewedHive>? _jobBox;

  Future<void> init() async {
    state = const AsyncValue.loading();
    try {
      if (!Hive.isAdapterRegistered(0)) {
        Hive.registerAdapter(RecentlyViewedHiveAdapter());
      }
      if (!Hive.isAdapterRegistered(1)) {
        // Register JobModel's adapter
        Hive.registerAdapter(JobModelAdapter());
      }
      await openBox();
      await _loadJobs();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> openBox() async {
    try {
      if (_jobBox == null || !_jobBox!.isOpen) {
        _jobBox = await Hive.openBox<RecentlyViewedHive>('job_box');
      }
    } catch (e) {
      throw Exception('Failed to open Hive box: $e');
    }
  }

  Future<void> _loadJobs() async {
    try {
      if (_jobBox == null) await openBox();
      final jobs = _jobBox!.values.toList();
      state = AsyncValue.data(jobs);
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> addToRecentlyViewed(JobModel job) async {
    try {
      if (_jobBox == null) await openBox();

      // Check if job already exists
      final existingEntry = _jobBox!.values.firstWhere(
        (item) => item.job?.id == job.id,
        orElse: () => RecentlyViewedHive(),
      );

      if (existingEntry.job != null) {
        final key = _jobBox!.values.toList().indexWhere(
          (item) => item.job?.id == job.id,
        );
        if (key != -1) await _jobBox!.deleteAt(key);
      }

      await _jobBox!.add(RecentlyViewedHive(job: job));

      // Limit to 5 most recent jobs
      if (_jobBox!.length > 5) {
        await _jobBox!.deleteAt(0);
      }

      await _loadJobs(); // Refresh the state
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> clearRecentlyViewed() async {
    try {
      if (_jobBox == null) await openBox();
      await _jobBox!.clear();
      await _loadJobs(); // Refresh the state
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
