// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 's.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class SAr extends S {
  SAr([String locale = 'ar']) : super(locale);

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

  @override
  String get phoneNumber => 'رقم الجوال';

  @override
  String get password => 'كلمة المرور';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get noAccountYet => 'ليس لديك حساب؟';

  @override
  String get signUp => 'إنشاء حساب جديد';

  @override
  String get createYourAccount => 'انشاء حساب جديد';

  @override
  String get name => 'الاسم';

  @override
  String get reTypePassword => 'إعادة كلمة المرور';

  @override
  String get enterYourVerificationCode => 'ادخل رمز التحقق';

  @override
  String get weSendVerificationCTo => 'تم إرسال رمز التحقق إلى رقم جوالك';

  @override
  String get youCanCheckYourMessages => 'يرجى مراجعة الرسائل';

  @override
  String get didntReceivedCode => 'لم أستقبل الرمز.';

  @override
  String get sendAgain => 'إعادة إرسال؟';

  @override
  String get missing => 'مفقود!';

  @override
  String get haveAnAccount => 'لديك حساب بالفعل؟';

  @override
  String get passwordDoesntMatch => 'كلمة المرور غير متطابقة';
}
