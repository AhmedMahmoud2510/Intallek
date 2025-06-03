import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 's_ar.dart';
import 's_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of S
/// returned by `S.of(context)`.
///
/// Applications need to include `S.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/s.dart';
///
/// return MaterialApp(
///   localizationsDelegates: S.localizationsDelegates,
///   supportedLocales: S.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the S.supportedLocales
/// property.
abstract class S {
  S(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static S? of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  static const LocalizationsDelegate<S> delegate = _SDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
  ];

  /// No description provided for @onboarding1.
  ///
  /// In en, this message translates to:
  /// **'Welcome to your fastest destination\nPick a spot, set your route, and go in seconds.'**
  String get onboarding1;

  /// No description provided for @onboarding2.
  ///
  /// In en, this message translates to:
  /// **'Wherever you are… we’re with you\nA network of ready-to-serve drivers available anywhere, anytime.'**
  String get onboarding2;

  /// No description provided for @onboarding3.
  ///
  /// In en, this message translates to:
  /// **'Your transportation just got smarter\nFollow every trip with pro drivers and accurate tracking.'**
  String get onboarding3;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @go.
  ///
  /// In en, this message translates to:
  /// **'Go'**
  String get go;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome back'**
  String get welcomeBack;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @noAccountYet.
  ///
  /// In en, this message translates to:
  /// **'No account yet?'**
  String get noAccountYet;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signUp;

  /// No description provided for @createYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Create your account'**
  String get createYourAccount;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @reTypePassword.
  ///
  /// In en, this message translates to:
  /// **'Re-type password'**
  String get reTypePassword;

  /// No description provided for @enterYourVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'Enter your verification code'**
  String get enterYourVerificationCode;

  /// No description provided for @weSendVerificationCTo.
  ///
  /// In en, this message translates to:
  /// **'We send verification code to your mobile'**
  String get weSendVerificationCTo;

  /// No description provided for @youCanCheckYourMessages.
  ///
  /// In en, this message translates to:
  /// **'You can check your messages'**
  String get youCanCheckYourMessages;

  /// No description provided for @didntReceivedCode.
  ///
  /// In en, this message translates to:
  /// **'I didn’t received the code'**
  String get didntReceivedCode;

  /// No description provided for @sendAgain.
  ///
  /// In en, this message translates to:
  /// **'Send again?'**
  String get sendAgain;

  /// No description provided for @missing.
  ///
  /// In en, this message translates to:
  /// **'missing!'**
  String get missing;

  /// No description provided for @haveAnAccount.
  ///
  /// In en, this message translates to:
  /// **'Have An account?'**
  String get haveAnAccount;

  /// No description provided for @passwordDoesntMatch.
  ///
  /// In en, this message translates to:
  /// **'Password does not match'**
  String get passwordDoesntMatch;

  /// No description provided for @hey.
  ///
  /// In en, this message translates to:
  /// **'Hey'**
  String get hey;

  /// No description provided for @service.
  ///
  /// In en, this message translates to:
  /// **'Service'**
  String get service;

  /// No description provided for @ride.
  ///
  /// In en, this message translates to:
  /// **'Ride'**
  String get ride;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @activity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @complain.
  ///
  /// In en, this message translates to:
  /// **'Complain'**
  String get complain;

  /// No description provided for @complains.
  ///
  /// In en, this message translates to:
  /// **'Complains'**
  String get complains;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @yourFirstRideOn.
  ///
  /// In en, this message translates to:
  /// **'Your first ride is on us!'**
  String get yourFirstRideOn;

  /// No description provided for @offer.
  ///
  /// In en, this message translates to:
  /// **'Book your first trip for free with….'**
  String get offer;

  /// No description provided for @upcoming.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get upcoming;

  /// No description provided for @past.
  ///
  /// In en, this message translates to:
  /// **'Past'**
  String get past;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @whereTo.
  ///
  /// In en, this message translates to:
  /// **'Where To?'**
  String get whereTo;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get lastName;

  /// No description provided for @savedPlaces.
  ///
  /// In en, this message translates to:
  /// **'Saved places'**
  String get savedPlaces;

  /// No description provided for @packageNotMore.
  ///
  /// In en, this message translates to:
  /// **'Package not more than'**
  String get packageNotMore;

  /// No description provided for @kilo5.
  ///
  /// In en, this message translates to:
  /// **'5 kilo'**
  String get kilo5;

  /// No description provided for @deliveryPrice.
  ///
  /// In en, this message translates to:
  /// **'Delivery Price'**
  String get deliveryPrice;

  /// No description provided for @numberOfItems.
  ///
  /// In en, this message translates to:
  /// **'Number of items'**
  String get numberOfItems;

  /// No description provided for @item.
  ///
  /// In en, this message translates to:
  /// **'item'**
  String get item;

  /// No description provided for @items.
  ///
  /// In en, this message translates to:
  /// **'items'**
  String get items;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get paymentMethod;

