// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 's.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class SEn extends S {
  SEn([String locale = 'en']) : super(locale);

  @override
  String get hello => 'Hello';

  @override
  String get welcome => 'Welcome to our app';

  @override
  String get onboarding1 =>
      'Welcome to your fastest destination\nPick a spot, set your route, and go in seconds.';

  @override
  String get onboarding2 =>
      'Wherever you are… we’re with you\nA network of ready-to-serve drivers available anywhere, anytime.';

  @override
  String get onboarding3 =>
      'Your transportation just got smarter\nFollow every trip with pro drivers and accurate tracking.';

  @override
  String get next => 'Next';

  @override
  String get skip => 'Skip';

  @override
  String get go => 'Go';

  @override
  String get welcomeBack => 'welcome back';
}
