import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowModeProvider = StateProvider<bool>((ref) => false);
final bottomNavBarProvider = StateProvider<int>((ref) => 0);
