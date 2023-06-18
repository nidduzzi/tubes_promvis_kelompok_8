// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:tubes_promvis_kelompok_8/src/types/graphql/scalar.dart';
import 'schema.graphql.dart';

class Fragment$profileData {
  Fragment$profileData({
    required this.profile_id,
    required this.profile_first_name,
    this.profile_last_name,
    required this.profile_address,
    required this.profile_ktp_no,
    this.profile_npwp_no,
    required this.profile_phone,
    required this.user_id,
    this.created_at,
    this.updated_at,
    this.$__typename = 'profile',
  });

  factory Fragment$profileData.fromJson(Map<String, dynamic> json) {
    final l$profile_id = json['profile_id'];
    final l$profile_first_name = json['profile_first_name'];
    final l$profile_last_name = json['profile_last_name'];
    final l$profile_address = json['profile_address'];
    final l$profile_ktp_no = json['profile_ktp_no'];
    final l$profile_npwp_no = json['profile_npwp_no'];
    final l$profile_phone = json['profile_phone'];
    final l$user_id = json['user_id'];
    final l$created_at = json['created_at'];
    final l$updated_at = json['updated_at'];
    final l$$__typename = json['__typename'];
    return Fragment$profileData(
      profile_id: (l$profile_id as int),
      profile_first_name: (l$profile_first_name as String),
      profile_last_name: (l$profile_last_name as String?),
      profile_address: (l$profile_address as String),
      profile_ktp_no: (l$profile_ktp_no as String),
      profile_npwp_no: (l$profile_npwp_no as String?),
      profile_phone: (l$profile_phone as String),
      user_id: uuidFromJson(l$user_id),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int profile_id;

  final String profile_first_name;

  final String? profile_last_name;

  final String profile_address;

  final String profile_ktp_no;

  final String? profile_npwp_no;

  final String profile_phone;

  final UUID user_id;

  final DateTime? created_at;

  final DateTime? updated_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile_id = profile_id;
    _resultData['profile_id'] = l$profile_id;
    final l$profile_first_name = profile_first_name;
    _resultData['profile_first_name'] = l$profile_first_name;
    final l$profile_last_name = profile_last_name;
    _resultData['profile_last_name'] = l$profile_last_name;
    final l$profile_address = profile_address;
    _resultData['profile_address'] = l$profile_address;
    final l$profile_ktp_no = profile_ktp_no;
    _resultData['profile_ktp_no'] = l$profile_ktp_no;
    final l$profile_npwp_no = profile_npwp_no;
    _resultData['profile_npwp_no'] = l$profile_npwp_no;
    final l$profile_phone = profile_phone;
    _resultData['profile_phone'] = l$profile_phone;
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile_id = profile_id;
    final l$profile_first_name = profile_first_name;
    final l$profile_last_name = profile_last_name;
    final l$profile_address = profile_address;
    final l$profile_ktp_no = profile_ktp_no;
    final l$profile_npwp_no = profile_npwp_no;
    final l$profile_phone = profile_phone;
    final l$user_id = user_id;
    final l$created_at = created_at;
    final l$updated_at = updated_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$profile_id,
      l$profile_first_name,
      l$profile_last_name,
      l$profile_address,
      l$profile_ktp_no,
      l$profile_npwp_no,
      l$profile_phone,
      l$user_id,
      l$created_at,
      l$updated_at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$profileData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile_id = profile_id;
    final lOther$profile_id = other.profile_id;
    if (l$profile_id != lOther$profile_id) {
      return false;
    }
    final l$profile_first_name = profile_first_name;
    final lOther$profile_first_name = other.profile_first_name;
    if (l$profile_first_name != lOther$profile_first_name) {
      return false;
    }
    final l$profile_last_name = profile_last_name;
    final lOther$profile_last_name = other.profile_last_name;
    if (l$profile_last_name != lOther$profile_last_name) {
      return false;
    }
    final l$profile_address = profile_address;
    final lOther$profile_address = other.profile_address;
    if (l$profile_address != lOther$profile_address) {
      return false;
    }
    final l$profile_ktp_no = profile_ktp_no;
    final lOther$profile_ktp_no = other.profile_ktp_no;
    if (l$profile_ktp_no != lOther$profile_ktp_no) {
      return false;
    }
    final l$profile_npwp_no = profile_npwp_no;
    final lOther$profile_npwp_no = other.profile_npwp_no;
    if (l$profile_npwp_no != lOther$profile_npwp_no) {
      return false;
    }
    final l$profile_phone = profile_phone;
    final lOther$profile_phone = other.profile_phone;
    if (l$profile_phone != lOther$profile_phone) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$updated_at = updated_at;
    final lOther$updated_at = other.updated_at;
    if (l$updated_at != lOther$updated_at) {
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

extension UtilityExtension$Fragment$profileData on Fragment$profileData {
  CopyWith$Fragment$profileData<Fragment$profileData> get copyWith =>
      CopyWith$Fragment$profileData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$profileData<TRes> {
  factory CopyWith$Fragment$profileData(
    Fragment$profileData instance,
    TRes Function(Fragment$profileData) then,
  ) = _CopyWithImpl$Fragment$profileData;

  factory CopyWith$Fragment$profileData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$profileData;

  TRes call({
    int? profile_id,
    String? profile_first_name,
    String? profile_last_name,
    String? profile_address,
    String? profile_ktp_no,
    String? profile_npwp_no,
    String? profile_phone,
    UUID? user_id,
    DateTime? created_at,
    DateTime? updated_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$profileData<TRes>
    implements CopyWith$Fragment$profileData<TRes> {
  _CopyWithImpl$Fragment$profileData(
    this._instance,
    this._then,
  );

  final Fragment$profileData _instance;

  final TRes Function(Fragment$profileData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profile_id = _undefined,
    Object? profile_first_name = _undefined,
    Object? profile_last_name = _undefined,
    Object? profile_address = _undefined,
    Object? profile_ktp_no = _undefined,
    Object? profile_npwp_no = _undefined,
    Object? profile_phone = _undefined,
    Object? user_id = _undefined,
    Object? created_at = _undefined,
    Object? updated_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$profileData(
        profile_id: profile_id == _undefined || profile_id == null
            ? _instance.profile_id
            : (profile_id as int),
        profile_first_name:
            profile_first_name == _undefined || profile_first_name == null
                ? _instance.profile_first_name
                : (profile_first_name as String),
        profile_last_name: profile_last_name == _undefined
            ? _instance.profile_last_name
            : (profile_last_name as String?),
        profile_address:
            profile_address == _undefined || profile_address == null
                ? _instance.profile_address
                : (profile_address as String),
        profile_ktp_no: profile_ktp_no == _undefined || profile_ktp_no == null
            ? _instance.profile_ktp_no
            : (profile_ktp_no as String),
        profile_npwp_no: profile_npwp_no == _undefined
            ? _instance.profile_npwp_no
            : (profile_npwp_no as String?),
        profile_phone: profile_phone == _undefined || profile_phone == null
            ? _instance.profile_phone
            : (profile_phone as String),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$profileData<TRes>
    implements CopyWith$Fragment$profileData<TRes> {
  _CopyWithStubImpl$Fragment$profileData(this._res);

  TRes _res;

  call({
    int? profile_id,
    String? profile_first_name,
    String? profile_last_name,
    String? profile_address,
    String? profile_ktp_no,
    String? profile_npwp_no,
    String? profile_phone,
    UUID? user_id,
    DateTime? created_at,
    DateTime? updated_at,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionprofileData = FragmentDefinitionNode(
  name: NameNode(value: 'profileData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'profile'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'profile_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_first_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_last_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_address'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_ktp_no'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_npwp_no'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'profile_phone'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'created_at'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'updated_at'),
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
);
const documentNodeFragmentprofileData = DocumentNode(definitions: [
  fragmentDefinitionprofileData,
]);

extension ClientExtension$Fragment$profileData on graphql.GraphQLClient {
  void writeFragment$profileData({
    required Fragment$profileData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'profileData',
            document: documentNodeFragmentprofileData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$profileData? readFragment$profileData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'profileData',
          document: documentNodeFragmentprofileData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$profileData.fromJson(result);
  }
}

class Variables$Mutation$InsertProfileMutation {
  factory Variables$Mutation$InsertProfileMutation(
          {required Input$profile_insert_input data}) =>
      Variables$Mutation$InsertProfileMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertProfileMutation._(this._$data);

  factory Variables$Mutation$InsertProfileMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$profile_insert_input.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertProfileMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$profile_insert_input get data =>
      (_$data['data'] as Input$profile_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertProfileMutation<
          Variables$Mutation$InsertProfileMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertProfileMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertProfileMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    return Object.hashAll([l$data]);
  }
}

abstract class CopyWith$Variables$Mutation$InsertProfileMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertProfileMutation(
    Variables$Mutation$InsertProfileMutation instance,
    TRes Function(Variables$Mutation$InsertProfileMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertProfileMutation;

  factory CopyWith$Variables$Mutation$InsertProfileMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertProfileMutation;

  TRes call({Input$profile_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertProfileMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertProfileMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertProfileMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertProfileMutation _instance;

  final TRes Function(Variables$Mutation$InsertProfileMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertProfileMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$profile_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertProfileMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertProfileMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertProfileMutation(this._res);

  TRes _res;

  call({Input$profile_insert_input? data}) => _res;
}

class Mutation$InsertProfileMutation {
  Mutation$InsertProfileMutation({
    this.insert_profile_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertProfileMutation.fromJson(Map<String, dynamic> json) {
    final l$insert_profile_one = json['insert_profile_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertProfileMutation(
      insert_profile_one: l$insert_profile_one == null
          ? null
          : Fragment$profileData.fromJson(
              (l$insert_profile_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$profileData? insert_profile_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_profile_one = insert_profile_one;
    _resultData['insert_profile_one'] = l$insert_profile_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_profile_one = insert_profile_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_profile_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertProfileMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_profile_one = insert_profile_one;
    final lOther$insert_profile_one = other.insert_profile_one;
    if (l$insert_profile_one != lOther$insert_profile_one) {
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

extension UtilityExtension$Mutation$InsertProfileMutation
    on Mutation$InsertProfileMutation {
  CopyWith$Mutation$InsertProfileMutation<Mutation$InsertProfileMutation>
      get copyWith => CopyWith$Mutation$InsertProfileMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertProfileMutation<TRes> {
  factory CopyWith$Mutation$InsertProfileMutation(
    Mutation$InsertProfileMutation instance,
    TRes Function(Mutation$InsertProfileMutation) then,
  ) = _CopyWithImpl$Mutation$InsertProfileMutation;

  factory CopyWith$Mutation$InsertProfileMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertProfileMutation;

  TRes call({
    Fragment$profileData? insert_profile_one,
    String? $__typename,
  });
  CopyWith$Fragment$profileData<TRes> get insert_profile_one;
}

class _CopyWithImpl$Mutation$InsertProfileMutation<TRes>
    implements CopyWith$Mutation$InsertProfileMutation<TRes> {
  _CopyWithImpl$Mutation$InsertProfileMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertProfileMutation _instance;

  final TRes Function(Mutation$InsertProfileMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_profile_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertProfileMutation(
        insert_profile_one: insert_profile_one == _undefined
            ? _instance.insert_profile_one
            : (insert_profile_one as Fragment$profileData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$profileData<TRes> get insert_profile_one {
    final local$insert_profile_one = _instance.insert_profile_one;
    return local$insert_profile_one == null
        ? CopyWith$Fragment$profileData.stub(_then(_instance))
        : CopyWith$Fragment$profileData(
            local$insert_profile_one, (e) => call(insert_profile_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertProfileMutation<TRes>
    implements CopyWith$Mutation$InsertProfileMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertProfileMutation(this._res);

  TRes _res;

  call({
    Fragment$profileData? insert_profile_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$profileData<TRes> get insert_profile_one =>
      CopyWith$Fragment$profileData.stub(_res);
}

const documentNodeMutationInsertProfileMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertProfileMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'profile_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_profile_one'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'object'),
            value: VariableNode(name: NameNode(value: 'data')),
          )
        ],
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
  ),
  fragmentDefinitionprofileData,
]);
Mutation$InsertProfileMutation _parserFn$Mutation$InsertProfileMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertProfileMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertProfileMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertProfileMutation?,
);

class Options$Mutation$InsertProfileMutation
    extends graphql.MutationOptions<Mutation$InsertProfileMutation> {
  Options$Mutation$InsertProfileMutation({
    String? operationName,
    required Variables$Mutation$InsertProfileMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertProfileMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertProfileMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertProfileMutation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$InsertProfileMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertProfileMutation,
          parserFn: _parserFn$Mutation$InsertProfileMutation,
        );

  final OnMutationCompleted$Mutation$InsertProfileMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertProfileMutation
    extends graphql.WatchQueryOptions<Mutation$InsertProfileMutation> {
  WatchOptions$Mutation$InsertProfileMutation({
    String? operationName,
    required Variables$Mutation$InsertProfileMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertProfileMutation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationInsertProfileMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertProfileMutation,
        );
}

extension ClientExtension$Mutation$InsertProfileMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertProfileMutation>>
      mutate$InsertProfileMutation(
              Options$Mutation$InsertProfileMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertProfileMutation>
      watchMutation$InsertProfileMutation(
              WatchOptions$Mutation$InsertProfileMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertProfileMutation$HookResult {
  Mutation$InsertProfileMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertProfileMutation runMutation;

  final graphql.QueryResult<Mutation$InsertProfileMutation> result;
}

Mutation$InsertProfileMutation$HookResult useMutation$InsertProfileMutation(
    [WidgetOptions$Mutation$InsertProfileMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InsertProfileMutation());
  return Mutation$InsertProfileMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertProfileMutation>
    useWatchMutation$InsertProfileMutation(
            WatchOptions$Mutation$InsertProfileMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertProfileMutation
    extends graphql.MutationOptions<Mutation$InsertProfileMutation> {
  WidgetOptions$Mutation$InsertProfileMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertProfileMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertProfileMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertProfileMutation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$InsertProfileMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertProfileMutation,
          parserFn: _parserFn$Mutation$InsertProfileMutation,
        );

  final OnMutationCompleted$Mutation$InsertProfileMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertProfileMutation
    = graphql.MultiSourceResult<Mutation$InsertProfileMutation> Function(
  Variables$Mutation$InsertProfileMutation, {
  Object? optimisticResult,
  Mutation$InsertProfileMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertProfileMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertProfileMutation,
  graphql.QueryResult<Mutation$InsertProfileMutation>?,
);

class Mutation$InsertProfileMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertProfileMutation> {
  Mutation$InsertProfileMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertProfileMutation? options,
    required Builder$Mutation$InsertProfileMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertProfileMutation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Variables$Mutation$UpdateProfileMutation {
  factory Variables$Mutation$UpdateProfileMutation({
    Input$profile_set_input? data,
    required UUID user_id,
  }) =>
      Variables$Mutation$UpdateProfileMutation._({
        if (data != null) r'data': data,
        r'user_id': user_id,
      });

  Variables$Mutation$UpdateProfileMutation._(this._$data);

  factory Variables$Mutation$UpdateProfileMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('data')) {
      final l$data = data['data'];
      result$data['data'] = l$data == null
          ? null
          : Input$profile_set_input.fromJson((l$data as Map<String, dynamic>));
    }
    final l$user_id = data['user_id'];
    result$data['user_id'] = uuidFromJson(l$user_id);
    return Variables$Mutation$UpdateProfileMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$profile_set_input? get data =>
      (_$data['data'] as Input$profile_set_input?);
  UUID get user_id => (_$data['user_id'] as UUID);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('data')) {
      final l$data = data;
      result$data['data'] = l$data?.toJson();
    }
    final l$user_id = user_id;
    result$data['user_id'] = uuidToJson(l$user_id);
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfileMutation<
          Variables$Mutation$UpdateProfileMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfileMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateProfileMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (_$data.containsKey('data') != other._$data.containsKey('data')) {
      return false;
    }
    if (l$data != lOther$data) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$user_id = user_id;
    return Object.hashAll([
      _$data.containsKey('data') ? l$data : const {},
      l$user_id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProfileMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfileMutation(
    Variables$Mutation$UpdateProfileMutation instance,
    TRes Function(Variables$Mutation$UpdateProfileMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfileMutation;

  factory CopyWith$Variables$Mutation$UpdateProfileMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfileMutation;

  TRes call({
    Input$profile_set_input? data,
    UUID? user_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProfileMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfileMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfileMutation _instance;

  final TRes Function(Variables$Mutation$UpdateProfileMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? user_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProfileMutation._({
        ..._instance._$data,
        if (data != _undefined) 'data': (data as Input$profile_set_input?),
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfileMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfileMutation(this._res);

  TRes _res;

  call({
    Input$profile_set_input? data,
    UUID? user_id,
  }) =>
      _res;
}

class Mutation$UpdateProfileMutation {
  Mutation$UpdateProfileMutation({
    this.update_profile,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateProfileMutation.fromJson(Map<String, dynamic> json) {
    final l$update_profile = json['update_profile'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfileMutation(
      update_profile: l$update_profile == null
          ? null
          : Mutation$UpdateProfileMutation$update_profile.fromJson(
              (l$update_profile as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateProfileMutation$update_profile? update_profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_profile = update_profile;
    _resultData['update_profile'] = l$update_profile?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_profile = update_profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_profile,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProfileMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_profile = update_profile;
    final lOther$update_profile = other.update_profile;
    if (l$update_profile != lOther$update_profile) {
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

extension UtilityExtension$Mutation$UpdateProfileMutation
    on Mutation$UpdateProfileMutation {
  CopyWith$Mutation$UpdateProfileMutation<Mutation$UpdateProfileMutation>
      get copyWith => CopyWith$Mutation$UpdateProfileMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfileMutation<TRes> {
  factory CopyWith$Mutation$UpdateProfileMutation(
    Mutation$UpdateProfileMutation instance,
    TRes Function(Mutation$UpdateProfileMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateProfileMutation;

  factory CopyWith$Mutation$UpdateProfileMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfileMutation;

  TRes call({
    Mutation$UpdateProfileMutation$update_profile? update_profile,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateProfileMutation$update_profile<TRes>
      get update_profile;
}

class _CopyWithImpl$Mutation$UpdateProfileMutation<TRes>
    implements CopyWith$Mutation$UpdateProfileMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateProfileMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfileMutation _instance;

  final TRes Function(Mutation$UpdateProfileMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfileMutation(
        update_profile: update_profile == _undefined
            ? _instance.update_profile
            : (update_profile
                as Mutation$UpdateProfileMutation$update_profile?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateProfileMutation$update_profile<TRes>
      get update_profile {
    final local$update_profile = _instance.update_profile;
    return local$update_profile == null
        ? CopyWith$Mutation$UpdateProfileMutation$update_profile.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateProfileMutation$update_profile(
            local$update_profile, (e) => call(update_profile: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProfileMutation<TRes>
    implements CopyWith$Mutation$UpdateProfileMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfileMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateProfileMutation$update_profile? update_profile,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateProfileMutation$update_profile<TRes>
      get update_profile =>
          CopyWith$Mutation$UpdateProfileMutation$update_profile.stub(_res);
}

const documentNodeMutationUpdateProfileMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfileMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'profile_set_input'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_profile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: VariableNode(name: NameNode(value: 'data')),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'user_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'user_id')),
                  )
                ]),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'returning'),
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
  fragmentDefinitionprofileData,
]);
Mutation$UpdateProfileMutation _parserFn$Mutation$UpdateProfileMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateProfileMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProfileMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateProfileMutation?,
);

class Options$Mutation$UpdateProfileMutation
    extends graphql.MutationOptions<Mutation$UpdateProfileMutation> {
  Options$Mutation$UpdateProfileMutation({
    String? operationName,
    required Variables$Mutation$UpdateProfileMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfileMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfileMutation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateProfileMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfileMutation,
          parserFn: _parserFn$Mutation$UpdateProfileMutation,
        );

  final OnMutationCompleted$Mutation$UpdateProfileMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProfileMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateProfileMutation> {
  WatchOptions$Mutation$UpdateProfileMutation({
    String? operationName,
    required Variables$Mutation$UpdateProfileMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileMutation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateProfileMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProfileMutation,
        );
}

extension ClientExtension$Mutation$UpdateProfileMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProfileMutation>>
      mutate$UpdateProfileMutation(
              Options$Mutation$UpdateProfileMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProfileMutation>
      watchMutation$UpdateProfileMutation(
              WatchOptions$Mutation$UpdateProfileMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateProfileMutation$HookResult {
  Mutation$UpdateProfileMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateProfileMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateProfileMutation> result;
}

Mutation$UpdateProfileMutation$HookResult useMutation$UpdateProfileMutation(
    [WidgetOptions$Mutation$UpdateProfileMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateProfileMutation());
  return Mutation$UpdateProfileMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateProfileMutation>
    useWatchMutation$UpdateProfileMutation(
            WatchOptions$Mutation$UpdateProfileMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateProfileMutation
    extends graphql.MutationOptions<Mutation$UpdateProfileMutation> {
  WidgetOptions$Mutation$UpdateProfileMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfileMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfileMutation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateProfileMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfileMutation,
          parserFn: _parserFn$Mutation$UpdateProfileMutation,
        );

  final OnMutationCompleted$Mutation$UpdateProfileMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateProfileMutation
    = graphql.MultiSourceResult<Mutation$UpdateProfileMutation> Function(
  Variables$Mutation$UpdateProfileMutation, {
  Object? optimisticResult,
  Mutation$UpdateProfileMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateProfileMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateProfileMutation,
  graphql.QueryResult<Mutation$UpdateProfileMutation>?,
);

class Mutation$UpdateProfileMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateProfileMutation> {
  Mutation$UpdateProfileMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateProfileMutation? options,
    required Builder$Mutation$UpdateProfileMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateProfileMutation(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateProfileMutation$update_profile {
  Mutation$UpdateProfileMutation$update_profile({
    required this.returning,
    this.$__typename = 'profile_mutation_response',
  });

  factory Mutation$UpdateProfileMutation$update_profile.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfileMutation$update_profile(
      returning: (l$returning as List<dynamic>)
          .map(
              (e) => Fragment$profileData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$profileData> returning;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$returning = returning;
    _resultData['returning'] = l$returning.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$returning = returning;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$returning.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProfileMutation$update_profile) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$returning = returning;
    final lOther$returning = other.returning;
    if (l$returning.length != lOther$returning.length) {
      return false;
    }
    for (int i = 0; i < l$returning.length; i++) {
      final l$returning$entry = l$returning[i];
      final lOther$returning$entry = lOther$returning[i];
      if (l$returning$entry != lOther$returning$entry) {
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

extension UtilityExtension$Mutation$UpdateProfileMutation$update_profile
    on Mutation$UpdateProfileMutation$update_profile {
  CopyWith$Mutation$UpdateProfileMutation$update_profile<
          Mutation$UpdateProfileMutation$update_profile>
      get copyWith => CopyWith$Mutation$UpdateProfileMutation$update_profile(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfileMutation$update_profile<TRes> {
  factory CopyWith$Mutation$UpdateProfileMutation$update_profile(
    Mutation$UpdateProfileMutation$update_profile instance,
    TRes Function(Mutation$UpdateProfileMutation$update_profile) then,
  ) = _CopyWithImpl$Mutation$UpdateProfileMutation$update_profile;

  factory CopyWith$Mutation$UpdateProfileMutation$update_profile.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfileMutation$update_profile;

  TRes call({
    List<Fragment$profileData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$profileData> Function(
              Iterable<CopyWith$Fragment$profileData<Fragment$profileData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateProfileMutation$update_profile<TRes>
    implements CopyWith$Mutation$UpdateProfileMutation$update_profile<TRes> {
  _CopyWithImpl$Mutation$UpdateProfileMutation$update_profile(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfileMutation$update_profile _instance;

  final TRes Function(Mutation$UpdateProfileMutation$update_profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfileMutation$update_profile(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$profileData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$profileData> Function(
                  Iterable<CopyWith$Fragment$profileData<Fragment$profileData>>)
              _fn) =>
      call(
          returning:
              _fn(_instance.returning.map((e) => CopyWith$Fragment$profileData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateProfileMutation$update_profile<TRes>
    implements CopyWith$Mutation$UpdateProfileMutation$update_profile<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfileMutation$update_profile(this._res);

  TRes _res;

  call({
    List<Fragment$profileData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetUserProfileQuery {
  factory Variables$Query$GetUserProfileQuery({
    required UUID user_id,
    int? limit,
    List<Enum$profile_select_column>? distinct_on,
    int? offset,
    List<Input$profile_order_by>? order_by,
  }) =>
      Variables$Query$GetUserProfileQuery._({
        r'user_id': user_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetUserProfileQuery._(this._$data);

  factory Variables$Query$GetUserProfileQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$user_id = data['user_id'];
    result$data['user_id'] = uuidFromJson(l$user_id);
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$profile_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) =>
              Input$profile_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetUserProfileQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get user_id => (_$data['user_id'] as UUID);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$profile_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$profile_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$profile_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$profile_order_by>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$user_id = user_id;
    result$data['user_id'] = uuidToJson(l$user_id);
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('distinct_on')) {
      final l$distinct_on = distinct_on;
      result$data['distinct_on'] = l$distinct_on
          ?.map((e) => toJson$Enum$profile_select_column(e))
          .toList();
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('order_by')) {
      final l$order_by = order_by;
      result$data['order_by'] = l$order_by?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetUserProfileQuery<
          Variables$Query$GetUserProfileQuery>
      get copyWith => CopyWith$Variables$Query$GetUserProfileQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserProfileQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$distinct_on = distinct_on;
    final lOther$distinct_on = other.distinct_on;
    if (_$data.containsKey('distinct_on') !=
        other._$data.containsKey('distinct_on')) {
      return false;
    }
    if (l$distinct_on != null && lOther$distinct_on != null) {
      if (l$distinct_on.length != lOther$distinct_on.length) {
        return false;
      }
      for (int i = 0; i < l$distinct_on.length; i++) {
        final l$distinct_on$entry = l$distinct_on[i];
        final lOther$distinct_on$entry = lOther$distinct_on[i];
        if (l$distinct_on$entry != lOther$distinct_on$entry) {
          return false;
        }
      }
    } else if (l$distinct_on != lOther$distinct_on) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$order_by = order_by;
    final lOther$order_by = other.order_by;
    if (_$data.containsKey('order_by') !=
        other._$data.containsKey('order_by')) {
      return false;
    }
    if (l$order_by != null && lOther$order_by != null) {
      if (l$order_by.length != lOther$order_by.length) {
        return false;
      }
      for (int i = 0; i < l$order_by.length; i++) {
        final l$order_by$entry = l$order_by[i];
        final lOther$order_by$entry = lOther$order_by[i];
        if (l$order_by$entry != lOther$order_by$entry) {
          return false;
        }
      }
    } else if (l$order_by != lOther$order_by) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    final l$limit = limit;
    final l$distinct_on = distinct_on;
    final l$offset = offset;
    final l$order_by = order_by;
    return Object.hashAll([
      l$user_id,
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('distinct_on')
          ? l$distinct_on == null
              ? null
              : Object.hashAll(l$distinct_on.map((v) => v))
          : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('order_by')
          ? l$order_by == null
              ? null
              : Object.hashAll(l$order_by.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetUserProfileQuery<TRes> {
  factory CopyWith$Variables$Query$GetUserProfileQuery(
    Variables$Query$GetUserProfileQuery instance,
    TRes Function(Variables$Query$GetUserProfileQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetUserProfileQuery;

  factory CopyWith$Variables$Query$GetUserProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserProfileQuery;

  TRes call({
    UUID? user_id,
    int? limit,
    List<Enum$profile_select_column>? distinct_on,
    int? offset,
    List<Input$profile_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetUserProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetUserProfileQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetUserProfileQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserProfileQuery _instance;

  final TRes Function(Variables$Query$GetUserProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetUserProfileQuery._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$profile_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$profile_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetUserProfileQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserProfileQuery(this._res);

  TRes _res;

  call({
    UUID? user_id,
    int? limit,
    List<Enum$profile_select_column>? distinct_on,
    int? offset,
    List<Input$profile_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetUserProfileQuery {
  Query$GetUserProfileQuery({
    required this.profile,
    this.$__typename = 'query_root',
  });

  factory Query$GetUserProfileQuery.fromJson(Map<String, dynamic> json) {
    final l$profile = json['profile'];
    final l$$__typename = json['__typename'];
    return Query$GetUserProfileQuery(
      profile: (l$profile as List<dynamic>)
          .map(
              (e) => Fragment$profileData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$profileData> profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile = profile;
    _resultData['profile'] = l$profile.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$profile.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserProfileQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile.length != lOther$profile.length) {
      return false;
    }
    for (int i = 0; i < l$profile.length; i++) {
      final l$profile$entry = l$profile[i];
      final lOther$profile$entry = lOther$profile[i];
      if (l$profile$entry != lOther$profile$entry) {
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

extension UtilityExtension$Query$GetUserProfileQuery
    on Query$GetUserProfileQuery {
  CopyWith$Query$GetUserProfileQuery<Query$GetUserProfileQuery> get copyWith =>
      CopyWith$Query$GetUserProfileQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetUserProfileQuery<TRes> {
  factory CopyWith$Query$GetUserProfileQuery(
    Query$GetUserProfileQuery instance,
    TRes Function(Query$GetUserProfileQuery) then,
  ) = _CopyWithImpl$Query$GetUserProfileQuery;

  factory CopyWith$Query$GetUserProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserProfileQuery;

  TRes call({
    List<Fragment$profileData>? profile,
    String? $__typename,
  });
  TRes profile(
      Iterable<Fragment$profileData> Function(
              Iterable<CopyWith$Fragment$profileData<Fragment$profileData>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserProfileQuery<TRes>
    implements CopyWith$Query$GetUserProfileQuery<TRes> {
  _CopyWithImpl$Query$GetUserProfileQuery(
    this._instance,
    this._then,
  );

  final Query$GetUserProfileQuery _instance;

  final TRes Function(Query$GetUserProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserProfileQuery(
        profile: profile == _undefined || profile == null
            ? _instance.profile
            : (profile as List<Fragment$profileData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes profile(
          Iterable<Fragment$profileData> Function(
                  Iterable<CopyWith$Fragment$profileData<Fragment$profileData>>)
              _fn) =>
      call(
          profile:
              _fn(_instance.profile.map((e) => CopyWith$Fragment$profileData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetUserProfileQuery<TRes>
    implements CopyWith$Query$GetUserProfileQuery<TRes> {
  _CopyWithStubImpl$Query$GetUserProfileQuery(this._res);

  TRes _res;

  call({
    List<Fragment$profileData>? profile,
    String? $__typename,
  }) =>
      _res;
  profile(_fn) => _res;
}

const documentNodeQueryGetUserProfileQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserProfileQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'distinct_on')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'profile_select_column'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order_by')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'profile_order_by'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'profile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'user_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'user_id')),
                  )
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'distinct_on'),
            value: VariableNode(name: NameNode(value: 'distinct_on')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order_by'),
            value: VariableNode(name: NameNode(value: 'order_by')),
          ),
        ],
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
  ),
  fragmentDefinitionprofileData,
]);
Query$GetUserProfileQuery _parserFn$Query$GetUserProfileQuery(
        Map<String, dynamic> data) =>
    Query$GetUserProfileQuery.fromJson(data);
typedef OnQueryComplete$Query$GetUserProfileQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserProfileQuery?,
);

class Options$Query$GetUserProfileQuery
    extends graphql.QueryOptions<Query$GetUserProfileQuery> {
  Options$Query$GetUserProfileQuery({
    String? operationName,
    required Variables$Query$GetUserProfileQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserProfileQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserProfileQuery? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                        : _parserFn$Query$GetUserProfileQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserProfileQuery,
          parserFn: _parserFn$Query$GetUserProfileQuery,
        );

  final OnQueryComplete$Query$GetUserProfileQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserProfileQuery
    extends graphql.WatchQueryOptions<Query$GetUserProfileQuery> {
  WatchOptions$Query$GetUserProfileQuery({
    String? operationName,
    required Variables$Query$GetUserProfileQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserProfileQuery? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetUserProfileQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserProfileQuery,
        );
}

class FetchMoreOptions$Query$GetUserProfileQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserProfileQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserProfileQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserProfileQuery,
        );
}

extension ClientExtension$Query$GetUserProfileQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserProfileQuery>>
      query$GetUserProfileQuery(
              Options$Query$GetUserProfileQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetUserProfileQuery>
      watchQuery$GetUserProfileQuery(
              WatchOptions$Query$GetUserProfileQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetUserProfileQuery({
    required Query$GetUserProfileQuery data,
    required Variables$Query$GetUserProfileQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetUserProfileQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserProfileQuery? readQuery$GetUserProfileQuery({
    required Variables$Query$GetUserProfileQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetUserProfileQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserProfileQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserProfileQuery>
    useQuery$GetUserProfileQuery(Options$Query$GetUserProfileQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserProfileQuery>
    useWatchQuery$GetUserProfileQuery(
            WatchOptions$Query$GetUserProfileQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetUserProfileQuery$Widget
    extends graphql_flutter.Query<Query$GetUserProfileQuery> {
  Query$GetUserProfileQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetUserProfileQuery options,
    required graphql_flutter.QueryBuilder<Query$GetUserProfileQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetAllProfileQuery {
  factory Variables$Query$GetAllProfileQuery({
    Input$profile_bool_exp? where,
    int? limit,
    List<Enum$profile_select_column>? distinct_on,
    int? offset,
    List<Input$profile_order_by>? order_by,
  }) =>
      Variables$Query$GetAllProfileQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllProfileQuery._(this._$data);

  factory Variables$Query$GetAllProfileQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$profile_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$profile_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) =>
              Input$profile_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllProfileQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$profile_bool_exp? get where =>
      (_$data['where'] as Input$profile_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$profile_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$profile_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$profile_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$profile_order_by>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('distinct_on')) {
      final l$distinct_on = distinct_on;
      result$data['distinct_on'] = l$distinct_on
          ?.map((e) => toJson$Enum$profile_select_column(e))
          .toList();
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    if (_$data.containsKey('order_by')) {
      final l$order_by = order_by;
      result$data['order_by'] = l$order_by?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$GetAllProfileQuery<
          Variables$Query$GetAllProfileQuery>
      get copyWith => CopyWith$Variables$Query$GetAllProfileQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllProfileQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$distinct_on = distinct_on;
    final lOther$distinct_on = other.distinct_on;
    if (_$data.containsKey('distinct_on') !=
        other._$data.containsKey('distinct_on')) {
      return false;
    }
    if (l$distinct_on != null && lOther$distinct_on != null) {
      if (l$distinct_on.length != lOther$distinct_on.length) {
        return false;
      }
      for (int i = 0; i < l$distinct_on.length; i++) {
        final l$distinct_on$entry = l$distinct_on[i];
        final lOther$distinct_on$entry = lOther$distinct_on[i];
        if (l$distinct_on$entry != lOther$distinct_on$entry) {
          return false;
        }
      }
    } else if (l$distinct_on != lOther$distinct_on) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$order_by = order_by;
    final lOther$order_by = other.order_by;
    if (_$data.containsKey('order_by') !=
        other._$data.containsKey('order_by')) {
      return false;
    }
    if (l$order_by != null && lOther$order_by != null) {
      if (l$order_by.length != lOther$order_by.length) {
        return false;
      }
      for (int i = 0; i < l$order_by.length; i++) {
        final l$order_by$entry = l$order_by[i];
        final lOther$order_by$entry = lOther$order_by[i];
        if (l$order_by$entry != lOther$order_by$entry) {
          return false;
        }
      }
    } else if (l$order_by != lOther$order_by) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$limit = limit;
    final l$distinct_on = distinct_on;
    final l$offset = offset;
    final l$order_by = order_by;
    return Object.hashAll([
      _$data.containsKey('where') ? l$where : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('distinct_on')
          ? l$distinct_on == null
              ? null
              : Object.hashAll(l$distinct_on.map((v) => v))
          : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('order_by')
          ? l$order_by == null
              ? null
              : Object.hashAll(l$order_by.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$GetAllProfileQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllProfileQuery(
    Variables$Query$GetAllProfileQuery instance,
    TRes Function(Variables$Query$GetAllProfileQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllProfileQuery;

  factory CopyWith$Variables$Query$GetAllProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllProfileQuery;

  TRes call({
    Input$profile_bool_exp? where,
    int? limit,
    List<Enum$profile_select_column>? distinct_on,
    int? offset,
    List<Input$profile_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetAllProfileQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllProfileQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllProfileQuery _instance;

  final TRes Function(Variables$Query$GetAllProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllProfileQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$profile_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$profile_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$profile_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetAllProfileQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllProfileQuery(this._res);

  TRes _res;

  call({
    Input$profile_bool_exp? where,
    int? limit,
    List<Enum$profile_select_column>? distinct_on,
    int? offset,
    List<Input$profile_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllProfileQuery {
  Query$GetAllProfileQuery({
    required this.profile,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllProfileQuery.fromJson(Map<String, dynamic> json) {
    final l$profile = json['profile'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProfileQuery(
      profile: (l$profile as List<dynamic>)
          .map(
              (e) => Fragment$profileData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$profileData> profile;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$profile = profile;
    _resultData['profile'] = l$profile.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$profile = profile;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$profile.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllProfileQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$profile = profile;
    final lOther$profile = other.profile;
    if (l$profile.length != lOther$profile.length) {
      return false;
    }
    for (int i = 0; i < l$profile.length; i++) {
      final l$profile$entry = l$profile[i];
      final lOther$profile$entry = lOther$profile[i];
      if (l$profile$entry != lOther$profile$entry) {
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

extension UtilityExtension$Query$GetAllProfileQuery
    on Query$GetAllProfileQuery {
  CopyWith$Query$GetAllProfileQuery<Query$GetAllProfileQuery> get copyWith =>
      CopyWith$Query$GetAllProfileQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllProfileQuery<TRes> {
  factory CopyWith$Query$GetAllProfileQuery(
    Query$GetAllProfileQuery instance,
    TRes Function(Query$GetAllProfileQuery) then,
  ) = _CopyWithImpl$Query$GetAllProfileQuery;

  factory CopyWith$Query$GetAllProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProfileQuery;

  TRes call({
    List<Fragment$profileData>? profile,
    String? $__typename,
  });
  TRes profile(
      Iterable<Fragment$profileData> Function(
              Iterable<CopyWith$Fragment$profileData<Fragment$profileData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllProfileQuery<TRes>
    implements CopyWith$Query$GetAllProfileQuery<TRes> {
  _CopyWithImpl$Query$GetAllProfileQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllProfileQuery _instance;

  final TRes Function(Query$GetAllProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? profile = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllProfileQuery(
        profile: profile == _undefined || profile == null
            ? _instance.profile
            : (profile as List<Fragment$profileData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes profile(
          Iterable<Fragment$profileData> Function(
                  Iterable<CopyWith$Fragment$profileData<Fragment$profileData>>)
              _fn) =>
      call(
          profile:
              _fn(_instance.profile.map((e) => CopyWith$Fragment$profileData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllProfileQuery<TRes>
    implements CopyWith$Query$GetAllProfileQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllProfileQuery(this._res);

  TRes _res;

  call({
    List<Fragment$profileData>? profile,
    String? $__typename,
  }) =>
      _res;
  profile(_fn) => _res;
}

const documentNodeQueryGetAllProfileQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllProfileQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'profile_bool_exp'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'distinct_on')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'profile_select_column'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order_by')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'profile_order_by'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'profile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          ),
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'distinct_on'),
            value: VariableNode(name: NameNode(value: 'distinct_on')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order_by'),
            value: VariableNode(name: NameNode(value: 'order_by')),
          ),
        ],
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
  ),
  fragmentDefinitionprofileData,
]);
Query$GetAllProfileQuery _parserFn$Query$GetAllProfileQuery(
        Map<String, dynamic> data) =>
    Query$GetAllProfileQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllProfileQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllProfileQuery?,
);

class Options$Query$GetAllProfileQuery
    extends graphql.QueryOptions<Query$GetAllProfileQuery> {
  Options$Query$GetAllProfileQuery({
    String? operationName,
    Variables$Query$GetAllProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProfileQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllProfileQuery? onComplete,
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
                        : _parserFn$Query$GetAllProfileQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllProfileQuery,
          parserFn: _parserFn$Query$GetAllProfileQuery,
        );

  final OnQueryComplete$Query$GetAllProfileQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllProfileQuery
    extends graphql.WatchQueryOptions<Query$GetAllProfileQuery> {
  WatchOptions$Query$GetAllProfileQuery({
    String? operationName,
    Variables$Query$GetAllProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProfileQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllProfileQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllProfileQuery,
        );
}

class FetchMoreOptions$Query$GetAllProfileQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllProfileQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllProfileQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllProfileQuery,
        );
}

extension ClientExtension$Query$GetAllProfileQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllProfileQuery>>
      query$GetAllProfileQuery(
              [Options$Query$GetAllProfileQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllProfileQuery());
  graphql.ObservableQuery<Query$GetAllProfileQuery>
      watchQuery$GetAllProfileQuery(
              [WatchOptions$Query$GetAllProfileQuery? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetAllProfileQuery());
  void writeQuery$GetAllProfileQuery({
    required Query$GetAllProfileQuery data,
    Variables$Query$GetAllProfileQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllProfileQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllProfileQuery? readQuery$GetAllProfileQuery({
    Variables$Query$GetAllProfileQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllProfileQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllProfileQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllProfileQuery>
    useQuery$GetAllProfileQuery([Options$Query$GetAllProfileQuery? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$GetAllProfileQuery());
graphql.ObservableQuery<Query$GetAllProfileQuery>
    useWatchQuery$GetAllProfileQuery(
            [WatchOptions$Query$GetAllProfileQuery? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetAllProfileQuery());

class Query$GetAllProfileQuery$Widget
    extends graphql_flutter.Query<Query$GetAllProfileQuery> {
  Query$GetAllProfileQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllProfileQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllProfileQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllProfileQuery(),
          builder: builder,
        );
}
