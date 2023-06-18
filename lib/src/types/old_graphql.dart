import 'package:graphql_flutter/graphql_flutter.dart';

final getUserQuery = gql('''
query GetUserQuery {
  users(limit: 1) {
    email
    displayName
    defaultRole
    id
    roles {
      role
    }
  }
}
''');

final updateProfileMutation = gql('''
mutation UpdateProfileMutation (\$data: profile_set_input, \$user_id: uuid) {
  update_profile(_set: \$data, where: {user_id: {_eq: \$user_id}}) {
    returning {
      profile_id
      profile_npwp_no
      profile_last_name
      profile_ktp_no
      profile_first_name
      profile_address
      user_id
      updated_at
      created_at
    }
  }
}
''');

final insertProfileMutation = gql('''
mutation InsertProfileMutation (\$data: profile_insert_input!) {
  insert_profile_one(object: \$data) {
    profile_id
    profile_first_name
    profile_last_name
    profile_address
    profile_ktp_no
    profile_npwp_no
    profile_phone
    user_id
    created_at
    updated_at
  }
}
''');

final getProfileQuery = gql('''
query GetProfileQuery {
  profile {
    profile_id
    profile_first_name
    profile_last_name
    profile_address
    profile_ktp_no
    profile_npwp_no
    profile_phone
    user_id
    created_at
    updated_at
  }
}
''');

final updateUMKMMutation = gql('''
mutation UpdateUMKMMutation (\$data: umkm_set_input!, \$user_id: uuid) {
  update_umkm(_set: \$data, where: {user_id: {_eq: \$user_id}}) {
    returning {
      umkm_id
      umkm_name
      umkm_performance
      umkm_desc
      umkm_shares
      user_id
      updated_at
      created_at
    }
  }
}
''');

final insertUMKMMutation = gql('''
mutation InsertUMKMMutation (\$data: umkm_insert_input!) {
  insert_umkm_one(object: \$data) {
    umkm_desc
    umkm_id
    umkm_name
    umkm_performance
    umkm_shares
    updated_at
    user_id
    created_at
  }
}
''');

final getUMKMQuery = gql('''
query GetUMKMQuery {
  profile {
    user_id
    profile_npwp_no
    profile_last_name
    profile_ktp_no
    profile_id
    profile_first_name
    profile_address
    updated_at
    created_at
  }
}
''');
