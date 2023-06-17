// ignore_for_file: non_constant_identifier_names

class Profile {
  Profile({
    required this.user_id,
    required this.profile_npwp_no,
    required this.profile_last_name,
    required this.profile_ktp_no,
    required this.profile_id,
    required this.profile_first_name,
    required this.profile_address,
    required this.updated_at,
    required this.created_at,
  });
  factory Profile.fromJson(dynamic json) {
    return Profile(
      user_id: json['user_id'],
      profile_npwp_no: json['profile_npwp_no'],
      profile_last_name: json['profile_last_name'],
      profile_ktp_no: json['profile_ktp_no'],
      profile_id: json['profile_id'],
      profile_first_name: json['profile_first_name'],
      profile_address: json['profile_address'],
      updated_at: json['updated_at'],
      created_at: json['created_at'],
    );
  }

  final String user_id;
  final String profile_npwp_no;
  final String profile_last_name;
  final String profile_ktp_no;
  final int profile_id;
  final String profile_first_name;
  final String profile_address;
  final DateTime updated_at;
  final DateTime created_at;
}
