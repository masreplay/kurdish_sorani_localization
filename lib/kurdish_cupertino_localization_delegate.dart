import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

import 'ckb_date_symbols.dart';

class _KurdishCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const _KurdishCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ckb';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    const String localeName = 'ckb';

    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: ckbLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(ckbDateSymbols),
    );
    return SynchronousFuture<CupertinoLocalizations>(
      KurdishCupertinoLocalizations(
        fullYearFormat: intl.DateFormat('y', localeName),

        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),

        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'ar' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        dayFormat: intl.DateFormat("dd", localeName),
        doubleDigitMinuteFormat: intl.DateFormat("mm", localeName),
        singleDigitHourFormat: intl.DateFormat("hh", localeName),
        singleDigitMinuteFormat: intl.DateFormat("mm", localeName),
        singleDigitSecondFormat: intl.DateFormat("ss", localeName),
      ),
    );
  }

  @override
  bool shouldReload(_KurdishCupertinoLocalizationsDelegate old) => false;
}

class KurdishCupertinoLocalizations extends GlobalCupertinoLocalizations {
  const KurdishCupertinoLocalizations({
    super.localeName = 'ckb',
    required super.fullYearFormat,
    required super.dayFormat,
    required super.mediumDateFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
    required super.decimalFormat,
  });

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      _KurdishCupertinoLocalizationsDelegate();

  @override
  String get alertDialogLabel => '????????????????????????????';

  @override
  String get copyButtonLabel => '????????';

  @override
  String get cutButtonLabel => '????????';

  @override
  String get modalBarrierDismissLabel => '??????????????';

  @override
  String get pasteButtonLabel => '??????????';

  @override
  String get selectAllButtonLabel => '?????????? ????????????????';

  @override
  String get datePickerDateOrderString => "mdy";

  @override
  String get datePickerDateTimeOrderString => "time_dayPeriod_date";

  @override
  String? get datePickerHourSemanticsLabelOther => "???? ????";

  @override
  String? get datePickerMinuteSemanticsLabelOther => "???? ????";

  @override
  String get searchTextFieldPlaceholderLabel => "??????????";

  @override
  String get tabSemanticsLabelRaw => "?????? \$tabIndex ???? \$tabCount";

  @override
  String? get timerPickerHourLabelOther => "???? ????";

  @override
  String? get timerPickerMinuteLabelOther => "???? ????";

  @override
  String? get timerPickerSecondLabelOther => "???? ????";

  @override
  String get todayLabel => "??????????";

  @override
  String get postMeridiemAbbreviation => '??.??';

  @override
  String get anteMeridiemAbbreviation => '??.??';
}
