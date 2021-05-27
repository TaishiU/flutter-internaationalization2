import 'package:flutter/material.dart';

import 'Messages.dart';

/* ①作成した翻訳リソースを呼び出す際はLocalizationsウィジェットを用いる */
/* ②Localizationsウィジェットはローカライズされた値のコレクションを含むオブジェクトをロードして検索するために使われる */
/* ③翻訳リソースを呼び出す際は「Localizations.of<type>(context, type)」にて参照する */
/* ④Localizationsウィジェットはデバイスのロケールが変更されると、自動的に新しいロケール用の値をロードし、ウィジェットを再構築してくれる */
class AppLocalizations {
  final Messages messages;

  AppLocalizations(Locale locale) : this.messages = Messages.of(locale);

  static Messages of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!
        .messages;
  }
}
