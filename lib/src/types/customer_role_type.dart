// ignore: constant_identifier_names
enum CustomerRoleType { UMKM, Investor }

extension ParseToString on CustomerRoleType {
  String toShortString() {
    return toString().split('.').last;
  }
}
