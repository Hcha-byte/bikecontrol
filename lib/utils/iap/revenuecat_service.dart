import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/widgets.dart';

class RevenueCatService {
  static const int trialDays = 5;

  final FlutterSecureStorage _prefs;
  final ValueNotifier<bool> isPurchasedNotifier;
  final int Function() getDailyCommandLimit;
  final void Function(int limit) setDailyCommandLimit;

  RevenueCatService(
    this._prefs, {
    required this.isPurchasedNotifier,
    required this.getDailyCommandLimit,
    required this.setDailyCommandLimit,
  }) {
    // Always premium in local/dev build
    isPurchasedNotifier.value = true;
  }

  Future<void> initialize() async {
    isPurchasedNotifier.value = true;
  }

  Future<void> presentPaywall() async {}

  Future<void> restorePurchases() async {}

  Future<void> purchaseFullVersion(BuildContext? context) async {
  // Stub: do nothing
}

  bool get hasTrialStarted => true;

  Future<void> startTrial() async {}

  int get trialDaysRemaining => 0;

  bool get isTrialExpired => false;

  int get dailyCommandCount => 0;

  Future<void> incrementCommandCount() async {}

  bool get canExecuteCommand => true;

  int get commandsRemainingToday => -1;

  void dispose() {}

  Future<void> reset(bool fullReset) async {}

  Future<void> redeem(String purchaseId) async {
    isPurchasedNotifier.value = true;
  }

  Future<void> setAttributes() async {}
}