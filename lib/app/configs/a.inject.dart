part of '_index.dart';

enum Flavor { test, dev, stage, prod }

final config = RM.injectFlavor(
  {
    Flavor.test: () => ConfigTest(),
    Flavor.dev: () => ConfigDev(),
    Flavor.stage: () => ConfigStage(),
    Flavor.prod: () => ConfigProd(),
  },
);
