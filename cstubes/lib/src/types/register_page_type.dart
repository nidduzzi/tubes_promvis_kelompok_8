// ignore: constant_identifier_names
enum RegisterPageType { UMKM, Investor }

extension ParseToString on RegisterPageType {
  String toShortString() {
    return toString().split('.').last;
  }
}
