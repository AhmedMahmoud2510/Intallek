// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 's.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

  @override
  String get hello => 'مرحبا';

  @override
  String get welcome => 'أهلاً بك في تطبيقنا';

  @override
  String get onboarding1 =>
      'أهلاً بك في وجهتك الأسرع\nاختر المكان.. حدد الوجهة.. ابدأ رحلتك معنا في ثوانٍ';

  @override
  String get onboarding2 =>
      'أينما كنت... نحن معك\nشبكة مندوبين جاهزين يخدمونك في كل مكان.';

  @override
  String get onboarding3 =>
      'تنقّلك أصبح أكثر ذكاءً\nتابع رحلتك لحظة بلحظة مع نظام تتبع دقيق وسائقين محترفين.';

  @override
  String get next => 'التالي';

  @override
  String get skip => 'تخطي';

  @override
  String get go => 'انطلق';

  @override
  String get welcomeBack => 'مرحبا بعودتك';
}
