library StringUtil;

import 'package:english_words/english_words.dart';

class StringUtil {
  static String get getRandomWord {
    final wordPair = new WordPair.random();
    return wordPair.asPascalCase;
  }
}