  /// No description provided for @visa.
  ///
  /// In en, this message translates to:
  /// **'Visa'**
  String get visa;

  /// No description provided for @findDelivery.
  ///
  /// In en, this message translates to:
  /// **'Find Delivery'**
  String get findDelivery;

  /// No description provided for @request.
  ///
  /// In en, this message translates to:
  /// **'Request'**
  String get request;

  /// No description provided for @findYourDelivery.
  ///
  /// In en, this message translates to:
  /// **'Find Your Delivery'**
  String get findYourDelivery;

  /// No description provided for @sender.
  ///
  /// In en, this message translates to:
  /// **'Sender'**
  String get sender;

  /// No description provided for @recipient.
  ///
  /// In en, this message translates to:
  /// **'Recipient'**
  String get recipient;

  /// No description provided for @startLocation.
  ///
  /// In en, this message translates to:
  /// **'Start Location'**
  String get startLocation;

  /// No description provided for @yourDestination.
  ///
  /// In en, this message translates to:
  /// **'Your Destination'**
  String get yourDestination;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @driverVeryGood.
  ///
  /// In en, this message translates to:
  /// **'DriverVeryGood'**
  String get driverVeryGood;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @driver.
  ///
  /// In en, this message translates to:
  /// **'Driver'**
  String get driver;

  /// No description provided for @rideRating.
  ///
  /// In en, this message translates to:
  /// **'Ride rating'**
  String get rideRating;

  /// No description provided for @noRecentRideFeedback.
  ///
  /// In en, this message translates to:
  /// **'No recent ride feedback'**
  String get noRecentRideFeedback;

  /// No description provided for @stars.
  ///
  /// In en, this message translates to:
  /// **'Stars'**
  String get stars;

  /// No description provided for @star.
  ///
  /// In en, this message translates to:
  /// **'Star'**
  String get star;

  /// No description provided for @totalRating.
  ///
  /// In en, this message translates to:
  /// **'Total rating'**
  String get totalRating;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @ridePrice.
  ///
  /// In en, this message translates to:
  /// **'Ride price'**
  String get ridePrice;

  /// No description provided for @sar.
  ///
  /// In en, this message translates to:
  /// **'SAR'**
  String get sar;

  /// No description provided for @min.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get min;

  /// No description provided for @carDetails.
  ///
  /// In en, this message translates to:
  /// **'Car details'**
  String get carDetails;

  /// No description provided for @rideDetails.
  ///
  /// In en, this message translates to:
  /// **'Ride details'**
  String get rideDetails;

  /// No description provided for @findYourRide.
  ///
  /// In en, this message translates to:
  /// **'Find your ride'**
  String get findYourRide;

  /// No description provided for @availableOptions.
  ///
  /// In en, this message translates to:
  /// **'Available options'**
  String get availableOptions;

  /// No description provided for @economy.
  ///
  /// In en, this message translates to:
  /// **'Economy'**
  String get economy;

  /// No description provided for @stander.
  ///
  /// In en, this message translates to:
  /// **'Stander'**
  String get stander;

  /// No description provided for @vip.
  ///
  /// In en, this message translates to:
  /// **'V.I.P'**
  String get vip;

  /// No description provided for @family.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get family;

  /// No description provided for @familyVIP.
  ///
  /// In en, this message translates to:
  /// **'Family V.I.P'**
  String get familyVIP;

  /// No description provided for @findDriver.
  ///
  /// In en, this message translates to:
  /// **'Find Driver'**
  String get findDriver;

  /// No description provided for @pickUp.
  ///
  /// In en, this message translates to:
  /// **'Pick up'**
  String get pickUp;

  /// No description provided for @dropOff.
  ///
  /// In en, this message translates to:
  /// **'Drop off'**
  String get dropOff;

  /// No description provided for @reportSafetyIssue.
  ///
  /// In en, this message translates to:
  /// **'Report safety issue'**
  String get reportSafetyIssue;

  /// No description provided for @haveSafetyRelatedIssue.
  ///
  /// In en, this message translates to:
  /// **'If you have a safety related issue'**
  String get haveSafetyRelatedIssue;

  /// No description provided for @reportMoneyIssue.
  ///
  /// In en, this message translates to:
  /// **'Report money issue'**
  String get reportMoneyIssue;

  /// No description provided for @haveMoneyIssue.
  ///
  /// In en, this message translates to:
  /// **'If you have a money related issue'**
  String get haveMoneyIssue;

  /// No description provided for @provideDriverFeedback.
  ///
  /// In en, this message translates to:
  /// **'Provide driver feedback'**
  String get provideDriverFeedback;

  /// No description provided for @forDriverArentSafety.
  ///
  /// In en, this message translates to:
  /// **'For driver aren\'t safety'**
  String get forDriverArentSafety;

  /// No description provided for @provideCarFeedback.
  ///
  /// In en, this message translates to:
  /// **'Provide car feedback'**
  String get provideCarFeedback;

