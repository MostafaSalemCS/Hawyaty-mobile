abstract class ITranslate {
  String translate(String key);

  String get title => translate("title");

  String get loginUser => translate("loginUser");

  String get signIn => translate("signIn");

  String get changeLang => translate("changeLang");

  String get welcomeMessage => translate("welcomeMessage");

  String get selectLevel => translate("selectLevel");

  String get firstLevel => translate("firstLevel");

  String get secondLevel => translate("secondLevel");

  String get thirdLevel => translate("thirdLevel");
}
