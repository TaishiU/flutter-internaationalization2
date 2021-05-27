import 'package:flutter/material.dart';

/* 各言語にローカライズされた文字列を定義したクラス */
class Messages {
  Messages({
    required this.title,
    required this.menu1,
    required this.menu2,
    required this.menu3,
  });

  final String title;
  final String menu1;
  final String menu2;
  final String menu3;

  factory Messages.of(Locale locale) {
    switch (locale.languageCode) {
      case 'ja':
        return Messages.ja();
      case 'en':
        return Messages.en();
      default:
        /* デフォルトは英語に設定 */
        return Messages.en();
    }
  }

  factory Messages.ja() => Messages(
        title: '日本語のタイトル',
        menu1: 'ダッシュボード',
        menu2: '検索',
        menu3: '設定',
      );

  factory Messages.en() => Messages(
        title: 'Title in English',
        menu1: 'Dashboard',
        menu2: 'Search',
        menu3: 'Settings',
      );
}