  /// No description provided for @forCarIssue.
  ///
  /// In en, this message translates to:
  /// **'For car issue'**
  String get forCarIssue;

  /// No description provided for @appPrivacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Antallak Application Privacy Policy'**
  String get appPrivacyPolicy;

  /// No description provided for @lastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last Updated:'**
  String get lastUpdated;

  /// No description provided for @introduction.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get introduction;

  /// No description provided for @introductionText.
  ///
  /// In en, this message translates to:
  /// **'Welcome to [Antallak], a ride-hailing and package delivery application designed to provide convenient and secure transportation and logistics services. At [Antallak], we prioritize your privacy and are committed to protecting your personal information.\nThis Privacy Policy explains how we collect, use, disclose, and safeguard your data when you use our application and related services. By accessing or using [Antallak], you agree to the terms outlined in this policy. If you do not agree, please refrain from using our services.'**
  String get introductionText;

  /// No description provided for @informationCollection.
  ///
  /// In en, this message translates to:
  /// **'Information Collection'**
  String get informationCollection;

  /// No description provided for @informationCollectionText.
  ///
  /// In en, this message translates to:
  /// **'When you use our services, we may collect the following types of information:'**
  String get informationCollectionText;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'A. Personal Information'**
  String get personalInformation;

  /// No description provided for @personalInformationText.
  ///
  /// In en, this message translates to:
  /// **'•\tUser Account Details: Name, email, phone number, profile photo, and payment information.\n•\tRide & Delivery Data: Pickup/drop-off locations, trip history, package details, and recipient information.\n•\tIdentification & Verification: Driver’s license, vehicle details (for drivers), and other verification documents.'**
  String get personalInformationText;

  /// No description provided for @questions.
  ///
  /// In en, this message translates to:
  /// **'Questions?'**
  String get questions;

  /// No description provided for @questionsText.
  ///
  /// In en, this message translates to:
  /// **'If you have any questions about this Privacy Policy or our practices, please send us an email at'**
  String get questionsText;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'Antallak@antallak.com'**
  String get emailAddress;

  /// No description provided for @usageTechnicalData.
  ///
  /// In en, this message translates to:
  /// **'B. Usage and Technical Data'**
  String get usageTechnicalData;

  /// No description provided for @usageTechnicalDataText.
  ///
  /// In en, this message translates to:
  /// **'•\tDevice Information: IP address, device model, operating system, and unique identifiers.\n•\tLocation Data: GPS, Wi-Fi networks, and mobile network data to track trips and deliveries.\n•\tData Logs: App usage, interactions, and crash reports.'**
  String get usageTechnicalDataText;

  /// No description provided for @paymentInfo.
  ///
  /// In en, this message translates to:
  /// **'C. Payment Information'**
  String get paymentInfo;

  /// No description provided for @paymentInfoText.
  ///
  /// In en, this message translates to:
  /// **'•\tCredit/debit card details, digital wallets, and transaction history (securely processed through third-party service providers).'**
  String get paymentInfoText;

  /// No description provided for @howWeUseYourInfo.
  ///
  /// In en, this message translates to:
  /// **'How We Use Your Information'**
  String get howWeUseYourInfo;

  /// No description provided for @howWeUseYourInfoText.
  ///
  /// In en, this message translates to:
  /// **'•\tTo provide, improve, and maintain our services.\n•\tTo facilitate trip bookings and parcel deliveries.\n•\tTo verify user identities and ensure security.\n•\tTo process payments and prevent fraud.\n•\tTo send updates, offers, and respond to inquiries.\n•\tTo comply with legal and regulatory requirements.'**
  String get howWeUseYourInfoText;

  /// No description provided for @informationSharing.
  ///
  /// In en, this message translates to:
  /// **'Information Sharing'**
  String get informationSharing;

  /// No description provided for @informationSharingText.
  ///
  /// In en, this message translates to:
  /// **'•\tDrivers / Delivery Partners: Trip or shipment details as needed.\n•\tThird-Party Service Providers: Including payment processors, cloud storage services, and analytics providers.\n•\tLegal Authorities: When required by law or for security reasons.'**
  String get informationSharingText;

  /// No description provided for @dataSecurity.
  ///
  /// In en, this message translates to:
  /// **'Data Security'**
  String get dataSecurity;

  /// No description provided for @dataSecurityText.
  ///
  /// In en, this message translates to:
  /// **'•\tWe implement standard security measures such as encryption and access controls to protect your data. However, no system is 100% secure.\n•\tWe strongly encourage you to take your own precautions to protect your information.'**
  String get dataSecurityText;
}

class _SDelegate extends LocalizationsDelegate<S> {
  const _SDelegate();

  @override
  Future<S> load(Locale locale) {
    return SynchronousFuture<S>(lookupS(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_SDelegate old) => false;
}

S lookupS(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return SAr();
    case 'en':
      return SEn();
  }

  throw FlutterError(
    'S.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
