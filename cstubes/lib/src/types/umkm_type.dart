// ignore_for_file: non_constant_identifier_names

class UMKM {
  UMKM({
    required this.umkm_desc,
    required this.umkm_id,
    required this.umkm_name,
    required this.umkm_performance,
    required this.umkm_shares,
    required this.user_id,
    required this.updated_at,
    required this.created_at,
  });
  factory UMKM.fromJson(dynamic json) {
    return UMKM(
      umkm_desc: json['umkm_desc'],
      umkm_id: json['umkm_id'],
      umkm_name: json['umkm_name'],
      umkm_performance: json['umkm_performance'],
      umkm_shares: json['umkm_shares'],
      user_id: json['user_id'],
      updated_at: json['updated_at'],
      created_at: json['created_at'],
    );
  }

  final String umkm_desc;
  final int umkm_id;
  final String umkm_name;
  final String umkm_performance;
  final int umkm_shares;
  final String user_id;
  final DateTime updated_at;
  final DateTime created_at;
}
