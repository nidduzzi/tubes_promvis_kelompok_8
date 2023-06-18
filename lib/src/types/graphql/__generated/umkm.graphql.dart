// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:tubes_promvis_kelompok_8/src/types/graphql/scalar.dart';
import 'profile.graphql.dart';
import 'schema.graphql.dart';
import 'user.graphql.dart';

class Fragment$umkmData {
  Fragment$umkmData({
    required this.umkm_desc,
    required this.umkm_id,
    required this.umkm_name,
    required this.umkm_performance,
    required this.umkm_shares,
    this.updated_at,
    required this.user_id,
    this.created_at,
    this.$__typename = 'umkm',
  });

  factory Fragment$umkmData.fromJson(Map<String, dynamic> json) {
    final l$umkm_desc = json['umkm_desc'];
    final l$umkm_id = json['umkm_id'];
    final l$umkm_name = json['umkm_name'];
    final l$umkm_performance = json['umkm_performance'];
    final l$umkm_shares = json['umkm_shares'];
    final l$updated_at = json['updated_at'];
    final l$user_id = json['user_id'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Fragment$umkmData(
      umkm_desc: (l$umkm_desc as String),
      umkm_id: (l$umkm_id as int),
      umkm_name: (l$umkm_name as String),
      umkm_performance: (l$umkm_performance as String),
      umkm_shares: (l$umkm_shares as int),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      user_id: uuidFromJson(l$user_id),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String umkm_desc;

  final int umkm_id;

  final String umkm_name;

  final String umkm_performance;

  final int umkm_shares;

  final DateTime? updated_at;

  final UUID user_id;

  final DateTime? created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$umkm_desc = umkm_desc;
    _resultData['umkm_desc'] = l$umkm_desc;
    final l$umkm_id = umkm_id;
    _resultData['umkm_id'] = l$umkm_id;
    final l$umkm_name = umkm_name;
    _resultData['umkm_name'] = l$umkm_name;
    final l$umkm_performance = umkm_performance;
    _resultData['umkm_performance'] = l$umkm_performance;
    final l$umkm_shares = umkm_shares;
    _resultData['umkm_shares'] = l$umkm_shares;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$umkm_desc = umkm_desc;
    final l$umkm_id = umkm_id;
    final l$umkm_name = umkm_name;
    final l$umkm_performance = umkm_performance;
    final l$umkm_shares = umkm_shares;
    final l$updated_at = updated_at;
    final l$user_id = user_id;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$umkm_desc,
      l$umkm_id,
      l$umkm_name,
      l$umkm_performance,
      l$umkm_shares,
      l$updated_at,
      l$user_id,
      l$created_at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$umkmData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm_desc = umkm_desc;
    final lOther$umkm_desc = other.umkm_desc;
    if (l$umkm_desc != lOther$umkm_desc) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (l$umkm_id != lOther$umkm_id) {
      return false;
    }
    final l$umkm_name = umkm_name;
    final lOther$umkm_name = other.umkm_name;
    if (l$umkm_name != lOther$umkm_name) {
      return false;
    }
    final l$umkm_performance = umkm_performance;
    final lOther$umkm_performance = other.umkm_performance;
    if (l$umkm_performance != lOther$umkm_performance) {
      return false;
    }
    final l$umkm_shares = umkm_shares;
    final lOther$umkm_shares = other.umkm_shares;
    if (l$umkm_shares != lOther$umkm_shares) {
      return false;
    }
    final l$updated_at = updated_at;
    final lOther$updated_at = other.updated_at;
    if (l$updated_at != lOther$updated_at) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$umkmData on Fragment$umkmData {
  CopyWith$Fragment$umkmData<Fragment$umkmData> get copyWith =>
      CopyWith$Fragment$umkmData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$umkmData<TRes> {
  factory CopyWith$Fragment$umkmData(
    Fragment$umkmData instance,
    TRes Function(Fragment$umkmData) then,
  ) = _CopyWithImpl$Fragment$umkmData;

  factory CopyWith$Fragment$umkmData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$umkmData;

  TRes call({
    String? umkm_desc,
    int? umkm_id,
    String? umkm_name,
    String? umkm_performance,
    int? umkm_shares,
    DateTime? updated_at,
    UUID? user_id,
    DateTime? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$umkmData<TRes>
    implements CopyWith$Fragment$umkmData<TRes> {
  _CopyWithImpl$Fragment$umkmData(
    this._instance,
    this._then,
  );

  final Fragment$umkmData _instance;

  final TRes Function(Fragment$umkmData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? umkm_desc = _undefined,
    Object? umkm_id = _undefined,
    Object? umkm_name = _undefined,
    Object? umkm_performance = _undefined,
    Object? umkm_shares = _undefined,
    Object? updated_at = _undefined,
    Object? user_id = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$umkmData(
        umkm_desc: umkm_desc == _undefined || umkm_desc == null
            ? _instance.umkm_desc
            : (umkm_desc as String),
        umkm_id: umkm_id == _undefined || umkm_id == null
            ? _instance.umkm_id
            : (umkm_id as int),
        umkm_name: umkm_name == _undefined || umkm_name == null
            ? _instance.umkm_name
            : (umkm_name as String),
        umkm_performance:
            umkm_performance == _undefined || umkm_performance == null
                ? _instance.umkm_performance
                : (umkm_performance as String),
        umkm_shares: umkm_shares == _undefined || umkm_shares == null
            ? _instance.umkm_shares
            : (umkm_shares as int),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$umkmData<TRes>
    implements CopyWith$Fragment$umkmData<TRes> {
  _CopyWithStubImpl$Fragment$umkmData(this._res);

  TRes _res;

  call({
    String? umkm_desc,
    int? umkm_id,
    String? umkm_name,
    String? umkm_performance,
    int? umkm_shares,
    DateTime? updated_at,
    UUID? user_id,
    DateTime? created_at,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionumkmData = FragmentDefinitionNode(
  name: NameNode(value: 'umkmData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'umkm'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'umkm_desc'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'umkm_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'umkm_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'umkm_performance'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'umkm_shares'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentumkmData = DocumentNode(definitions: [
  fragmentDefinitionumkmData,
]);

extension ClientExtension$Fragment$umkmData on graphql.GraphQLClient {
  void writeFragment$umkmData({
    required Fragment$umkmData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'umkmData',
            document: documentNodeFragmentumkmData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$umkmData? readFragment$umkmData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'umkmData',
          document: documentNodeFragmentumkmData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$umkmData.fromJson(result);
  }
}

class Variables$Mutation$InsertUMKMMutation {
  factory Variables$Mutation$InsertUMKMMutation(
          {required Input$umkm_insert_input data}) =>
      Variables$Mutation$InsertUMKMMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertUMKMMutation._(this._$data);

  factory Variables$Mutation$InsertUMKMMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$umkm_insert_input.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertUMKMMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$umkm_insert_input get data =>
      (_$data['data'] as Input$umkm_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertUMKMMutation<
          Variables$Mutation$InsertUMKMMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertUMKMMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertUMKMMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertUMKMMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertUMKMMutation(
    Variables$Mutation$InsertUMKMMutation instance,
    TRes Function(Variables$Mutation$InsertUMKMMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertUMKMMutation;

  factory CopyWith$Variables$Mutation$InsertUMKMMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertUMKMMutation;

  TRes call({Input$umkm_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertUMKMMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertUMKMMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertUMKMMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertUMKMMutation _instance;

  final TRes Function(Variables$Mutation$InsertUMKMMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertUMKMMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$umkm_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertUMKMMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertUMKMMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertUMKMMutation(this._res);

  TRes _res;

  call({Input$umkm_insert_input? data}) => _res;
}

class Mutation$InsertUMKMMutation {
  Mutation$InsertUMKMMutation({
    this.insert_umkm_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertUMKMMutation.fromJson(Map<String, dynamic> json) {
    final l$insert_umkm_one = json['insert_umkm_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertUMKMMutation(
      insert_umkm_one: l$insert_umkm_one == null
          ? null
          : Fragment$umkmData.fromJson(
              (l$insert_umkm_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$umkmData? insert_umkm_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_umkm_one = insert_umkm_one;
    _resultData['insert_umkm_one'] = l$insert_umkm_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_umkm_one = insert_umkm_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_umkm_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertUMKMMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_umkm_one = insert_umkm_one;
    final lOther$insert_umkm_one = other.insert_umkm_one;
    if (l$insert_umkm_one != lOther$insert_umkm_one) {
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

extension UtilityExtension$Mutation$InsertUMKMMutation
    on Mutation$InsertUMKMMutation {
  CopyWith$Mutation$InsertUMKMMutation<Mutation$InsertUMKMMutation>
      get copyWith => CopyWith$Mutation$InsertUMKMMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertUMKMMutation<TRes> {
  factory CopyWith$Mutation$InsertUMKMMutation(
    Mutation$InsertUMKMMutation instance,
    TRes Function(Mutation$InsertUMKMMutation) then,
  ) = _CopyWithImpl$Mutation$InsertUMKMMutation;

  factory CopyWith$Mutation$InsertUMKMMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertUMKMMutation;

  TRes call({
    Fragment$umkmData? insert_umkm_one,
    String? $__typename,
  });
  CopyWith$Fragment$umkmData<TRes> get insert_umkm_one;
}

class _CopyWithImpl$Mutation$InsertUMKMMutation<TRes>
    implements CopyWith$Mutation$InsertUMKMMutation<TRes> {
  _CopyWithImpl$Mutation$InsertUMKMMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertUMKMMutation _instance;

  final TRes Function(Mutation$InsertUMKMMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_umkm_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertUMKMMutation(
        insert_umkm_one: insert_umkm_one == _undefined
            ? _instance.insert_umkm_one
            : (insert_umkm_one as Fragment$umkmData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$umkmData<TRes> get insert_umkm_one {
    final local$insert_umkm_one = _instance.insert_umkm_one;
    return local$insert_umkm_one == null
        ? CopyWith$Fragment$umkmData.stub(_then(_instance))
        : CopyWith$Fragment$umkmData(
            local$insert_umkm_one, (e) => call(insert_umkm_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertUMKMMutation<TRes>
    implements CopyWith$Mutation$InsertUMKMMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertUMKMMutation(this._res);

  TRes _res;

  call({
    Fragment$umkmData? insert_umkm_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$umkmData<TRes> get insert_umkm_one =>
      CopyWith$Fragment$umkmData.stub(_res);
}

const documentNodeMutationInsertUMKMMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertUMKMMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'umkm_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_umkm_one'),
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
            name: NameNode(value: 'umkmData'),
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
  fragmentDefinitionumkmData,
]);
Mutation$InsertUMKMMutation _parserFn$Mutation$InsertUMKMMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertUMKMMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertUMKMMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertUMKMMutation?,
);

class Options$Mutation$InsertUMKMMutation
    extends graphql.MutationOptions<Mutation$InsertUMKMMutation> {
  Options$Mutation$InsertUMKMMutation({
    String? operationName,
    required Variables$Mutation$InsertUMKMMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertUMKMMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertUMKMMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertUMKMMutation>? update,
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
                        : _parserFn$Mutation$InsertUMKMMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertUMKMMutation,
          parserFn: _parserFn$Mutation$InsertUMKMMutation,
        );

  final OnMutationCompleted$Mutation$InsertUMKMMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertUMKMMutation
    extends graphql.WatchQueryOptions<Mutation$InsertUMKMMutation> {
  WatchOptions$Mutation$InsertUMKMMutation({
    String? operationName,
    required Variables$Mutation$InsertUMKMMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertUMKMMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertUMKMMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertUMKMMutation,
        );
}

extension ClientExtension$Mutation$InsertUMKMMutation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertUMKMMutation>>
      mutate$InsertUMKMMutation(
              Options$Mutation$InsertUMKMMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertUMKMMutation>
      watchMutation$InsertUMKMMutation(
              WatchOptions$Mutation$InsertUMKMMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertUMKMMutation$HookResult {
  Mutation$InsertUMKMMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertUMKMMutation runMutation;

  final graphql.QueryResult<Mutation$InsertUMKMMutation> result;
}

Mutation$InsertUMKMMutation$HookResult useMutation$InsertUMKMMutation(
    [WidgetOptions$Mutation$InsertUMKMMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InsertUMKMMutation());
  return Mutation$InsertUMKMMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertUMKMMutation>
    useWatchMutation$InsertUMKMMutation(
            WatchOptions$Mutation$InsertUMKMMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertUMKMMutation
    extends graphql.MutationOptions<Mutation$InsertUMKMMutation> {
  WidgetOptions$Mutation$InsertUMKMMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertUMKMMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertUMKMMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertUMKMMutation>? update,
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
                        : _parserFn$Mutation$InsertUMKMMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertUMKMMutation,
          parserFn: _parserFn$Mutation$InsertUMKMMutation,
        );

  final OnMutationCompleted$Mutation$InsertUMKMMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertUMKMMutation
    = graphql.MultiSourceResult<Mutation$InsertUMKMMutation> Function(
  Variables$Mutation$InsertUMKMMutation, {
  Object? optimisticResult,
  Mutation$InsertUMKMMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertUMKMMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertUMKMMutation,
  graphql.QueryResult<Mutation$InsertUMKMMutation>?,
);

class Mutation$InsertUMKMMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertUMKMMutation> {
  Mutation$InsertUMKMMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertUMKMMutation? options,
    required Builder$Mutation$InsertUMKMMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertUMKMMutation(),
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

class Variables$Mutation$UpdateUMKMMutation {
  factory Variables$Mutation$UpdateUMKMMutation({
    required Input$umkm_set_input data,
    required UUID user_id,
  }) =>
      Variables$Mutation$UpdateUMKMMutation._({
        r'data': data,
        r'user_id': user_id,
      });

  Variables$Mutation$UpdateUMKMMutation._(this._$data);

  factory Variables$Mutation$UpdateUMKMMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$umkm_set_input.fromJson((l$data as Map<String, dynamic>));
    final l$user_id = data['user_id'];
    result$data['user_id'] = uuidFromJson(l$user_id);
    return Variables$Mutation$UpdateUMKMMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$umkm_set_input get data => (_$data['data'] as Input$umkm_set_input);
  UUID get user_id => (_$data['user_id'] as UUID);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$user_id = user_id;
    result$data['user_id'] = uuidToJson(l$user_id);
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUMKMMutation<
          Variables$Mutation$UpdateUMKMMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateUMKMMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUMKMMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
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
      l$data,
      l$user_id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUMKMMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUMKMMutation(
    Variables$Mutation$UpdateUMKMMutation instance,
    TRes Function(Variables$Mutation$UpdateUMKMMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUMKMMutation;

  factory CopyWith$Variables$Mutation$UpdateUMKMMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUMKMMutation;

  TRes call({
    Input$umkm_set_input? data,
    UUID? user_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateUMKMMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateUMKMMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUMKMMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUMKMMutation _instance;

  final TRes Function(Variables$Mutation$UpdateUMKMMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? user_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateUMKMMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$umkm_set_input),
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUMKMMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateUMKMMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUMKMMutation(this._res);

  TRes _res;

  call({
    Input$umkm_set_input? data,
    UUID? user_id,
  }) =>
      _res;
}

class Mutation$UpdateUMKMMutation {
  Mutation$UpdateUMKMMutation({
    this.update_umkm,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateUMKMMutation.fromJson(Map<String, dynamic> json) {
    final l$update_umkm = json['update_umkm'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUMKMMutation(
      update_umkm: l$update_umkm == null
          ? null
          : Mutation$UpdateUMKMMutation$update_umkm.fromJson(
              (l$update_umkm as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateUMKMMutation$update_umkm? update_umkm;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_umkm = update_umkm;
    _resultData['update_umkm'] = l$update_umkm?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_umkm = update_umkm;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_umkm,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUMKMMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_umkm = update_umkm;
    final lOther$update_umkm = other.update_umkm;
    if (l$update_umkm != lOther$update_umkm) {
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

extension UtilityExtension$Mutation$UpdateUMKMMutation
    on Mutation$UpdateUMKMMutation {
  CopyWith$Mutation$UpdateUMKMMutation<Mutation$UpdateUMKMMutation>
      get copyWith => CopyWith$Mutation$UpdateUMKMMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUMKMMutation<TRes> {
  factory CopyWith$Mutation$UpdateUMKMMutation(
    Mutation$UpdateUMKMMutation instance,
    TRes Function(Mutation$UpdateUMKMMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateUMKMMutation;

  factory CopyWith$Mutation$UpdateUMKMMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUMKMMutation;

  TRes call({
    Mutation$UpdateUMKMMutation$update_umkm? update_umkm,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateUMKMMutation$update_umkm<TRes> get update_umkm;
}

class _CopyWithImpl$Mutation$UpdateUMKMMutation<TRes>
    implements CopyWith$Mutation$UpdateUMKMMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateUMKMMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUMKMMutation _instance;

  final TRes Function(Mutation$UpdateUMKMMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_umkm = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUMKMMutation(
        update_umkm: update_umkm == _undefined
            ? _instance.update_umkm
            : (update_umkm as Mutation$UpdateUMKMMutation$update_umkm?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateUMKMMutation$update_umkm<TRes> get update_umkm {
    final local$update_umkm = _instance.update_umkm;
    return local$update_umkm == null
        ? CopyWith$Mutation$UpdateUMKMMutation$update_umkm.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateUMKMMutation$update_umkm(
            local$update_umkm, (e) => call(update_umkm: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUMKMMutation<TRes>
    implements CopyWith$Mutation$UpdateUMKMMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUMKMMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateUMKMMutation$update_umkm? update_umkm,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateUMKMMutation$update_umkm<TRes> get update_umkm =>
      CopyWith$Mutation$UpdateUMKMMutation$update_umkm.stub(_res);
}

const documentNodeMutationUpdateUMKMMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUMKMMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'umkm_set_input'),
          isNonNull: true,
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
        name: NameNode(value: 'update_umkm'),
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
                name: NameNode(value: 'umkmData'),
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
  fragmentDefinitionumkmData,
]);
Mutation$UpdateUMKMMutation _parserFn$Mutation$UpdateUMKMMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateUMKMMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUMKMMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateUMKMMutation?,
);

class Options$Mutation$UpdateUMKMMutation
    extends graphql.MutationOptions<Mutation$UpdateUMKMMutation> {
  Options$Mutation$UpdateUMKMMutation({
    String? operationName,
    required Variables$Mutation$UpdateUMKMMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUMKMMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUMKMMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUMKMMutation>? update,
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
                        : _parserFn$Mutation$UpdateUMKMMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUMKMMutation,
          parserFn: _parserFn$Mutation$UpdateUMKMMutation,
        );

  final OnMutationCompleted$Mutation$UpdateUMKMMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateUMKMMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateUMKMMutation> {
  WatchOptions$Mutation$UpdateUMKMMutation({
    String? operationName,
    required Variables$Mutation$UpdateUMKMMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUMKMMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateUMKMMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateUMKMMutation,
        );
}

extension ClientExtension$Mutation$UpdateUMKMMutation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUMKMMutation>>
      mutate$UpdateUMKMMutation(
              Options$Mutation$UpdateUMKMMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateUMKMMutation>
      watchMutation$UpdateUMKMMutation(
              WatchOptions$Mutation$UpdateUMKMMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateUMKMMutation$HookResult {
  Mutation$UpdateUMKMMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateUMKMMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateUMKMMutation> result;
}

Mutation$UpdateUMKMMutation$HookResult useMutation$UpdateUMKMMutation(
    [WidgetOptions$Mutation$UpdateUMKMMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUMKMMutation());
  return Mutation$UpdateUMKMMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUMKMMutation>
    useWatchMutation$UpdateUMKMMutation(
            WatchOptions$Mutation$UpdateUMKMMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateUMKMMutation
    extends graphql.MutationOptions<Mutation$UpdateUMKMMutation> {
  WidgetOptions$Mutation$UpdateUMKMMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUMKMMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUMKMMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUMKMMutation>? update,
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
                        : _parserFn$Mutation$UpdateUMKMMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUMKMMutation,
          parserFn: _parserFn$Mutation$UpdateUMKMMutation,
        );

  final OnMutationCompleted$Mutation$UpdateUMKMMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateUMKMMutation
    = graphql.MultiSourceResult<Mutation$UpdateUMKMMutation> Function(
  Variables$Mutation$UpdateUMKMMutation, {
  Object? optimisticResult,
  Mutation$UpdateUMKMMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateUMKMMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateUMKMMutation,
  graphql.QueryResult<Mutation$UpdateUMKMMutation>?,
);

class Mutation$UpdateUMKMMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUMKMMutation> {
  Mutation$UpdateUMKMMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateUMKMMutation? options,
    required Builder$Mutation$UpdateUMKMMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateUMKMMutation(),
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

class Mutation$UpdateUMKMMutation$update_umkm {
  Mutation$UpdateUMKMMutation$update_umkm({
    required this.returning,
    this.$__typename = 'umkm_mutation_response',
  });

  factory Mutation$UpdateUMKMMutation$update_umkm.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUMKMMutation$update_umkm(
      returning: (l$returning as List<dynamic>)
          .map((e) => Fragment$umkmData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$umkmData> returning;

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
    if (!(other is Mutation$UpdateUMKMMutation$update_umkm) ||
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

extension UtilityExtension$Mutation$UpdateUMKMMutation$update_umkm
    on Mutation$UpdateUMKMMutation$update_umkm {
  CopyWith$Mutation$UpdateUMKMMutation$update_umkm<
          Mutation$UpdateUMKMMutation$update_umkm>
      get copyWith => CopyWith$Mutation$UpdateUMKMMutation$update_umkm(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUMKMMutation$update_umkm<TRes> {
  factory CopyWith$Mutation$UpdateUMKMMutation$update_umkm(
    Mutation$UpdateUMKMMutation$update_umkm instance,
    TRes Function(Mutation$UpdateUMKMMutation$update_umkm) then,
  ) = _CopyWithImpl$Mutation$UpdateUMKMMutation$update_umkm;

  factory CopyWith$Mutation$UpdateUMKMMutation$update_umkm.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUMKMMutation$update_umkm;

  TRes call({
    List<Fragment$umkmData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$umkmData> Function(
              Iterable<CopyWith$Fragment$umkmData<Fragment$umkmData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateUMKMMutation$update_umkm<TRes>
    implements CopyWith$Mutation$UpdateUMKMMutation$update_umkm<TRes> {
  _CopyWithImpl$Mutation$UpdateUMKMMutation$update_umkm(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUMKMMutation$update_umkm _instance;

  final TRes Function(Mutation$UpdateUMKMMutation$update_umkm) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUMKMMutation$update_umkm(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$umkmData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$umkmData> Function(
                  Iterable<CopyWith$Fragment$umkmData<Fragment$umkmData>>)
              _fn) =>
      call(
          returning:
              _fn(_instance.returning.map((e) => CopyWith$Fragment$umkmData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateUMKMMutation$update_umkm<TRes>
    implements CopyWith$Mutation$UpdateUMKMMutation$update_umkm<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUMKMMutation$update_umkm(this._res);

  TRes _res;

  call({
    List<Fragment$umkmData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetByPkUMKMQuery {
  factory Variables$Query$GetByPkUMKMQuery({required int umkm_id}) =>
      Variables$Query$GetByPkUMKMQuery._({
        r'umkm_id': umkm_id,
      });

  Variables$Query$GetByPkUMKMQuery._(this._$data);

  factory Variables$Query$GetByPkUMKMQuery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$umkm_id = data['umkm_id'];
    result$data['umkm_id'] = (l$umkm_id as int);
    return Variables$Query$GetByPkUMKMQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int get umkm_id => (_$data['umkm_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$umkm_id = umkm_id;
    result$data['umkm_id'] = l$umkm_id;
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkUMKMQuery<Variables$Query$GetByPkUMKMQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkUMKMQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkUMKMQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (l$umkm_id != lOther$umkm_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$umkm_id = umkm_id;
    return Object.hashAll([l$umkm_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkUMKMQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkUMKMQuery(
    Variables$Query$GetByPkUMKMQuery instance,
    TRes Function(Variables$Query$GetByPkUMKMQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkUMKMQuery;

  factory CopyWith$Variables$Query$GetByPkUMKMQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkUMKMQuery;

  TRes call({int? umkm_id});
}

class _CopyWithImpl$Variables$Query$GetByPkUMKMQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkUMKMQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkUMKMQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkUMKMQuery _instance;

  final TRes Function(Variables$Query$GetByPkUMKMQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? umkm_id = _undefined}) =>
      _then(Variables$Query$GetByPkUMKMQuery._({
        ..._instance._$data,
        if (umkm_id != _undefined && umkm_id != null)
          'umkm_id': (umkm_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkUMKMQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkUMKMQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkUMKMQuery(this._res);

  TRes _res;

  call({int? umkm_id}) => _res;
}

class Query$GetByPkUMKMQuery {
  Query$GetByPkUMKMQuery({
    this.umkm_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkUMKMQuery.fromJson(Map<String, dynamic> json) {
    final l$umkm_by_pk = json['umkm_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkUMKMQuery(
      umkm_by_pk: l$umkm_by_pk == null
          ? null
          : Query$GetByPkUMKMQuery$umkm_by_pk.fromJson(
              (l$umkm_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetByPkUMKMQuery$umkm_by_pk? umkm_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$umkm_by_pk = umkm_by_pk;
    _resultData['umkm_by_pk'] = l$umkm_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$umkm_by_pk = umkm_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$umkm_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkUMKMQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm_by_pk = umkm_by_pk;
    final lOther$umkm_by_pk = other.umkm_by_pk;
    if (l$umkm_by_pk != lOther$umkm_by_pk) {
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

extension UtilityExtension$Query$GetByPkUMKMQuery on Query$GetByPkUMKMQuery {
  CopyWith$Query$GetByPkUMKMQuery<Query$GetByPkUMKMQuery> get copyWith =>
      CopyWith$Query$GetByPkUMKMQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetByPkUMKMQuery<TRes> {
  factory CopyWith$Query$GetByPkUMKMQuery(
    Query$GetByPkUMKMQuery instance,
    TRes Function(Query$GetByPkUMKMQuery) then,
  ) = _CopyWithImpl$Query$GetByPkUMKMQuery;

  factory CopyWith$Query$GetByPkUMKMQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkUMKMQuery;

  TRes call({
    Query$GetByPkUMKMQuery$umkm_by_pk? umkm_by_pk,
    String? $__typename,
  });
  CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk<TRes> get umkm_by_pk;
}

class _CopyWithImpl$Query$GetByPkUMKMQuery<TRes>
    implements CopyWith$Query$GetByPkUMKMQuery<TRes> {
  _CopyWithImpl$Query$GetByPkUMKMQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkUMKMQuery _instance;

  final TRes Function(Query$GetByPkUMKMQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? umkm_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkUMKMQuery(
        umkm_by_pk: umkm_by_pk == _undefined
            ? _instance.umkm_by_pk
            : (umkm_by_pk as Query$GetByPkUMKMQuery$umkm_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk<TRes> get umkm_by_pk {
    final local$umkm_by_pk = _instance.umkm_by_pk;
    return local$umkm_by_pk == null
        ? CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk.stub(_then(_instance))
        : CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk(
            local$umkm_by_pk, (e) => call(umkm_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkUMKMQuery<TRes>
    implements CopyWith$Query$GetByPkUMKMQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkUMKMQuery(this._res);

  TRes _res;

  call({
    Query$GetByPkUMKMQuery$umkm_by_pk? umkm_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk<TRes> get umkm_by_pk =>
      CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk.stub(_res);
}

const documentNodeQueryGetByPkUMKMQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkUMKMQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'umkm_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'umkm_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'umkm_id'),
            value: VariableNode(name: NameNode(value: 'umkm_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'umkmData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionumkmData,
  fragmentDefinitionuserProfile,
  fragmentDefinitionprofileData,
]);
Query$GetByPkUMKMQuery _parserFn$Query$GetByPkUMKMQuery(
        Map<String, dynamic> data) =>
    Query$GetByPkUMKMQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkUMKMQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetByPkUMKMQuery?,
);

class Options$Query$GetByPkUMKMQuery
    extends graphql.QueryOptions<Query$GetByPkUMKMQuery> {
  Options$Query$GetByPkUMKMQuery({
    String? operationName,
    required Variables$Query$GetByPkUMKMQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkUMKMQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkUMKMQuery? onComplete,
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
                        : _parserFn$Query$GetByPkUMKMQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkUMKMQuery,
          parserFn: _parserFn$Query$GetByPkUMKMQuery,
        );

  final OnQueryComplete$Query$GetByPkUMKMQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkUMKMQuery
    extends graphql.WatchQueryOptions<Query$GetByPkUMKMQuery> {
  WatchOptions$Query$GetByPkUMKMQuery({
    String? operationName,
    required Variables$Query$GetByPkUMKMQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkUMKMQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkUMKMQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkUMKMQuery,
        );
}

class FetchMoreOptions$Query$GetByPkUMKMQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkUMKMQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkUMKMQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkUMKMQuery,
        );
}

extension ClientExtension$Query$GetByPkUMKMQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkUMKMQuery>> query$GetByPkUMKMQuery(
          Options$Query$GetByPkUMKMQuery options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetByPkUMKMQuery> watchQuery$GetByPkUMKMQuery(
          WatchOptions$Query$GetByPkUMKMQuery options) =>
      this.watchQuery(options);
  void writeQuery$GetByPkUMKMQuery({
    required Query$GetByPkUMKMQuery data,
    required Variables$Query$GetByPkUMKMQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetByPkUMKMQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkUMKMQuery? readQuery$GetByPkUMKMQuery({
    required Variables$Query$GetByPkUMKMQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetByPkUMKMQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetByPkUMKMQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkUMKMQuery>
    useQuery$GetByPkUMKMQuery(Options$Query$GetByPkUMKMQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkUMKMQuery> useWatchQuery$GetByPkUMKMQuery(
        WatchOptions$Query$GetByPkUMKMQuery options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetByPkUMKMQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkUMKMQuery> {
  Query$GetByPkUMKMQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkUMKMQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkUMKMQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetByPkUMKMQuery$umkm_by_pk implements Fragment$umkmData {
  Query$GetByPkUMKMQuery$umkm_by_pk({
    required this.umkm_desc,
    required this.umkm_id,
    required this.umkm_name,
    required this.umkm_performance,
    required this.umkm_shares,
    this.updated_at,
    required this.user_id,
    this.created_at,
    this.$__typename = 'umkm',
    required this.user,
  });

  factory Query$GetByPkUMKMQuery$umkm_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$umkm_desc = json['umkm_desc'];
    final l$umkm_id = json['umkm_id'];
    final l$umkm_name = json['umkm_name'];
    final l$umkm_performance = json['umkm_performance'];
    final l$umkm_shares = json['umkm_shares'];
    final l$updated_at = json['updated_at'];
    final l$user_id = json['user_id'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$GetByPkUMKMQuery$umkm_by_pk(
      umkm_desc: (l$umkm_desc as String),
      umkm_id: (l$umkm_id as int),
      umkm_name: (l$umkm_name as String),
      umkm_performance: (l$umkm_performance as String),
      umkm_shares: (l$umkm_shares as int),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      user_id: uuidFromJson(l$user_id),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      user: Fragment$userProfile.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final String umkm_desc;

  final int umkm_id;

  final String umkm_name;

  final String umkm_performance;

  final int umkm_shares;

  final DateTime? updated_at;

  final UUID user_id;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$userProfile user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$umkm_desc = umkm_desc;
    _resultData['umkm_desc'] = l$umkm_desc;
    final l$umkm_id = umkm_id;
    _resultData['umkm_id'] = l$umkm_id;
    final l$umkm_name = umkm_name;
    _resultData['umkm_name'] = l$umkm_name;
    final l$umkm_performance = umkm_performance;
    _resultData['umkm_performance'] = l$umkm_performance;
    final l$umkm_shares = umkm_shares;
    _resultData['umkm_shares'] = l$umkm_shares;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$umkm_desc = umkm_desc;
    final l$umkm_id = umkm_id;
    final l$umkm_name = umkm_name;
    final l$umkm_performance = umkm_performance;
    final l$umkm_shares = umkm_shares;
    final l$updated_at = updated_at;
    final l$user_id = user_id;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$umkm_desc,
      l$umkm_id,
      l$umkm_name,
      l$umkm_performance,
      l$umkm_shares,
      l$updated_at,
      l$user_id,
      l$created_at,
      l$$__typename,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkUMKMQuery$umkm_by_pk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm_desc = umkm_desc;
    final lOther$umkm_desc = other.umkm_desc;
    if (l$umkm_desc != lOther$umkm_desc) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (l$umkm_id != lOther$umkm_id) {
      return false;
    }
    final l$umkm_name = umkm_name;
    final lOther$umkm_name = other.umkm_name;
    if (l$umkm_name != lOther$umkm_name) {
      return false;
    }
    final l$umkm_performance = umkm_performance;
    final lOther$umkm_performance = other.umkm_performance;
    if (l$umkm_performance != lOther$umkm_performance) {
      return false;
    }
    final l$umkm_shares = umkm_shares;
    final lOther$umkm_shares = other.umkm_shares;
    if (l$umkm_shares != lOther$umkm_shares) {
      return false;
    }
    final l$updated_at = updated_at;
    final lOther$updated_at = other.updated_at;
    if (l$updated_at != lOther$updated_at) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetByPkUMKMQuery$umkm_by_pk
    on Query$GetByPkUMKMQuery$umkm_by_pk {
  CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk<Query$GetByPkUMKMQuery$umkm_by_pk>
      get copyWith => CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk<TRes> {
  factory CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk(
    Query$GetByPkUMKMQuery$umkm_by_pk instance,
    TRes Function(Query$GetByPkUMKMQuery$umkm_by_pk) then,
  ) = _CopyWithImpl$Query$GetByPkUMKMQuery$umkm_by_pk;

  factory CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkUMKMQuery$umkm_by_pk;

  TRes call({
    String? umkm_desc,
    int? umkm_id,
    String? umkm_name,
    String? umkm_performance,
    int? umkm_shares,
    DateTime? updated_at,
    UUID? user_id,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  });
  CopyWith$Fragment$userProfile<TRes> get user;
}

class _CopyWithImpl$Query$GetByPkUMKMQuery$umkm_by_pk<TRes>
    implements CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk<TRes> {
  _CopyWithImpl$Query$GetByPkUMKMQuery$umkm_by_pk(
    this._instance,
    this._then,
  );

  final Query$GetByPkUMKMQuery$umkm_by_pk _instance;

  final TRes Function(Query$GetByPkUMKMQuery$umkm_by_pk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? umkm_desc = _undefined,
    Object? umkm_id = _undefined,
    Object? umkm_name = _undefined,
    Object? umkm_performance = _undefined,
    Object? umkm_shares = _undefined,
    Object? updated_at = _undefined,
    Object? user_id = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$GetByPkUMKMQuery$umkm_by_pk(
        umkm_desc: umkm_desc == _undefined || umkm_desc == null
            ? _instance.umkm_desc
            : (umkm_desc as String),
        umkm_id: umkm_id == _undefined || umkm_id == null
            ? _instance.umkm_id
            : (umkm_id as int),
        umkm_name: umkm_name == _undefined || umkm_name == null
            ? _instance.umkm_name
            : (umkm_name as String),
        umkm_performance:
            umkm_performance == _undefined || umkm_performance == null
                ? _instance.umkm_performance
                : (umkm_performance as String),
        umkm_shares: umkm_shares == _undefined || umkm_shares == null
            ? _instance.umkm_shares
            : (umkm_shares as int),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$userProfile),
      ));
  CopyWith$Fragment$userProfile<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$userProfile(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkUMKMQuery$umkm_by_pk<TRes>
    implements CopyWith$Query$GetByPkUMKMQuery$umkm_by_pk<TRes> {
  _CopyWithStubImpl$Query$GetByPkUMKMQuery$umkm_by_pk(this._res);

  TRes _res;

  call({
    String? umkm_desc,
    int? umkm_id,
    String? umkm_name,
    String? umkm_performance,
    int? umkm_shares,
    DateTime? updated_at,
    UUID? user_id,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  }) =>
      _res;
  CopyWith$Fragment$userProfile<TRes> get user =>
      CopyWith$Fragment$userProfile.stub(_res);
}

class Variables$Query$GetAllUMKMQuery {
  factory Variables$Query$GetAllUMKMQuery({
    Input$umkm_bool_exp? where,
    int? limit,
    List<Enum$umkm_select_column>? distinct_on,
    int? offset,
    List<Input$umkm_order_by>? order_by,
  }) =>
      Variables$Query$GetAllUMKMQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllUMKMQuery._(this._$data);

  factory Variables$Query$GetAllUMKMQuery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$umkm_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$umkm_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map(
              (e) => Input$umkm_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllUMKMQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$umkm_bool_exp? get where => (_$data['where'] as Input$umkm_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$umkm_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$umkm_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$umkm_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$umkm_order_by>?);
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
      result$data['distinct_on'] =
          l$distinct_on?.map((e) => toJson$Enum$umkm_select_column(e)).toList();
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

  CopyWith$Variables$Query$GetAllUMKMQuery<Variables$Query$GetAllUMKMQuery>
      get copyWith => CopyWith$Variables$Query$GetAllUMKMQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllUMKMQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllUMKMQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllUMKMQuery(
    Variables$Query$GetAllUMKMQuery instance,
    TRes Function(Variables$Query$GetAllUMKMQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllUMKMQuery;

  factory CopyWith$Variables$Query$GetAllUMKMQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllUMKMQuery;

  TRes call({
    Input$umkm_bool_exp? where,
    int? limit,
    List<Enum$umkm_select_column>? distinct_on,
    int? offset,
    List<Input$umkm_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllUMKMQuery<TRes>
    implements CopyWith$Variables$Query$GetAllUMKMQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllUMKMQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllUMKMQuery _instance;

  final TRes Function(Variables$Query$GetAllUMKMQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllUMKMQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$umkm_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$umkm_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$umkm_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllUMKMQuery<TRes>
    implements CopyWith$Variables$Query$GetAllUMKMQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllUMKMQuery(this._res);

  TRes _res;

  call({
    Input$umkm_bool_exp? where,
    int? limit,
    List<Enum$umkm_select_column>? distinct_on,
    int? offset,
    List<Input$umkm_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllUMKMQuery {
  Query$GetAllUMKMQuery({
    required this.umkm,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllUMKMQuery.fromJson(Map<String, dynamic> json) {
    final l$umkm = json['umkm'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUMKMQuery(
      umkm: (l$umkm as List<dynamic>)
          .map((e) => Fragment$umkmData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$umkmData> umkm;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$umkm = umkm;
    _resultData['umkm'] = l$umkm.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$umkm = umkm;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$umkm.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllUMKMQuery) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm = umkm;
    final lOther$umkm = other.umkm;
    if (l$umkm.length != lOther$umkm.length) {
      return false;
    }
    for (int i = 0; i < l$umkm.length; i++) {
      final l$umkm$entry = l$umkm[i];
      final lOther$umkm$entry = lOther$umkm[i];
      if (l$umkm$entry != lOther$umkm$entry) {
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

extension UtilityExtension$Query$GetAllUMKMQuery on Query$GetAllUMKMQuery {
  CopyWith$Query$GetAllUMKMQuery<Query$GetAllUMKMQuery> get copyWith =>
      CopyWith$Query$GetAllUMKMQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllUMKMQuery<TRes> {
  factory CopyWith$Query$GetAllUMKMQuery(
    Query$GetAllUMKMQuery instance,
    TRes Function(Query$GetAllUMKMQuery) then,
  ) = _CopyWithImpl$Query$GetAllUMKMQuery;

  factory CopyWith$Query$GetAllUMKMQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUMKMQuery;

  TRes call({
    List<Fragment$umkmData>? umkm,
    String? $__typename,
  });
  TRes umkm(
      Iterable<Fragment$umkmData> Function(
              Iterable<CopyWith$Fragment$umkmData<Fragment$umkmData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllUMKMQuery<TRes>
    implements CopyWith$Query$GetAllUMKMQuery<TRes> {
  _CopyWithImpl$Query$GetAllUMKMQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllUMKMQuery _instance;

  final TRes Function(Query$GetAllUMKMQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? umkm = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllUMKMQuery(
        umkm: umkm == _undefined || umkm == null
            ? _instance.umkm
            : (umkm as List<Fragment$umkmData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes umkm(
          Iterable<Fragment$umkmData> Function(
                  Iterable<CopyWith$Fragment$umkmData<Fragment$umkmData>>)
              _fn) =>
      call(
          umkm: _fn(_instance.umkm.map((e) => CopyWith$Fragment$umkmData(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetAllUMKMQuery<TRes>
    implements CopyWith$Query$GetAllUMKMQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllUMKMQuery(this._res);

  TRes _res;

  call({
    List<Fragment$umkmData>? umkm,
    String? $__typename,
  }) =>
      _res;
  umkm(_fn) => _res;
}

const documentNodeQueryGetAllUMKMQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllUMKMQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'umkm_bool_exp'),
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
            name: NameNode(value: 'umkm_select_column'),
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
            name: NameNode(value: 'umkm_order_by'),
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
        name: NameNode(value: 'umkm'),
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
            name: NameNode(value: 'umkmData'),
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
  fragmentDefinitionumkmData,
]);
Query$GetAllUMKMQuery _parserFn$Query$GetAllUMKMQuery(
        Map<String, dynamic> data) =>
    Query$GetAllUMKMQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllUMKMQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllUMKMQuery?,
);

class Options$Query$GetAllUMKMQuery
    extends graphql.QueryOptions<Query$GetAllUMKMQuery> {
  Options$Query$GetAllUMKMQuery({
    String? operationName,
    Variables$Query$GetAllUMKMQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllUMKMQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllUMKMQuery? onComplete,
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
                    data == null ? null : _parserFn$Query$GetAllUMKMQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllUMKMQuery,
          parserFn: _parserFn$Query$GetAllUMKMQuery,
        );

  final OnQueryComplete$Query$GetAllUMKMQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllUMKMQuery
    extends graphql.WatchQueryOptions<Query$GetAllUMKMQuery> {
  WatchOptions$Query$GetAllUMKMQuery({
    String? operationName,
    Variables$Query$GetAllUMKMQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllUMKMQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllUMKMQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllUMKMQuery,
        );
}

class FetchMoreOptions$Query$GetAllUMKMQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllUMKMQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllUMKMQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllUMKMQuery,
        );
}

extension ClientExtension$Query$GetAllUMKMQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllUMKMQuery>> query$GetAllUMKMQuery(
          [Options$Query$GetAllUMKMQuery? options]) async =>
      await this.query(options ?? Options$Query$GetAllUMKMQuery());
  graphql.ObservableQuery<Query$GetAllUMKMQuery> watchQuery$GetAllUMKMQuery(
          [WatchOptions$Query$GetAllUMKMQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllUMKMQuery());
  void writeQuery$GetAllUMKMQuery({
    required Query$GetAllUMKMQuery data,
    Variables$Query$GetAllUMKMQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllUMKMQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllUMKMQuery? readQuery$GetAllUMKMQuery({
    Variables$Query$GetAllUMKMQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllUMKMQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllUMKMQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllUMKMQuery> useQuery$GetAllUMKMQuery(
        [Options$Query$GetAllUMKMQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllUMKMQuery());
graphql.ObservableQuery<Query$GetAllUMKMQuery> useWatchQuery$GetAllUMKMQuery(
        [WatchOptions$Query$GetAllUMKMQuery? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetAllUMKMQuery());

class Query$GetAllUMKMQuery$Widget
    extends graphql_flutter.Query<Query$GetAllUMKMQuery> {
  Query$GetAllUMKMQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllUMKMQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllUMKMQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllUMKMQuery(),
          builder: builder,
        );
}

class Variables$Query$GetAllUMKMProfileQuery {
  factory Variables$Query$GetAllUMKMProfileQuery({
    Input$umkm_bool_exp? where,
    int? limit,
    List<Enum$umkm_select_column>? distinct_on,
    int? offset,
    List<Input$umkm_order_by>? order_by,
  }) =>
      Variables$Query$GetAllUMKMProfileQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllUMKMProfileQuery._(this._$data);

  factory Variables$Query$GetAllUMKMProfileQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$umkm_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$umkm_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map(
              (e) => Input$umkm_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllUMKMProfileQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$umkm_bool_exp? get where => (_$data['where'] as Input$umkm_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$umkm_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$umkm_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$umkm_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$umkm_order_by>?);
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
      result$data['distinct_on'] =
          l$distinct_on?.map((e) => toJson$Enum$umkm_select_column(e)).toList();
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

  CopyWith$Variables$Query$GetAllUMKMProfileQuery<
          Variables$Query$GetAllUMKMProfileQuery>
      get copyWith => CopyWith$Variables$Query$GetAllUMKMProfileQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllUMKMProfileQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllUMKMProfileQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllUMKMProfileQuery(
    Variables$Query$GetAllUMKMProfileQuery instance,
    TRes Function(Variables$Query$GetAllUMKMProfileQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllUMKMProfileQuery;

  factory CopyWith$Variables$Query$GetAllUMKMProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllUMKMProfileQuery;

  TRes call({
    Input$umkm_bool_exp? where,
    int? limit,
    List<Enum$umkm_select_column>? distinct_on,
    int? offset,
    List<Input$umkm_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllUMKMProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetAllUMKMProfileQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllUMKMProfileQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllUMKMProfileQuery _instance;

  final TRes Function(Variables$Query$GetAllUMKMProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllUMKMProfileQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$umkm_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$umkm_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$umkm_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllUMKMProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetAllUMKMProfileQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllUMKMProfileQuery(this._res);

  TRes _res;

  call({
    Input$umkm_bool_exp? where,
    int? limit,
    List<Enum$umkm_select_column>? distinct_on,
    int? offset,
    List<Input$umkm_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllUMKMProfileQuery {
  Query$GetAllUMKMProfileQuery({
    required this.umkm,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllUMKMProfileQuery.fromJson(Map<String, dynamic> json) {
    final l$umkm = json['umkm'];
    final l$$__typename = json['__typename'];
    return Query$GetAllUMKMProfileQuery(
      umkm: (l$umkm as List<dynamic>)
          .map((e) => Query$GetAllUMKMProfileQuery$umkm.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllUMKMProfileQuery$umkm> umkm;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$umkm = umkm;
    _resultData['umkm'] = l$umkm.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$umkm = umkm;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$umkm.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllUMKMProfileQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm = umkm;
    final lOther$umkm = other.umkm;
    if (l$umkm.length != lOther$umkm.length) {
      return false;
    }
    for (int i = 0; i < l$umkm.length; i++) {
      final l$umkm$entry = l$umkm[i];
      final lOther$umkm$entry = lOther$umkm[i];
      if (l$umkm$entry != lOther$umkm$entry) {
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

extension UtilityExtension$Query$GetAllUMKMProfileQuery
    on Query$GetAllUMKMProfileQuery {
  CopyWith$Query$GetAllUMKMProfileQuery<Query$GetAllUMKMProfileQuery>
      get copyWith => CopyWith$Query$GetAllUMKMProfileQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllUMKMProfileQuery<TRes> {
  factory CopyWith$Query$GetAllUMKMProfileQuery(
    Query$GetAllUMKMProfileQuery instance,
    TRes Function(Query$GetAllUMKMProfileQuery) then,
  ) = _CopyWithImpl$Query$GetAllUMKMProfileQuery;

  factory CopyWith$Query$GetAllUMKMProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUMKMProfileQuery;

  TRes call({
    List<Query$GetAllUMKMProfileQuery$umkm>? umkm,
    String? $__typename,
  });
  TRes umkm(
      Iterable<Query$GetAllUMKMProfileQuery$umkm> Function(
              Iterable<
                  CopyWith$Query$GetAllUMKMProfileQuery$umkm<
                      Query$GetAllUMKMProfileQuery$umkm>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllUMKMProfileQuery<TRes>
    implements CopyWith$Query$GetAllUMKMProfileQuery<TRes> {
  _CopyWithImpl$Query$GetAllUMKMProfileQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllUMKMProfileQuery _instance;

  final TRes Function(Query$GetAllUMKMProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? umkm = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllUMKMProfileQuery(
        umkm: umkm == _undefined || umkm == null
            ? _instance.umkm
            : (umkm as List<Query$GetAllUMKMProfileQuery$umkm>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes umkm(
          Iterable<Query$GetAllUMKMProfileQuery$umkm> Function(
                  Iterable<
                      CopyWith$Query$GetAllUMKMProfileQuery$umkm<
                          Query$GetAllUMKMProfileQuery$umkm>>)
              _fn) =>
      call(
          umkm: _fn(_instance.umkm
              .map((e) => CopyWith$Query$GetAllUMKMProfileQuery$umkm(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllUMKMProfileQuery<TRes>
    implements CopyWith$Query$GetAllUMKMProfileQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllUMKMProfileQuery(this._res);

  TRes _res;

  call({
    List<Query$GetAllUMKMProfileQuery$umkm>? umkm,
    String? $__typename,
  }) =>
      _res;
  umkm(_fn) => _res;
}

const documentNodeQueryGetAllUMKMProfileQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllUMKMProfileQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'umkm_bool_exp'),
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
            name: NameNode(value: 'umkm_select_column'),
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
            name: NameNode(value: 'umkm_order_by'),
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
        name: NameNode(value: 'umkm'),
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
            name: NameNode(value: 'umkmData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
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
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionumkmData,
  fragmentDefinitionuserProfile,
  fragmentDefinitionprofileData,
]);
Query$GetAllUMKMProfileQuery _parserFn$Query$GetAllUMKMProfileQuery(
        Map<String, dynamic> data) =>
    Query$GetAllUMKMProfileQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllUMKMProfileQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllUMKMProfileQuery?,
);

class Options$Query$GetAllUMKMProfileQuery
    extends graphql.QueryOptions<Query$GetAllUMKMProfileQuery> {
  Options$Query$GetAllUMKMProfileQuery({
    String? operationName,
    Variables$Query$GetAllUMKMProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllUMKMProfileQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllUMKMProfileQuery? onComplete,
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
                        : _parserFn$Query$GetAllUMKMProfileQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllUMKMProfileQuery,
          parserFn: _parserFn$Query$GetAllUMKMProfileQuery,
        );

  final OnQueryComplete$Query$GetAllUMKMProfileQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllUMKMProfileQuery
    extends graphql.WatchQueryOptions<Query$GetAllUMKMProfileQuery> {
  WatchOptions$Query$GetAllUMKMProfileQuery({
    String? operationName,
    Variables$Query$GetAllUMKMProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllUMKMProfileQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllUMKMProfileQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllUMKMProfileQuery,
        );
}

class FetchMoreOptions$Query$GetAllUMKMProfileQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllUMKMProfileQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllUMKMProfileQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllUMKMProfileQuery,
        );
}

extension ClientExtension$Query$GetAllUMKMProfileQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllUMKMProfileQuery>>
      query$GetAllUMKMProfileQuery(
              [Options$Query$GetAllUMKMProfileQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllUMKMProfileQuery());
  graphql.ObservableQuery<
      Query$GetAllUMKMProfileQuery> watchQuery$GetAllUMKMProfileQuery(
          [WatchOptions$Query$GetAllUMKMProfileQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllUMKMProfileQuery());
  void writeQuery$GetAllUMKMProfileQuery({
    required Query$GetAllUMKMProfileQuery data,
    Variables$Query$GetAllUMKMProfileQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllUMKMProfileQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllUMKMProfileQuery? readQuery$GetAllUMKMProfileQuery({
    Variables$Query$GetAllUMKMProfileQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllUMKMProfileQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllUMKMProfileQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllUMKMProfileQuery>
    useQuery$GetAllUMKMProfileQuery(
            [Options$Query$GetAllUMKMProfileQuery? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllUMKMProfileQuery());
graphql.ObservableQuery<Query$GetAllUMKMProfileQuery>
    useWatchQuery$GetAllUMKMProfileQuery(
            [WatchOptions$Query$GetAllUMKMProfileQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllUMKMProfileQuery());

class Query$GetAllUMKMProfileQuery$Widget
    extends graphql_flutter.Query<Query$GetAllUMKMProfileQuery> {
  Query$GetAllUMKMProfileQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllUMKMProfileQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllUMKMProfileQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllUMKMProfileQuery(),
          builder: builder,
        );
}

class Query$GetAllUMKMProfileQuery$umkm implements Fragment$umkmData {
  Query$GetAllUMKMProfileQuery$umkm({
    required this.umkm_desc,
    required this.umkm_id,
    required this.umkm_name,
    required this.umkm_performance,
    required this.umkm_shares,
    this.updated_at,
    required this.user_id,
    this.created_at,
    this.$__typename = 'umkm',
    required this.user,
  });

  factory Query$GetAllUMKMProfileQuery$umkm.fromJson(
      Map<String, dynamic> json) {
    final l$umkm_desc = json['umkm_desc'];
    final l$umkm_id = json['umkm_id'];
    final l$umkm_name = json['umkm_name'];
    final l$umkm_performance = json['umkm_performance'];
    final l$umkm_shares = json['umkm_shares'];
    final l$updated_at = json['updated_at'];
    final l$user_id = json['user_id'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$GetAllUMKMProfileQuery$umkm(
      umkm_desc: (l$umkm_desc as String),
      umkm_id: (l$umkm_id as int),
      umkm_name: (l$umkm_name as String),
      umkm_performance: (l$umkm_performance as String),
      umkm_shares: (l$umkm_shares as int),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      user_id: uuidFromJson(l$user_id),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      user: Fragment$userProfile.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final String umkm_desc;

  final int umkm_id;

  final String umkm_name;

  final String umkm_performance;

  final int umkm_shares;

  final DateTime? updated_at;

  final UUID user_id;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$userProfile user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$umkm_desc = umkm_desc;
    _resultData['umkm_desc'] = l$umkm_desc;
    final l$umkm_id = umkm_id;
    _resultData['umkm_id'] = l$umkm_id;
    final l$umkm_name = umkm_name;
    _resultData['umkm_name'] = l$umkm_name;
    final l$umkm_performance = umkm_performance;
    _resultData['umkm_performance'] = l$umkm_performance;
    final l$umkm_shares = umkm_shares;
    _resultData['umkm_shares'] = l$umkm_shares;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$umkm_desc = umkm_desc;
    final l$umkm_id = umkm_id;
    final l$umkm_name = umkm_name;
    final l$umkm_performance = umkm_performance;
    final l$umkm_shares = umkm_shares;
    final l$updated_at = updated_at;
    final l$user_id = user_id;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$umkm_desc,
      l$umkm_id,
      l$umkm_name,
      l$umkm_performance,
      l$umkm_shares,
      l$updated_at,
      l$user_id,
      l$created_at,
      l$$__typename,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllUMKMProfileQuery$umkm) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm_desc = umkm_desc;
    final lOther$umkm_desc = other.umkm_desc;
    if (l$umkm_desc != lOther$umkm_desc) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (l$umkm_id != lOther$umkm_id) {
      return false;
    }
    final l$umkm_name = umkm_name;
    final lOther$umkm_name = other.umkm_name;
    if (l$umkm_name != lOther$umkm_name) {
      return false;
    }
    final l$umkm_performance = umkm_performance;
    final lOther$umkm_performance = other.umkm_performance;
    if (l$umkm_performance != lOther$umkm_performance) {
      return false;
    }
    final l$umkm_shares = umkm_shares;
    final lOther$umkm_shares = other.umkm_shares;
    if (l$umkm_shares != lOther$umkm_shares) {
      return false;
    }
    final l$updated_at = updated_at;
    final lOther$updated_at = other.updated_at;
    if (l$updated_at != lOther$updated_at) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllUMKMProfileQuery$umkm
    on Query$GetAllUMKMProfileQuery$umkm {
  CopyWith$Query$GetAllUMKMProfileQuery$umkm<Query$GetAllUMKMProfileQuery$umkm>
      get copyWith => CopyWith$Query$GetAllUMKMProfileQuery$umkm(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllUMKMProfileQuery$umkm<TRes> {
  factory CopyWith$Query$GetAllUMKMProfileQuery$umkm(
    Query$GetAllUMKMProfileQuery$umkm instance,
    TRes Function(Query$GetAllUMKMProfileQuery$umkm) then,
  ) = _CopyWithImpl$Query$GetAllUMKMProfileQuery$umkm;

  factory CopyWith$Query$GetAllUMKMProfileQuery$umkm.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllUMKMProfileQuery$umkm;

  TRes call({
    String? umkm_desc,
    int? umkm_id,
    String? umkm_name,
    String? umkm_performance,
    int? umkm_shares,
    DateTime? updated_at,
    UUID? user_id,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  });
  CopyWith$Fragment$userProfile<TRes> get user;
}

class _CopyWithImpl$Query$GetAllUMKMProfileQuery$umkm<TRes>
    implements CopyWith$Query$GetAllUMKMProfileQuery$umkm<TRes> {
  _CopyWithImpl$Query$GetAllUMKMProfileQuery$umkm(
    this._instance,
    this._then,
  );

  final Query$GetAllUMKMProfileQuery$umkm _instance;

  final TRes Function(Query$GetAllUMKMProfileQuery$umkm) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? umkm_desc = _undefined,
    Object? umkm_id = _undefined,
    Object? umkm_name = _undefined,
    Object? umkm_performance = _undefined,
    Object? umkm_shares = _undefined,
    Object? updated_at = _undefined,
    Object? user_id = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$GetAllUMKMProfileQuery$umkm(
        umkm_desc: umkm_desc == _undefined || umkm_desc == null
            ? _instance.umkm_desc
            : (umkm_desc as String),
        umkm_id: umkm_id == _undefined || umkm_id == null
            ? _instance.umkm_id
            : (umkm_id as int),
        umkm_name: umkm_name == _undefined || umkm_name == null
            ? _instance.umkm_name
            : (umkm_name as String),
        umkm_performance:
            umkm_performance == _undefined || umkm_performance == null
                ? _instance.umkm_performance
                : (umkm_performance as String),
        umkm_shares: umkm_shares == _undefined || umkm_shares == null
            ? _instance.umkm_shares
            : (umkm_shares as int),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$userProfile),
      ));
  CopyWith$Fragment$userProfile<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$userProfile(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetAllUMKMProfileQuery$umkm<TRes>
    implements CopyWith$Query$GetAllUMKMProfileQuery$umkm<TRes> {
  _CopyWithStubImpl$Query$GetAllUMKMProfileQuery$umkm(this._res);

  TRes _res;

  call({
    String? umkm_desc,
    int? umkm_id,
    String? umkm_name,
    String? umkm_performance,
    int? umkm_shares,
    DateTime? updated_at,
    UUID? user_id,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  }) =>
      _res;
  CopyWith$Fragment$userProfile<TRes> get user =>
      CopyWith$Fragment$userProfile.stub(_res);
}
