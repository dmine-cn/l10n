import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show SynchronousFuture;

import 'strings_en.dart';
import 'strings_zh.dart';

// MARK: 多语言支持
class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': stringsEn,
    'zh': stringsZh,
  };

  String _getString(String key) {
    return _localizedValues[locale.languageCode]?[key] ??
        _localizedValues['en']![key]!;
  }

  // 使用快捷方法来处理带参数的字符串
  String _getStringWithParam(String key, Map<String, String> params) {
    String value = _getString(key);
    params.forEach((paramKey, paramValue) {
      value = value.replaceAll('{$paramKey}', paramValue);
    });
    return value;
  }

  // MARK: Settings strings
  String get appTitle => _getString('appTitle');
  String get settings => _getString('settings');
  String get gameSettings => _getString('gameSettings');
  String get showTimer => _getString('showTimer');
  String get showTimerDesc => _getString('showTimerDesc');
  String get showActionCounter => _getString('showActionCounter');
  String get showActionCounterDesc => _getString('showActionCounterDesc');
  String get autoAdjustBoardWidth => _getString('autoAdjustBoardWidth');
  String get autoAdjustBoardWidthDesc => _getString('autoAdjustBoardWidthDesc');
  String get resetToDefaults => _getString('resetToDefaults');
  String get resetToDefaultsDesc => _getString('resetToDefaultsDesc');
  String get aboutDMine => _getString('aboutDMine');
  String get version => _getString('version');
  String get close => _getString('close');
  String get manualBoardWidth => _getString('manualBoardWidth');
  String get currentWidth => _getString('currentWidth');
  String get range => _getString('range');
  String get widthSliderHint => _getString('widthSliderHint');
  String get gameRecords => _getString('gameRecords');
  String get selectMapToViewRecords => _getString('selectMapToViewRecords');
  String get totalRecords => _getString('totalRecords');
  String get gameRecordsTitle => _getString('gameRecordsTitle');
  String get pleaseSelectMapFirst => _getString('pleaseSelectMapFirst');
  String get noGameRecords => _getString('noGameRecords');
  String get miningMethodFlag => _getString('miningMethodFlag');
  String get miningMethodBlind => _getString('miningMethodBlind');
  String get statusPlaying => _getString('statusPlaying');
  String get statusWin => _getString('statusWin');
  String get statusLose => _getString('statusLose');
  String get actionsCount => _getString('actionsCount');
  String get miningMethod => _getString('miningMethod');
  String get duration => _getString('duration');
  String get seconds => _getString('seconds');
  String get startTime => _getString('startTime');
  String get endTime => _getString('endTime');
  String get pauseTime => _getString('pauseTime');
  String get unlock => _getString('unlock');
  String get lock => _getString('lock');
  String get delete => _getString('delete');

  // MARK: Language strings
  String get languageSetting => _getString('languageSetting');
  String get currentLanguage => _getString('currentLanguage');
  String get systemLanguage => _getString('systemLanguage');
  String get chinese => _getString('chinese');
  String get english => _getString('english');
  String get language => _getString('language');

  // MARK: Home page strings
  String get newBattle => _getString('newBattle');
  String get continueChallenge => _getString('continueChallenge');
  String get error => _getString('error');
  String get initializationFailed => _getString('initializationFailed');

  // MARK: Game page strings
  String get congratulations => _getString('congratulations');
  String get gameOver => _getString('gameOver');
  String get timeUsed => _getString('timeUsed');
  String get actionCount => _getString('actionCount');
  String get mineCount => _getString('mineCount');
  String get nextLevelMines => _getString('nextLevelMines');
  String get mineIncrease => _getString('mineIncrease');
  String get ok => _getString('ok');
  String get continueNextLevel => _getString('continueNextLevel');
  String get restart => _getString('restart');
  String get operationFailed => _getString('operationFailed');

  // MARK: Game status strings
  String get returnHome => _getString('returnHome');
  String get revealMode => _getString('revealMode');
  String get flagMode => _getString('flagMode');
  String get newMap => _getString('newMap');
  String get previousStep => _getString('previousStep');
  String get pause => _getString('pause');
  String get play => _getString('play');
  String get nextStep => _getString('nextStep');
  String get clickToStart => _getString('clickToStart');
  String get playing => _getString('playing');
  String get gameWin => _getString('gameWin');
  String get gameLose => _getString('gameLose');
  String get gamePaused => _getString('gamePaused');
  String get ready => _getString('ready');
  String get clickStartShort => _getString('clickStartShort');
  String get playingShort => _getString('playingShort');
  String get winShort => _getString('winShort');
  String get loseShort => _getString('loseShort');
  String get pausedShort => _getString('pausedShort');

  // MARK: Counter strings
  String get currentLevel => _getString('currentLevel');
  String get remainingMines => _getString('remainingMines');
  String get gameTime => _getString('gameTime');
  String get operationCount => _getString('operationCount');
  String get previousLevel => _getString('previousLevel');
  String get nextLevelShort => _getString('nextLevelShort');

  // MARK: Parameterized strings
  String getLevel(int level) =>
      _getStringWithParam('level', {'level': level.toString()});
  String getNextLevel(int level) =>
      _getStringWithParam('nextLevel', {'level': level.toString()});
}

// MARK: 本地委托
class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  // MARK: 支持的语言
  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
