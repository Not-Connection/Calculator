part of '_index.dart';

final i18nRM = RM.injectI18N<L10n>(
  {
    const Locale('en'): () => L10nEn(),
    const Locale('ar'): () => L10nAr(),
    const Locale('es'): () => L10nEs(),
  },
  sideEffects: SideEffects.onData(
    (data) => RM.scaffold.showSnackBar(
      SnackBar(
        content: Text(data.helloWorld),
      ),
    ),
  ),
);
