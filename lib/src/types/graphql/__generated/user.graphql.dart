// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:tubes_promvis_kelompok_8/src/types/graphql/scalar.dart';
import 'profile.graphql.dart';

class Fragment$userData {
  Fragment$userData({
    required this.id,
    this.email,
    required this.displayName,
    required this.defaultRole,
    required this.roles,
    this.$__typename = 'users',
  });

  factory Fragment$userData.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$displayName = json['displayName'];
    final l$defaultRole = json['defaultRole'];
    final l$roles = json['roles'];
    final l$$__typename = json['__typename'];
    return Fragment$userData(
      id: uuidFromJson(l$id),
      email: l$email == null ? null : citextFromJson(l$email),
      displayName: (l$displayName as String),
      defaultRole: (l$defaultRole as String),
      roles: (l$roles as List<dynamic>)
          .map((e) =>
              Fragment$userData$roles.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final UUID id;

  final Citext? email;

  final String displayName;

  final String defaultRole;

  final List<Fragment$userData$roles> roles;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToJson(l$id);
    final l$email = email;
    _resultData['email'] = l$email == null ? null : citextToJson(l$email);
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$defaultRole = defaultRole;
    _resultData['defaultRole'] = l$defaultRole;
    final l$roles = roles;
    _resultData['roles'] = l$roles.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$displayName = displayName;
    final l$defaultRole = defaultRole;
    final l$roles = roles;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$displayName,
      l$defaultRole,
      Object.hashAll(l$roles.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$userData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$defaultRole = defaultRole;
    final lOther$defaultRole = other.defaultRole;
    if (l$defaultRole != lOther$defaultRole) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles.length != lOther$roles.length) {
      return false;
    }
    for (int i = 0; i < l$roles.length; i++) {
      final l$roles$entry = l$roles[i];
      final lOther$roles$entry = lOther$roles[i];
      if (l$roles$entry != lOther$roles$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$userData on Fragment$userData {
  CopyWith$Fragment$userData<Fragment$userData> get copyWith =>
      CopyWith$Fragment$userData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$userData<TRes> {
  factory CopyWith$Fragment$userData(
    Fragment$userData instance,
    TRes Function(Fragment$userData) then,
  ) = _CopyWithImpl$Fragment$userData;

  factory CopyWith$Fragment$userData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$userData;

  TRes call({
    UUID? id,
    Citext? email,
    String? displayName,
    String? defaultRole,
    List<Fragment$userData$roles>? roles,
    String? $__typename,
  });
  TRes roles(
      Iterable<Fragment$userData$roles> Function(
              Iterable<
                  CopyWith$Fragment$userData$roles<Fragment$userData$roles>>)
          _fn);
}

class _CopyWithImpl$Fragment$userData<TRes>
    implements CopyWith$Fragment$userData<TRes> {
  _CopyWithImpl$Fragment$userData(
    this._instance,
    this._then,
  );

  final Fragment$userData _instance;

  final TRes Function(Fragment$userData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? displayName = _undefined,
    Object? defaultRole = _undefined,
    Object? roles = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userData(
        id: id == _undefined || id == null ? _instance.id : (id as UUID),
        email: email == _undefined ? _instance.email : (email as Citext?),
        displayName: displayName == _undefined || displayName == null
            ? _instance.displayName
            : (displayName as String),
        defaultRole: defaultRole == _undefined || defaultRole == null
            ? _instance.defaultRole
            : (defaultRole as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles as List<Fragment$userData$roles>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes roles(
          Iterable<Fragment$userData$roles> Function(
                  Iterable<
                      CopyWith$Fragment$userData$roles<
                          Fragment$userData$roles>>)
              _fn) =>
      call(
          roles:
              _fn(_instance.roles.map((e) => CopyWith$Fragment$userData$roles(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$userData<TRes>
    implements CopyWith$Fragment$userData<TRes> {
  _CopyWithStubImpl$Fragment$userData(this._res);

  TRes _res;

  call({
    UUID? id,
    Citext? email,
    String? displayName,
    String? defaultRole,
    List<Fragment$userData$roles>? roles,
    String? $__typename,
  }) =>
      _res;
  roles(_fn) => _res;
}

const fragmentDefinitionuserData = FragmentDefinitionNode(
  name: NameNode(value: 'userData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'users'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'displayName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'defaultRole'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'roles'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'role'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentuserData = DocumentNode(definitions: [
  fragmentDefinitionuserData,
]);

extension ClientExtension$Fragment$userData on graphql.GraphQLClient {
  void writeFragment$userData({
    required Fragment$userData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'userData',
            document: documentNodeFragmentuserData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$userData? readFragment$userData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'userData',
          document: documentNodeFragmentuserData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$userData.fromJson(result);
  }
}

class Fragment$userData$roles {
  Fragment$userData$roles({
    required this.role,
    this.$__typename = 'authUserRoles',
  });

  factory Fragment$userData$roles.fromJson(Map<String, dynamic> json) {
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Fragment$userData$roles(
      role: (l$role as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String role;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$role = role;
    _resultData['role'] = l$role;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$role = role;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$userData$roles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$userData$roles on Fragment$userData$roles {
  CopyWith$Fragment$userData$roles<Fragment$userData$roles> get copyWith =>
      CopyWith$Fragment$userData$roles(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$userData$roles<TRes> {
  factory CopyWith$Fragment$userData$roles(
    Fragment$userData$roles instance,
    TRes Function(Fragment$userData$roles) then,
  ) = _CopyWithImpl$Fragment$userData$roles;

  factory CopyWith$Fragment$userData$roles.stub(TRes res) =
      _CopyWithStubImpl$Fragment$userData$roles;

  TRes call({
    String? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$userData$roles<TRes>
    implements CopyWith$Fragment$userData$roles<TRes> {
  _CopyWithImpl$Fragment$userData$roles(
    this._instance,
    this._then,
  );

  final Fragment$userData$roles _instance;

  final TRes Function(Fragment$userData$roles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userData$roles(
        role: role == _undefined || role == null
            ? _instance.role
            : (role as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$userData$roles<TRes>
    implements CopyWith$Fragment$userData$roles<TRes> {
  _CopyWithStubImpl$Fragment$userData$roles(this._res);

  TRes _res;

  call({
    String? role,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$userProfile {
  Fragment$userProfile({
    this.profile,
    this.$__typename = 'users',
  });

  factory Fragment$userProfile.fromJson(Map<String, dynamic> json) {
    final l$profile = json['profile'];
    final l$$__typename = json['__typename'];
    return Fragment$userProfile(
      profile: l$profile == null
          ? null
          : Fragment$profileData.fromJson((l$profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$profileData? profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile = profile;
    _resultData['profile'] = l$profile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$userProfile) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$userProfile on Fragment$userProfile {
  CopyWith$Fragment$userProfile<Fragment$userProfile> get copyWith =>
      CopyWith$Fragment$userProfile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$userProfile<TRes> {
  factory CopyWith$Fragment$userProfile(
    Fragment$userProfile instance,
    TRes Function(Fragment$userProfile) then,
  ) = _CopyWithImpl$Fragment$userProfile;

  factory CopyWith$Fragment$userProfile.stub(TRes res) =
      _CopyWithStubImpl$Fragment$userProfile;

  TRes call({
    Fragment$profileData? profile,
    String? $__typename,
  });
  CopyWith$Fragment$profileData<TRes> get profile;
}

class _CopyWithImpl$Fragment$userProfile<TRes>
    implements CopyWith$Fragment$userProfile<TRes> {
  _CopyWithImpl$Fragment$userProfile(
    this._instance,
    this._then,
  );

  final Fragment$userProfile _instance;

  final TRes Function(Fragment$userProfile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$userProfile(
        profile: profile == _undefined
            ? _instance.profile
            : (profile as Fragment$profileData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$profileData<TRes> get profile {
    final local$profile = _instance.profile;
    return local$profile == null
        ? CopyWith$Fragment$profileData.stub(_then(_instance))
        : CopyWith$Fragment$profileData(local$profile, (e) => call(profile: e));
  }
}

class _CopyWithStubImpl$Fragment$userProfile<TRes>
    implements CopyWith$Fragment$userProfile<TRes> {
  _CopyWithStubImpl$Fragment$userProfile(this._res);

  TRes _res;

  call({
    Fragment$profileData? profile,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$profileData<TRes> get profile =>
      CopyWith$Fragment$profileData.stub(_res);
}

const fragmentDefinitionuserProfile = FragmentDefinitionNode(
  name: NameNode(value: 'userProfile'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'users'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'profile'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'profileData'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentuserProfile = DocumentNode(definitions: [
  fragmentDefinitionuserProfile,
  fragmentDefinitionprofileData,
]);

extension ClientExtension$Fragment$userProfile on graphql.GraphQLClient {
  void writeFragment$userProfile({
    required Fragment$userProfile data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'userProfile',
            document: documentNodeFragmentuserProfile,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$userProfile? readFragment$userProfile({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'userProfile',
          document: documentNodeFragmentuserProfile,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$userProfile.fromJson(result);
  }
}

class Variables$Query$GetUserByPkQuery {
  factory Variables$Query$GetUserByPkQuery({UUID? user_id}) =>
      Variables$Query$GetUserByPkQuery._({
        if (user_id != null) r'user_id': user_id,
      });

  Variables$Query$GetUserByPkQuery._(this._$data);

  factory Variables$Query$GetUserByPkQuery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('user_id')) {
      final l$user_id = data['user_id'];
      result$data['user_id'] =
          l$user_id == null ? null : uuidFromJson(l$user_id);
    }
    return Variables$Query$GetUserByPkQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID? get user_id => (_$data['user_id'] as UUID?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('user_id')) {
      final l$user_id = user_id;
      result$data['user_id'] = l$user_id == null ? null : uuidToJson(l$user_id);
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetUserByPkQuery<Variables$Query$GetUserByPkQuery>
      get copyWith => CopyWith$Variables$Query$GetUserByPkQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserByPkQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (_$data.containsKey('user_id') != other._$data.containsKey('user_id')) {
      return false;
    }
    if (l$user_id != lOther$user_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    return Object.hashAll(
        [_$data.containsKey('user_id') ? l$user_id : const {}]);
  }
}

abstract class CopyWith$Variables$Query$GetUserByPkQuery<TRes> {
  factory CopyWith$Variables$Query$GetUserByPkQuery(
    Variables$Query$GetUserByPkQuery instance,
    TRes Function(Variables$Query$GetUserByPkQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetUserByPkQuery;

  factory CopyWith$Variables$Query$GetUserByPkQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserByPkQuery;

  TRes call({UUID? user_id});
}

class _CopyWithImpl$Variables$Query$GetUserByPkQuery<TRes>
    implements CopyWith$Variables$Query$GetUserByPkQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetUserByPkQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserByPkQuery _instance;

  final TRes Function(Variables$Query$GetUserByPkQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user_id = _undefined}) =>
      _then(Variables$Query$GetUserByPkQuery._({
        ..._instance._$data,
        if (user_id != _undefined) 'user_id': (user_id as UUID?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserByPkQuery<TRes>
    implements CopyWith$Variables$Query$GetUserByPkQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserByPkQuery(this._res);

  TRes _res;

  call({UUID? user_id}) => _res;
}

class Query$GetUserByPkQuery {
  Query$GetUserByPkQuery({
    required this.users,
    this.$__typename = 'query_root',
  });

  factory Query$GetUserByPkQuery.fromJson(Map<String, dynamic> json) {
    final l$users = json['users'];
    final l$$__typename = json['__typename'];
    return Query$GetUserByPkQuery(
      users: (l$users as List<dynamic>)
          .map((e) => Query$GetUserByPkQuery$users.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetUserByPkQuery$users> users;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$users = users;
    _resultData['users'] = l$users.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$users = users;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$users.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserByPkQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$users = users;
    final lOther$users = other.users;
    if (l$users.length != lOther$users.length) {
      return false;
    }
    for (int i = 0; i < l$users.length; i++) {
      final l$users$entry = l$users[i];
      final lOther$users$entry = lOther$users[i];
      if (l$users$entry != lOther$users$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserByPkQuery on Query$GetUserByPkQuery {
  CopyWith$Query$GetUserByPkQuery<Query$GetUserByPkQuery> get copyWith =>
      CopyWith$Query$GetUserByPkQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserByPkQuery<TRes> {
  factory CopyWith$Query$GetUserByPkQuery(
    Query$GetUserByPkQuery instance,
    TRes Function(Query$GetUserByPkQuery) then,
  ) = _CopyWithImpl$Query$GetUserByPkQuery;

  factory CopyWith$Query$GetUserByPkQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserByPkQuery;

  TRes call({
    List<Query$GetUserByPkQuery$users>? users,
    String? $__typename,
  });
  TRes users(
      Iterable<Query$GetUserByPkQuery$users> Function(
              Iterable<
                  CopyWith$Query$GetUserByPkQuery$users<
                      Query$GetUserByPkQuery$users>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserByPkQuery<TRes>
    implements CopyWith$Query$GetUserByPkQuery<TRes> {
  _CopyWithImpl$Query$GetUserByPkQuery(
    this._instance,
    this._then,
  );

  final Query$GetUserByPkQuery _instance;

  final TRes Function(Query$GetUserByPkQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? users = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserByPkQuery(
        users: users == _undefined || users == null
            ? _instance.users
            : (users as List<Query$GetUserByPkQuery$users>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes users(
          Iterable<Query$GetUserByPkQuery$users> Function(
                  Iterable<
                      CopyWith$Query$GetUserByPkQuery$users<
                          Query$GetUserByPkQuery$users>>)
              _fn) =>
      call(
          users: _fn(
              _instance.users.map((e) => CopyWith$Query$GetUserByPkQuery$users(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetUserByPkQuery<TRes>
    implements CopyWith$Query$GetUserByPkQuery<TRes> {
  _CopyWithStubImpl$Query$GetUserByPkQuery(this._res);

  TRes _res;

  call({
    List<Query$GetUserByPkQuery$users>? users,
    String? $__typename,
  }) =>
      _res;
  users(_fn) => _res;
}

const documentNodeQueryGetUserByPkQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserByPkQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'user_id')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'userData'),
            directives: [],
          ),
          FragmentSpreadNode(
            name: NameNode(value: 'userProfile'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionuserData,
  fragmentDefinitionuserProfile,
  fragmentDefinitionprofileData,
]);
Query$GetUserByPkQuery _parserFn$Query$GetUserByPkQuery(
        Map<String, dynamic> data) =>
    Query$GetUserByPkQuery.fromJson(data);
typedef OnQueryComplete$Query$GetUserByPkQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserByPkQuery?,
);

class Options$Query$GetUserByPkQuery
    extends graphql.QueryOptions<Query$GetUserByPkQuery> {
  Options$Query$GetUserByPkQuery({
    String? operationName,
    Variables$Query$GetUserByPkQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserByPkQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserByPkQuery? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$GetUserByPkQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserByPkQuery,
          parserFn: _parserFn$Query$GetUserByPkQuery,
        );

  final OnQueryComplete$Query$GetUserByPkQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserByPkQuery
    extends graphql.WatchQueryOptions<Query$GetUserByPkQuery> {
  WatchOptions$Query$GetUserByPkQuery({
    String? operationName,
    Variables$Query$GetUserByPkQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserByPkQuery? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetUserByPkQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserByPkQuery,
        );
}

class FetchMoreOptions$Query$GetUserByPkQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserByPkQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetUserByPkQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetUserByPkQuery,
        );
}

extension ClientExtension$Query$GetUserByPkQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserByPkQuery>> query$GetUserByPkQuery(
          [Options$Query$GetUserByPkQuery? options]) async =>
      await this.query(options ?? Options$Query$GetUserByPkQuery());
  graphql.ObservableQuery<Query$GetUserByPkQuery> watchQuery$GetUserByPkQuery(
          [WatchOptions$Query$GetUserByPkQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetUserByPkQuery());
  void writeQuery$GetUserByPkQuery({
    required Query$GetUserByPkQuery data,
    Variables$Query$GetUserByPkQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUserByPkQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserByPkQuery? readQuery$GetUserByPkQuery({
    Variables$Query$GetUserByPkQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetUserByPkQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserByPkQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserByPkQuery>
    useQuery$GetUserByPkQuery([Options$Query$GetUserByPkQuery? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetUserByPkQuery());
graphql.ObservableQuery<Query$GetUserByPkQuery> useWatchQuery$GetUserByPkQuery(
        [WatchOptions$Query$GetUserByPkQuery? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetUserByPkQuery());

class Query$GetUserByPkQuery$Widget
    extends graphql_flutter.Query<Query$GetUserByPkQuery> {
  Query$GetUserByPkQuery$Widget({
    widgets.Key? key,
    Options$Query$GetUserByPkQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetUserByPkQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetUserByPkQuery(),
          builder: builder,
        );
}

class Query$GetUserByPkQuery$users
    implements Fragment$userData, Fragment$userProfile {
  Query$GetUserByPkQuery$users({
    required this.id,
    this.email,
    required this.displayName,
    required this.defaultRole,
    required this.roles,
    this.$__typename = 'users',
    this.profile,
  });

  factory Query$GetUserByPkQuery$users.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$displayName = json['displayName'];
    final l$defaultRole = json['defaultRole'];
    final l$roles = json['roles'];
    final l$$__typename = json['__typename'];
    final l$profile = json['profile'];
    return Query$GetUserByPkQuery$users(
      id: uuidFromJson(l$id),
      email: l$email == null ? null : citextFromJson(l$email),
      displayName: (l$displayName as String),
      defaultRole: (l$defaultRole as String),
      roles: (l$roles as List<dynamic>)
          .map((e) => Query$GetUserByPkQuery$users$roles.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
      profile: l$profile == null
          ? null
          : Fragment$profileData.fromJson((l$profile as Map<String, dynamic>)),
    );
  }

  final UUID id;

  final Citext? email;

  final String displayName;

  final String defaultRole;

  final List<Query$GetUserByPkQuery$users$roles> roles;

  final String $__typename;

  final Fragment$profileData? profile;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = uuidToJson(l$id);
    final l$email = email;
    _resultData['email'] = l$email == null ? null : citextToJson(l$email);
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$defaultRole = defaultRole;
    _resultData['defaultRole'] = l$defaultRole;
    final l$roles = roles;
    _resultData['roles'] = l$roles.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$profile = profile;
    _resultData['profile'] = l$profile?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$displayName = displayName;
    final l$defaultRole = defaultRole;
    final l$roles = roles;
    final l$$__typename = $__typename;
    final l$profile = profile;
    return Object.hashAll([
      l$id,
      l$email,
      l$displayName,
      l$defaultRole,
      Object.hashAll(l$roles.map((v) => v)),
      l$$__typename,
      l$profile,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserByPkQuery$users) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$defaultRole = defaultRole;
    final lOther$defaultRole = other.defaultRole;
    if (l$defaultRole != lOther$defaultRole) {
      return false;
    }
    final l$roles = roles;
    final lOther$roles = other.roles;
    if (l$roles.length != lOther$roles.length) {
      return false;
    }
    for (int i = 0; i < l$roles.length; i++) {
      final l$roles$entry = l$roles[i];
      final lOther$roles$entry = lOther$roles[i];
      if (l$roles$entry != lOther$roles$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile != lOther$profile) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserByPkQuery$users
    on Query$GetUserByPkQuery$users {
  CopyWith$Query$GetUserByPkQuery$users<Query$GetUserByPkQuery$users>
      get copyWith => CopyWith$Query$GetUserByPkQuery$users(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserByPkQuery$users<TRes> {
  factory CopyWith$Query$GetUserByPkQuery$users(
    Query$GetUserByPkQuery$users instance,
    TRes Function(Query$GetUserByPkQuery$users) then,
  ) = _CopyWithImpl$Query$GetUserByPkQuery$users;

  factory CopyWith$Query$GetUserByPkQuery$users.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserByPkQuery$users;

  TRes call({
    UUID? id,
    Citext? email,
    String? displayName,
    String? defaultRole,
    List<Query$GetUserByPkQuery$users$roles>? roles,
    String? $__typename,
    Fragment$profileData? profile,
  });
  TRes roles(
      Iterable<Query$GetUserByPkQuery$users$roles> Function(
              Iterable<
                  CopyWith$Query$GetUserByPkQuery$users$roles<
                      Query$GetUserByPkQuery$users$roles>>)
          _fn);
  CopyWith$Fragment$profileData<TRes> get profile;
}

class _CopyWithImpl$Query$GetUserByPkQuery$users<TRes>
    implements CopyWith$Query$GetUserByPkQuery$users<TRes> {
  _CopyWithImpl$Query$GetUserByPkQuery$users(
    this._instance,
    this._then,
  );

  final Query$GetUserByPkQuery$users _instance;

  final TRes Function(Query$GetUserByPkQuery$users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? displayName = _undefined,
    Object? defaultRole = _undefined,
    Object? roles = _undefined,
    Object? $__typename = _undefined,
    Object? profile = _undefined,
  }) =>
      _then(Query$GetUserByPkQuery$users(
        id: id == _undefined || id == null ? _instance.id : (id as UUID),
        email: email == _undefined ? _instance.email : (email as Citext?),
        displayName: displayName == _undefined || displayName == null
            ? _instance.displayName
            : (displayName as String),
        defaultRole: defaultRole == _undefined || defaultRole == null
            ? _instance.defaultRole
            : (defaultRole as String),
        roles: roles == _undefined || roles == null
            ? _instance.roles
            : (roles as List<Query$GetUserByPkQuery$users$roles>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        profile: profile == _undefined
            ? _instance.profile
            : (profile as Fragment$profileData?),
      ));
  TRes roles(
          Iterable<Query$GetUserByPkQuery$users$roles> Function(
                  Iterable<
                      CopyWith$Query$GetUserByPkQuery$users$roles<
                          Query$GetUserByPkQuery$users$roles>>)
              _fn) =>
      call(
          roles: _fn(_instance.roles
              .map((e) => CopyWith$Query$GetUserByPkQuery$users$roles(
                    e,
                    (i) => i,
                  ))).toList());
  CopyWith$Fragment$profileData<TRes> get profile {
    final local$profile = _instance.profile;
    return local$profile == null
        ? CopyWith$Fragment$profileData.stub(_then(_instance))
        : CopyWith$Fragment$profileData(local$profile, (e) => call(profile: e));
  }
}

class _CopyWithStubImpl$Query$GetUserByPkQuery$users<TRes>
    implements CopyWith$Query$GetUserByPkQuery$users<TRes> {
  _CopyWithStubImpl$Query$GetUserByPkQuery$users(this._res);

  TRes _res;

  call({
    UUID? id,
    Citext? email,
    String? displayName,
    String? defaultRole,
    List<Query$GetUserByPkQuery$users$roles>? roles,
    String? $__typename,
    Fragment$profileData? profile,
  }) =>
      _res;
  roles(_fn) => _res;
  CopyWith$Fragment$profileData<TRes> get profile =>
      CopyWith$Fragment$profileData.stub(_res);
}

class Query$GetUserByPkQuery$users$roles implements Fragment$userData$roles {
  Query$GetUserByPkQuery$users$roles({
    required this.role,
    this.$__typename = 'authUserRoles',
  });

  factory Query$GetUserByPkQuery$users$roles.fromJson(
      Map<String, dynamic> json) {
    final l$role = json['role'];
    final l$$__typename = json['__typename'];
    return Query$GetUserByPkQuery$users$roles(
      role: (l$role as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String role;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$role = role;
    _resultData['role'] = l$role;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$role = role;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$role,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserByPkQuery$users$roles) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetUserByPkQuery$users$roles
    on Query$GetUserByPkQuery$users$roles {
  CopyWith$Query$GetUserByPkQuery$users$roles<
          Query$GetUserByPkQuery$users$roles>
      get copyWith => CopyWith$Query$GetUserByPkQuery$users$roles(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserByPkQuery$users$roles<TRes> {
  factory CopyWith$Query$GetUserByPkQuery$users$roles(
    Query$GetUserByPkQuery$users$roles instance,
    TRes Function(Query$GetUserByPkQuery$users$roles) then,
  ) = _CopyWithImpl$Query$GetUserByPkQuery$users$roles;

  factory CopyWith$Query$GetUserByPkQuery$users$roles.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserByPkQuery$users$roles;

  TRes call({
    String? role,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUserByPkQuery$users$roles<TRes>
    implements CopyWith$Query$GetUserByPkQuery$users$roles<TRes> {
  _CopyWithImpl$Query$GetUserByPkQuery$users$roles(
    this._instance,
    this._then,
  );

  final Query$GetUserByPkQuery$users$roles _instance;

  final TRes Function(Query$GetUserByPkQuery$users$roles) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? role = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserByPkQuery$users$roles(
        role: role == _undefined || role == null
            ? _instance.role
            : (role as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUserByPkQuery$users$roles<TRes>
    implements CopyWith$Query$GetUserByPkQuery$users$roles<TRes> {
  _CopyWithStubImpl$Query$GetUserByPkQuery$users$roles(this._res);

  TRes _res;

  call({
    String? role,
    String? $__typename,
  }) =>
      _res;
}
