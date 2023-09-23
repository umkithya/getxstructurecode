enum Flavor { dev, pre, pro }

class FlavorValues {
  FlavorValues({required this.baseUrl, this.version, this.name});
  final String baseUrl;
  final String? version;
  final String? name;
}

class FlavorConfig {
  final Flavor? flavor;
  final FlavorValues? values;
  static FlavorConfig? _instance;

  factory FlavorConfig({required Flavor flavor, required FlavorValues values}) {
    _instance ??= FlavorConfig._internal(flavor, values);
    return _instance!;
  }

  FlavorConfig._internal(this.flavor, this.values);
  static FlavorConfig get instance {
    return _instance!;
  }

  static bool isPro() => _instance!.flavor == Flavor.pro;
  static bool isPre() => _instance!.flavor == Flavor.pre;
  static bool isDev() => _instance!.flavor == Flavor.dev;
}
