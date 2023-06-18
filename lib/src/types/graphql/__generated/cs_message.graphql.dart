// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:tubes_promvis_kelompok_8/src/types/graphql/scalar.dart';
import 'schema.graphql.dart';
import 'user.graphql.dart';

class Fragment$cs_messageData {
  Fragment$cs_messageData({
    required this.cs_message_id,
    this.cs_agent_user_id,
    required this.cs_message_content,
    required this.cs_message_date,
    this.updated_at,
    this.created_at,
    required this.user_id,
    this.$__typename = 'cs_message',
  });

  factory Fragment$cs_messageData.fromJson(Map<String, dynamic> json) {
    final l$cs_message_id = json['cs_message_id'];
    final l$cs_agent_user_id = json['cs_agent_user_id'];
    final l$cs_message_content = json['cs_message_content'];
    final l$cs_message_date = json['cs_message_date'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$user_id = json['user_id'];
    final l$$__typename = json['__typename'];
    return Fragment$cs_messageData(
      cs_message_id: (l$cs_message_id as int),
      cs_agent_user_id:
          l$cs_agent_user_id == null ? null : uuidFromJson(l$cs_agent_user_id),
      cs_message_content: (l$cs_message_content as String),
      cs_message_date: DateTime.parse((l$cs_message_date as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      user_id: uuidFromJson(l$user_id),
      $__typename: (l$$__typename as String),
    );
  }

  final int cs_message_id;

  final UUID? cs_agent_user_id;

  final String cs_message_content;

  final DateTime cs_message_date;

  final DateTime? updated_at;

  final DateTime? created_at;

  final UUID user_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cs_message_id = cs_message_id;
    _resultData['cs_message_id'] = l$cs_message_id;
    final l$cs_agent_user_id = cs_agent_user_id;
    _resultData['cs_agent_user_id'] =
        l$cs_agent_user_id == null ? null : uuidToJson(l$cs_agent_user_id);
    final l$cs_message_content = cs_message_content;
    _resultData['cs_message_content'] = l$cs_message_content;
    final l$cs_message_date = cs_message_date;
    _resultData['cs_message_date'] = l$cs_message_date.toIso8601String();
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cs_message_id = cs_message_id;
    final l$cs_agent_user_id = cs_agent_user_id;
    final l$cs_message_content = cs_message_content;
    final l$cs_message_date = cs_message_date;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$user_id = user_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cs_message_id,
      l$cs_agent_user_id,
      l$cs_message_content,
      l$cs_message_date,
      l$updated_at,
      l$created_at,
      l$user_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$cs_messageData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cs_message_id = cs_message_id;
    final lOther$cs_message_id = other.cs_message_id;
    if (l$cs_message_id != lOther$cs_message_id) {
      return false;
    }
    final l$cs_agent_user_id = cs_agent_user_id;
    final lOther$cs_agent_user_id = other.cs_agent_user_id;
    if (l$cs_agent_user_id != lOther$cs_agent_user_id) {
      return false;
    }
    final l$cs_message_content = cs_message_content;
    final lOther$cs_message_content = other.cs_message_content;
    if (l$cs_message_content != lOther$cs_message_content) {
      return false;
    }
    final l$cs_message_date = cs_message_date;
    final lOther$cs_message_date = other.cs_message_date;
    if (l$cs_message_date != lOther$cs_message_date) {
      return false;
    }
    final l$updated_at = updated_at;
    final lOther$updated_at = other.updated_at;
    if (l$updated_at != lOther$updated_at) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
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

extension UtilityExtension$Fragment$cs_messageData on Fragment$cs_messageData {
  CopyWith$Fragment$cs_messageData<Fragment$cs_messageData> get copyWith =>
      CopyWith$Fragment$cs_messageData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$cs_messageData<TRes> {
  factory CopyWith$Fragment$cs_messageData(
    Fragment$cs_messageData instance,
    TRes Function(Fragment$cs_messageData) then,
  ) = _CopyWithImpl$Fragment$cs_messageData;

  factory CopyWith$Fragment$cs_messageData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$cs_messageData;

  TRes call({
    int? cs_message_id,
    UUID? cs_agent_user_id,
    String? cs_message_content,
    DateTime? cs_message_date,
    DateTime? updated_at,
    DateTime? created_at,
    UUID? user_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$cs_messageData<TRes>
    implements CopyWith$Fragment$cs_messageData<TRes> {
  _CopyWithImpl$Fragment$cs_messageData(
    this._instance,
    this._then,
  );

  final Fragment$cs_messageData _instance;

  final TRes Function(Fragment$cs_messageData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cs_message_id = _undefined,
    Object? cs_agent_user_id = _undefined,
    Object? cs_message_content = _undefined,
    Object? cs_message_date = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? user_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$cs_messageData(
        cs_message_id: cs_message_id == _undefined || cs_message_id == null
            ? _instance.cs_message_id
            : (cs_message_id as int),
        cs_agent_user_id: cs_agent_user_id == _undefined
            ? _instance.cs_agent_user_id
            : (cs_agent_user_id as UUID?),
        cs_message_content:
            cs_message_content == _undefined || cs_message_content == null
                ? _instance.cs_message_content
                : (cs_message_content as String),
        cs_message_date:
            cs_message_date == _undefined || cs_message_date == null
                ? _instance.cs_message_date
                : (cs_message_date as DateTime),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$cs_messageData<TRes>
    implements CopyWith$Fragment$cs_messageData<TRes> {
  _CopyWithStubImpl$Fragment$cs_messageData(this._res);

  TRes _res;

  call({
    int? cs_message_id,
    UUID? cs_agent_user_id,
    String? cs_message_content,
    DateTime? cs_message_date,
    DateTime? updated_at,
    DateTime? created_at,
    UUID? user_id,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitioncs_messageData = FragmentDefinitionNode(
  name: NameNode(value: 'cs_messageData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'cs_message'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'cs_message_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'cs_agent_user_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'cs_message_content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'cs_message_date'),
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
      name: NameNode(value: 'created_at'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentcs_messageData = DocumentNode(definitions: [
  fragmentDefinitioncs_messageData,
]);

extension ClientExtension$Fragment$cs_messageData on graphql.GraphQLClient {
  void writeFragment$cs_messageData({
    required Fragment$cs_messageData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'cs_messageData',
            document: documentNodeFragmentcs_messageData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$cs_messageData? readFragment$cs_messageData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'cs_messageData',
          document: documentNodeFragmentcs_messageData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$cs_messageData.fromJson(result);
  }
}

class Variables$Mutation$InsertCsMessageMutation {
  factory Variables$Mutation$InsertCsMessageMutation(
          {required Input$cs_message_insert_input data}) =>
      Variables$Mutation$InsertCsMessageMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertCsMessageMutation._(this._$data);

  factory Variables$Mutation$InsertCsMessageMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$cs_message_insert_input.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertCsMessageMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$cs_message_insert_input get data =>
      (_$data['data'] as Input$cs_message_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertCsMessageMutation<
          Variables$Mutation$InsertCsMessageMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertCsMessageMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertCsMessageMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertCsMessageMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertCsMessageMutation(
    Variables$Mutation$InsertCsMessageMutation instance,
    TRes Function(Variables$Mutation$InsertCsMessageMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertCsMessageMutation;

  factory CopyWith$Variables$Mutation$InsertCsMessageMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertCsMessageMutation;

  TRes call({Input$cs_message_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertCsMessageMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertCsMessageMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertCsMessageMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertCsMessageMutation _instance;

  final TRes Function(Variables$Mutation$InsertCsMessageMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertCsMessageMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$cs_message_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertCsMessageMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertCsMessageMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertCsMessageMutation(this._res);

  TRes _res;

  call({Input$cs_message_insert_input? data}) => _res;
}

class Mutation$InsertCsMessageMutation {
  Mutation$InsertCsMessageMutation({
    this.insert_cs_message_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertCsMessageMutation.fromJson(Map<String, dynamic> json) {
    final l$insert_cs_message_one = json['insert_cs_message_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertCsMessageMutation(
      insert_cs_message_one: l$insert_cs_message_one == null
          ? null
          : Fragment$cs_messageData.fromJson(
              (l$insert_cs_message_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$cs_messageData? insert_cs_message_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_cs_message_one = insert_cs_message_one;
    _resultData['insert_cs_message_one'] = l$insert_cs_message_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_cs_message_one = insert_cs_message_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_cs_message_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertCsMessageMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_cs_message_one = insert_cs_message_one;
    final lOther$insert_cs_message_one = other.insert_cs_message_one;
    if (l$insert_cs_message_one != lOther$insert_cs_message_one) {
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

extension UtilityExtension$Mutation$InsertCsMessageMutation
    on Mutation$InsertCsMessageMutation {
  CopyWith$Mutation$InsertCsMessageMutation<Mutation$InsertCsMessageMutation>
      get copyWith => CopyWith$Mutation$InsertCsMessageMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertCsMessageMutation<TRes> {
  factory CopyWith$Mutation$InsertCsMessageMutation(
    Mutation$InsertCsMessageMutation instance,
    TRes Function(Mutation$InsertCsMessageMutation) then,
  ) = _CopyWithImpl$Mutation$InsertCsMessageMutation;

  factory CopyWith$Mutation$InsertCsMessageMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertCsMessageMutation;

  TRes call({
    Fragment$cs_messageData? insert_cs_message_one,
    String? $__typename,
  });
  CopyWith$Fragment$cs_messageData<TRes> get insert_cs_message_one;
}

class _CopyWithImpl$Mutation$InsertCsMessageMutation<TRes>
    implements CopyWith$Mutation$InsertCsMessageMutation<TRes> {
  _CopyWithImpl$Mutation$InsertCsMessageMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertCsMessageMutation _instance;

  final TRes Function(Mutation$InsertCsMessageMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_cs_message_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertCsMessageMutation(
        insert_cs_message_one: insert_cs_message_one == _undefined
            ? _instance.insert_cs_message_one
            : (insert_cs_message_one as Fragment$cs_messageData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$cs_messageData<TRes> get insert_cs_message_one {
    final local$insert_cs_message_one = _instance.insert_cs_message_one;
    return local$insert_cs_message_one == null
        ? CopyWith$Fragment$cs_messageData.stub(_then(_instance))
        : CopyWith$Fragment$cs_messageData(
            local$insert_cs_message_one, (e) => call(insert_cs_message_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertCsMessageMutation<TRes>
    implements CopyWith$Mutation$InsertCsMessageMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertCsMessageMutation(this._res);

  TRes _res;

  call({
    Fragment$cs_messageData? insert_cs_message_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$cs_messageData<TRes> get insert_cs_message_one =>
      CopyWith$Fragment$cs_messageData.stub(_res);
}

const documentNodeMutationInsertCsMessageMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertCsMessageMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'cs_message_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_cs_message_one'),
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
            name: NameNode(value: 'cs_messageData'),
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
  fragmentDefinitioncs_messageData,
]);
Mutation$InsertCsMessageMutation _parserFn$Mutation$InsertCsMessageMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertCsMessageMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertCsMessageMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertCsMessageMutation?,
);

class Options$Mutation$InsertCsMessageMutation
    extends graphql.MutationOptions<Mutation$InsertCsMessageMutation> {
  Options$Mutation$InsertCsMessageMutation({
    String? operationName,
    required Variables$Mutation$InsertCsMessageMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertCsMessageMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertCsMessageMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertCsMessageMutation>? update,
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
                        : _parserFn$Mutation$InsertCsMessageMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertCsMessageMutation,
          parserFn: _parserFn$Mutation$InsertCsMessageMutation,
        );

  final OnMutationCompleted$Mutation$InsertCsMessageMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertCsMessageMutation
    extends graphql.WatchQueryOptions<Mutation$InsertCsMessageMutation> {
  WatchOptions$Mutation$InsertCsMessageMutation({
    String? operationName,
    required Variables$Mutation$InsertCsMessageMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertCsMessageMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertCsMessageMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertCsMessageMutation,
        );
}

extension ClientExtension$Mutation$InsertCsMessageMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertCsMessageMutation>>
      mutate$InsertCsMessageMutation(
              Options$Mutation$InsertCsMessageMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertCsMessageMutation>
      watchMutation$InsertCsMessageMutation(
              WatchOptions$Mutation$InsertCsMessageMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertCsMessageMutation$HookResult {
  Mutation$InsertCsMessageMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertCsMessageMutation runMutation;

  final graphql.QueryResult<Mutation$InsertCsMessageMutation> result;
}

Mutation$InsertCsMessageMutation$HookResult useMutation$InsertCsMessageMutation(
    [WidgetOptions$Mutation$InsertCsMessageMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InsertCsMessageMutation());
  return Mutation$InsertCsMessageMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertCsMessageMutation>
    useWatchMutation$InsertCsMessageMutation(
            WatchOptions$Mutation$InsertCsMessageMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertCsMessageMutation
    extends graphql.MutationOptions<Mutation$InsertCsMessageMutation> {
  WidgetOptions$Mutation$InsertCsMessageMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertCsMessageMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertCsMessageMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertCsMessageMutation>? update,
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
                        : _parserFn$Mutation$InsertCsMessageMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertCsMessageMutation,
          parserFn: _parserFn$Mutation$InsertCsMessageMutation,
        );

  final OnMutationCompleted$Mutation$InsertCsMessageMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertCsMessageMutation
    = graphql.MultiSourceResult<Mutation$InsertCsMessageMutation> Function(
  Variables$Mutation$InsertCsMessageMutation, {
  Object? optimisticResult,
  Mutation$InsertCsMessageMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertCsMessageMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertCsMessageMutation,
  graphql.QueryResult<Mutation$InsertCsMessageMutation>?,
);

class Mutation$InsertCsMessageMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertCsMessageMutation> {
  Mutation$InsertCsMessageMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertCsMessageMutation? options,
    required Builder$Mutation$InsertCsMessageMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertCsMessageMutation(),
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

class Variables$Mutation$UpdateCsMessageMutation {
  factory Variables$Mutation$UpdateCsMessageMutation({
    required Input$cs_message_set_input data,
    required int cs_message_id,
  }) =>
      Variables$Mutation$UpdateCsMessageMutation._({
        r'data': data,
        r'cs_message_id': cs_message_id,
      });

  Variables$Mutation$UpdateCsMessageMutation._(this._$data);

  factory Variables$Mutation$UpdateCsMessageMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$cs_message_set_input.fromJson((l$data as Map<String, dynamic>));
    final l$cs_message_id = data['cs_message_id'];
    result$data['cs_message_id'] = (l$cs_message_id as int);
    return Variables$Mutation$UpdateCsMessageMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$cs_message_set_input get data =>
      (_$data['data'] as Input$cs_message_set_input);
  int get cs_message_id => (_$data['cs_message_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$cs_message_id = cs_message_id;
    result$data['cs_message_id'] = l$cs_message_id;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateCsMessageMutation<
          Variables$Mutation$UpdateCsMessageMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateCsMessageMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateCsMessageMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$cs_message_id = cs_message_id;
    final lOther$cs_message_id = other.cs_message_id;
    if (l$cs_message_id != lOther$cs_message_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$cs_message_id = cs_message_id;
    return Object.hashAll([
      l$data,
      l$cs_message_id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateCsMessageMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateCsMessageMutation(
    Variables$Mutation$UpdateCsMessageMutation instance,
    TRes Function(Variables$Mutation$UpdateCsMessageMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateCsMessageMutation;

  factory CopyWith$Variables$Mutation$UpdateCsMessageMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateCsMessageMutation;

  TRes call({
    Input$cs_message_set_input? data,
    int? cs_message_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateCsMessageMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateCsMessageMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateCsMessageMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateCsMessageMutation _instance;

  final TRes Function(Variables$Mutation$UpdateCsMessageMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? cs_message_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateCsMessageMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$cs_message_set_input),
        if (cs_message_id != _undefined && cs_message_id != null)
          'cs_message_id': (cs_message_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateCsMessageMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateCsMessageMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateCsMessageMutation(this._res);

  TRes _res;

  call({
    Input$cs_message_set_input? data,
    int? cs_message_id,
  }) =>
      _res;
}

class Mutation$UpdateCsMessageMutation {
  Mutation$UpdateCsMessageMutation({
    this.update_cs_message,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateCsMessageMutation.fromJson(Map<String, dynamic> json) {
    final l$update_cs_message = json['update_cs_message'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCsMessageMutation(
      update_cs_message: l$update_cs_message == null
          ? null
          : Mutation$UpdateCsMessageMutation$update_cs_message.fromJson(
              (l$update_cs_message as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateCsMessageMutation$update_cs_message? update_cs_message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_cs_message = update_cs_message;
    _resultData['update_cs_message'] = l$update_cs_message?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_cs_message = update_cs_message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_cs_message,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateCsMessageMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_cs_message = update_cs_message;
    final lOther$update_cs_message = other.update_cs_message;
    if (l$update_cs_message != lOther$update_cs_message) {
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

extension UtilityExtension$Mutation$UpdateCsMessageMutation
    on Mutation$UpdateCsMessageMutation {
  CopyWith$Mutation$UpdateCsMessageMutation<Mutation$UpdateCsMessageMutation>
      get copyWith => CopyWith$Mutation$UpdateCsMessageMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateCsMessageMutation<TRes> {
  factory CopyWith$Mutation$UpdateCsMessageMutation(
    Mutation$UpdateCsMessageMutation instance,
    TRes Function(Mutation$UpdateCsMessageMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateCsMessageMutation;

  factory CopyWith$Mutation$UpdateCsMessageMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCsMessageMutation;

  TRes call({
    Mutation$UpdateCsMessageMutation$update_cs_message? update_cs_message,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message<TRes>
      get update_cs_message;
}

class _CopyWithImpl$Mutation$UpdateCsMessageMutation<TRes>
    implements CopyWith$Mutation$UpdateCsMessageMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateCsMessageMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCsMessageMutation _instance;

  final TRes Function(Mutation$UpdateCsMessageMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_cs_message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateCsMessageMutation(
        update_cs_message: update_cs_message == _undefined
            ? _instance.update_cs_message
            : (update_cs_message
                as Mutation$UpdateCsMessageMutation$update_cs_message?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message<TRes>
      get update_cs_message {
    final local$update_cs_message = _instance.update_cs_message;
    return local$update_cs_message == null
        ? CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message(
            local$update_cs_message, (e) => call(update_cs_message: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateCsMessageMutation<TRes>
    implements CopyWith$Mutation$UpdateCsMessageMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCsMessageMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateCsMessageMutation$update_cs_message? update_cs_message,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message<TRes>
      get update_cs_message =>
          CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message.stub(
              _res);
}

const documentNodeMutationUpdateCsMessageMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateCsMessageMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'cs_message_set_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cs_message_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_cs_message'),
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
                name: NameNode(value: 'cs_message_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'cs_message_id')),
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
                name: NameNode(value: 'cs_messageData'),
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
  fragmentDefinitioncs_messageData,
]);
Mutation$UpdateCsMessageMutation _parserFn$Mutation$UpdateCsMessageMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateCsMessageMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateCsMessageMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateCsMessageMutation?,
);

class Options$Mutation$UpdateCsMessageMutation
    extends graphql.MutationOptions<Mutation$UpdateCsMessageMutation> {
  Options$Mutation$UpdateCsMessageMutation({
    String? operationName,
    required Variables$Mutation$UpdateCsMessageMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCsMessageMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateCsMessageMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateCsMessageMutation>? update,
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
                        : _parserFn$Mutation$UpdateCsMessageMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateCsMessageMutation,
          parserFn: _parserFn$Mutation$UpdateCsMessageMutation,
        );

  final OnMutationCompleted$Mutation$UpdateCsMessageMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateCsMessageMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateCsMessageMutation> {
  WatchOptions$Mutation$UpdateCsMessageMutation({
    String? operationName,
    required Variables$Mutation$UpdateCsMessageMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCsMessageMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateCsMessageMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateCsMessageMutation,
        );
}

extension ClientExtension$Mutation$UpdateCsMessageMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateCsMessageMutation>>
      mutate$UpdateCsMessageMutation(
              Options$Mutation$UpdateCsMessageMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateCsMessageMutation>
      watchMutation$UpdateCsMessageMutation(
              WatchOptions$Mutation$UpdateCsMessageMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateCsMessageMutation$HookResult {
  Mutation$UpdateCsMessageMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateCsMessageMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateCsMessageMutation> result;
}

Mutation$UpdateCsMessageMutation$HookResult useMutation$UpdateCsMessageMutation(
    [WidgetOptions$Mutation$UpdateCsMessageMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateCsMessageMutation());
  return Mutation$UpdateCsMessageMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateCsMessageMutation>
    useWatchMutation$UpdateCsMessageMutation(
            WatchOptions$Mutation$UpdateCsMessageMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateCsMessageMutation
    extends graphql.MutationOptions<Mutation$UpdateCsMessageMutation> {
  WidgetOptions$Mutation$UpdateCsMessageMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateCsMessageMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateCsMessageMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateCsMessageMutation>? update,
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
                        : _parserFn$Mutation$UpdateCsMessageMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateCsMessageMutation,
          parserFn: _parserFn$Mutation$UpdateCsMessageMutation,
        );

  final OnMutationCompleted$Mutation$UpdateCsMessageMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateCsMessageMutation
    = graphql.MultiSourceResult<Mutation$UpdateCsMessageMutation> Function(
  Variables$Mutation$UpdateCsMessageMutation, {
  Object? optimisticResult,
  Mutation$UpdateCsMessageMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateCsMessageMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateCsMessageMutation,
  graphql.QueryResult<Mutation$UpdateCsMessageMutation>?,
);

class Mutation$UpdateCsMessageMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateCsMessageMutation> {
  Mutation$UpdateCsMessageMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateCsMessageMutation? options,
    required Builder$Mutation$UpdateCsMessageMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateCsMessageMutation(),
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

class Mutation$UpdateCsMessageMutation$update_cs_message {
  Mutation$UpdateCsMessageMutation$update_cs_message({
    required this.returning,
    this.$__typename = 'cs_message_mutation_response',
  });

  factory Mutation$UpdateCsMessageMutation$update_cs_message.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateCsMessageMutation$update_cs_message(
      returning: (l$returning as List<dynamic>)
          .map((e) =>
              Fragment$cs_messageData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$cs_messageData> returning;

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
    if (!(other is Mutation$UpdateCsMessageMutation$update_cs_message) ||
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

extension UtilityExtension$Mutation$UpdateCsMessageMutation$update_cs_message
    on Mutation$UpdateCsMessageMutation$update_cs_message {
  CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message<
          Mutation$UpdateCsMessageMutation$update_cs_message>
      get copyWith =>
          CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message<
    TRes> {
  factory CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message(
    Mutation$UpdateCsMessageMutation$update_cs_message instance,
    TRes Function(Mutation$UpdateCsMessageMutation$update_cs_message) then,
  ) = _CopyWithImpl$Mutation$UpdateCsMessageMutation$update_cs_message;

  factory CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateCsMessageMutation$update_cs_message;

  TRes call({
    List<Fragment$cs_messageData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$cs_messageData> Function(
              Iterable<
                  CopyWith$Fragment$cs_messageData<Fragment$cs_messageData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateCsMessageMutation$update_cs_message<TRes>
    implements
        CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message<TRes> {
  _CopyWithImpl$Mutation$UpdateCsMessageMutation$update_cs_message(
    this._instance,
    this._then,
  );

  final Mutation$UpdateCsMessageMutation$update_cs_message _instance;

  final TRes Function(Mutation$UpdateCsMessageMutation$update_cs_message) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateCsMessageMutation$update_cs_message(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$cs_messageData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$cs_messageData> Function(
                  Iterable<
                      CopyWith$Fragment$cs_messageData<
                          Fragment$cs_messageData>>)
              _fn) =>
      call(
          returning: _fn(
              _instance.returning.map((e) => CopyWith$Fragment$cs_messageData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateCsMessageMutation$update_cs_message<TRes>
    implements
        CopyWith$Mutation$UpdateCsMessageMutation$update_cs_message<TRes> {
  _CopyWithStubImpl$Mutation$UpdateCsMessageMutation$update_cs_message(
      this._res);

  TRes _res;

  call({
    List<Fragment$cs_messageData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetByPkCsMessageQuery {
  factory Variables$Query$GetByPkCsMessageQuery({required int cs_message_id}) =>
      Variables$Query$GetByPkCsMessageQuery._({
        r'cs_message_id': cs_message_id,
      });

  Variables$Query$GetByPkCsMessageQuery._(this._$data);

  factory Variables$Query$GetByPkCsMessageQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cs_message_id = data['cs_message_id'];
    result$data['cs_message_id'] = (l$cs_message_id as int);
    return Variables$Query$GetByPkCsMessageQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int get cs_message_id => (_$data['cs_message_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cs_message_id = cs_message_id;
    result$data['cs_message_id'] = l$cs_message_id;
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkCsMessageQuery<
          Variables$Query$GetByPkCsMessageQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkCsMessageQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkCsMessageQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cs_message_id = cs_message_id;
    final lOther$cs_message_id = other.cs_message_id;
    if (l$cs_message_id != lOther$cs_message_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$cs_message_id = cs_message_id;
    return Object.hashAll([l$cs_message_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkCsMessageQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkCsMessageQuery(
    Variables$Query$GetByPkCsMessageQuery instance,
    TRes Function(Variables$Query$GetByPkCsMessageQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkCsMessageQuery;

  factory CopyWith$Variables$Query$GetByPkCsMessageQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkCsMessageQuery;

  TRes call({int? cs_message_id});
}

class _CopyWithImpl$Variables$Query$GetByPkCsMessageQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkCsMessageQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkCsMessageQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkCsMessageQuery _instance;

  final TRes Function(Variables$Query$GetByPkCsMessageQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? cs_message_id = _undefined}) =>
      _then(Variables$Query$GetByPkCsMessageQuery._({
        ..._instance._$data,
        if (cs_message_id != _undefined && cs_message_id != null)
          'cs_message_id': (cs_message_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkCsMessageQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkCsMessageQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkCsMessageQuery(this._res);

  TRes _res;

  call({int? cs_message_id}) => _res;
}

class Query$GetByPkCsMessageQuery {
  Query$GetByPkCsMessageQuery({
    this.cs_message_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkCsMessageQuery.fromJson(Map<String, dynamic> json) {
    final l$cs_message_by_pk = json['cs_message_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkCsMessageQuery(
      cs_message_by_pk: l$cs_message_by_pk == null
          ? null
          : Fragment$cs_messageData.fromJson(
              (l$cs_message_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$cs_messageData? cs_message_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cs_message_by_pk = cs_message_by_pk;
    _resultData['cs_message_by_pk'] = l$cs_message_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cs_message_by_pk = cs_message_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cs_message_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkCsMessageQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cs_message_by_pk = cs_message_by_pk;
    final lOther$cs_message_by_pk = other.cs_message_by_pk;
    if (l$cs_message_by_pk != lOther$cs_message_by_pk) {
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

extension UtilityExtension$Query$GetByPkCsMessageQuery
    on Query$GetByPkCsMessageQuery {
  CopyWith$Query$GetByPkCsMessageQuery<Query$GetByPkCsMessageQuery>
      get copyWith => CopyWith$Query$GetByPkCsMessageQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkCsMessageQuery<TRes> {
  factory CopyWith$Query$GetByPkCsMessageQuery(
    Query$GetByPkCsMessageQuery instance,
    TRes Function(Query$GetByPkCsMessageQuery) then,
  ) = _CopyWithImpl$Query$GetByPkCsMessageQuery;

  factory CopyWith$Query$GetByPkCsMessageQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkCsMessageQuery;

  TRes call({
    Fragment$cs_messageData? cs_message_by_pk,
    String? $__typename,
  });
  CopyWith$Fragment$cs_messageData<TRes> get cs_message_by_pk;
}

class _CopyWithImpl$Query$GetByPkCsMessageQuery<TRes>
    implements CopyWith$Query$GetByPkCsMessageQuery<TRes> {
  _CopyWithImpl$Query$GetByPkCsMessageQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkCsMessageQuery _instance;

  final TRes Function(Query$GetByPkCsMessageQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cs_message_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkCsMessageQuery(
        cs_message_by_pk: cs_message_by_pk == _undefined
            ? _instance.cs_message_by_pk
            : (cs_message_by_pk as Fragment$cs_messageData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$cs_messageData<TRes> get cs_message_by_pk {
    final local$cs_message_by_pk = _instance.cs_message_by_pk;
    return local$cs_message_by_pk == null
        ? CopyWith$Fragment$cs_messageData.stub(_then(_instance))
        : CopyWith$Fragment$cs_messageData(
            local$cs_message_by_pk, (e) => call(cs_message_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkCsMessageQuery<TRes>
    implements CopyWith$Query$GetByPkCsMessageQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkCsMessageQuery(this._res);

  TRes _res;

  call({
    Fragment$cs_messageData? cs_message_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$cs_messageData<TRes> get cs_message_by_pk =>
      CopyWith$Fragment$cs_messageData.stub(_res);
}

const documentNodeQueryGetByPkCsMessageQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkCsMessageQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cs_message_id')),
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
        name: NameNode(value: 'cs_message_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'cs_message_id'),
            value: VariableNode(name: NameNode(value: 'cs_message_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'cs_messageData'),
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
  fragmentDefinitioncs_messageData,
]);
Query$GetByPkCsMessageQuery _parserFn$Query$GetByPkCsMessageQuery(
        Map<String, dynamic> data) =>
    Query$GetByPkCsMessageQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkCsMessageQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetByPkCsMessageQuery?,
);

class Options$Query$GetByPkCsMessageQuery
    extends graphql.QueryOptions<Query$GetByPkCsMessageQuery> {
  Options$Query$GetByPkCsMessageQuery({
    String? operationName,
    required Variables$Query$GetByPkCsMessageQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkCsMessageQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkCsMessageQuery? onComplete,
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
                        : _parserFn$Query$GetByPkCsMessageQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkCsMessageQuery,
          parserFn: _parserFn$Query$GetByPkCsMessageQuery,
        );

  final OnQueryComplete$Query$GetByPkCsMessageQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkCsMessageQuery
    extends graphql.WatchQueryOptions<Query$GetByPkCsMessageQuery> {
  WatchOptions$Query$GetByPkCsMessageQuery({
    String? operationName,
    required Variables$Query$GetByPkCsMessageQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkCsMessageQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkCsMessageQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkCsMessageQuery,
        );
}

class FetchMoreOptions$Query$GetByPkCsMessageQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkCsMessageQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkCsMessageQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkCsMessageQuery,
        );
}

extension ClientExtension$Query$GetByPkCsMessageQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkCsMessageQuery>>
      query$GetByPkCsMessageQuery(
              Options$Query$GetByPkCsMessageQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetByPkCsMessageQuery>
      watchQuery$GetByPkCsMessageQuery(
              WatchOptions$Query$GetByPkCsMessageQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetByPkCsMessageQuery({
    required Query$GetByPkCsMessageQuery data,
    required Variables$Query$GetByPkCsMessageQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetByPkCsMessageQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkCsMessageQuery? readQuery$GetByPkCsMessageQuery({
    required Variables$Query$GetByPkCsMessageQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetByPkCsMessageQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetByPkCsMessageQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkCsMessageQuery>
    useQuery$GetByPkCsMessageQuery(
            Options$Query$GetByPkCsMessageQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkCsMessageQuery>
    useWatchQuery$GetByPkCsMessageQuery(
            WatchOptions$Query$GetByPkCsMessageQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetByPkCsMessageQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkCsMessageQuery> {
  Query$GetByPkCsMessageQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkCsMessageQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkCsMessageQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetAllCsMessageQuery {
  factory Variables$Query$GetAllCsMessageQuery({
    Input$cs_message_bool_exp? where,
    int? limit,
    List<Enum$cs_message_select_column>? distinct_on,
    int? offset,
    List<Input$cs_message_order_by>? order_by,
  }) =>
      Variables$Query$GetAllCsMessageQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllCsMessageQuery._(this._$data);

  factory Variables$Query$GetAllCsMessageQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$cs_message_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$cs_message_select_column((e as String)))
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
              Input$cs_message_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllCsMessageQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$cs_message_bool_exp? get where =>
      (_$data['where'] as Input$cs_message_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$cs_message_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$cs_message_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$cs_message_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$cs_message_order_by>?);
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
          ?.map((e) => toJson$Enum$cs_message_select_column(e))
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

  CopyWith$Variables$Query$GetAllCsMessageQuery<
          Variables$Query$GetAllCsMessageQuery>
      get copyWith => CopyWith$Variables$Query$GetAllCsMessageQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllCsMessageQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllCsMessageQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllCsMessageQuery(
    Variables$Query$GetAllCsMessageQuery instance,
    TRes Function(Variables$Query$GetAllCsMessageQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllCsMessageQuery;

  factory CopyWith$Variables$Query$GetAllCsMessageQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllCsMessageQuery;

  TRes call({
    Input$cs_message_bool_exp? where,
    int? limit,
    List<Enum$cs_message_select_column>? distinct_on,
    int? offset,
    List<Input$cs_message_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllCsMessageQuery<TRes>
    implements CopyWith$Variables$Query$GetAllCsMessageQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllCsMessageQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllCsMessageQuery _instance;

  final TRes Function(Variables$Query$GetAllCsMessageQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllCsMessageQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$cs_message_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$cs_message_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$cs_message_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllCsMessageQuery<TRes>
    implements CopyWith$Variables$Query$GetAllCsMessageQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllCsMessageQuery(this._res);

  TRes _res;

  call({
    Input$cs_message_bool_exp? where,
    int? limit,
    List<Enum$cs_message_select_column>? distinct_on,
    int? offset,
    List<Input$cs_message_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllCsMessageQuery {
  Query$GetAllCsMessageQuery({
    required this.cs_message,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllCsMessageQuery.fromJson(Map<String, dynamic> json) {
    final l$cs_message = json['cs_message'];
    final l$$__typename = json['__typename'];
    return Query$GetAllCsMessageQuery(
      cs_message: (l$cs_message as List<dynamic>)
          .map((e) => Query$GetAllCsMessageQuery$cs_message.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllCsMessageQuery$cs_message> cs_message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cs_message = cs_message;
    _resultData['cs_message'] = l$cs_message.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cs_message = cs_message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$cs_message.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCsMessageQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cs_message = cs_message;
    final lOther$cs_message = other.cs_message;
    if (l$cs_message.length != lOther$cs_message.length) {
      return false;
    }
    for (int i = 0; i < l$cs_message.length; i++) {
      final l$cs_message$entry = l$cs_message[i];
      final lOther$cs_message$entry = lOther$cs_message[i];
      if (l$cs_message$entry != lOther$cs_message$entry) {
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

extension UtilityExtension$Query$GetAllCsMessageQuery
    on Query$GetAllCsMessageQuery {
  CopyWith$Query$GetAllCsMessageQuery<Query$GetAllCsMessageQuery>
      get copyWith => CopyWith$Query$GetAllCsMessageQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllCsMessageQuery<TRes> {
  factory CopyWith$Query$GetAllCsMessageQuery(
    Query$GetAllCsMessageQuery instance,
    TRes Function(Query$GetAllCsMessageQuery) then,
  ) = _CopyWithImpl$Query$GetAllCsMessageQuery;

  factory CopyWith$Query$GetAllCsMessageQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCsMessageQuery;

  TRes call({
    List<Query$GetAllCsMessageQuery$cs_message>? cs_message,
    String? $__typename,
  });
  TRes cs_message(
      Iterable<Query$GetAllCsMessageQuery$cs_message> Function(
              Iterable<
                  CopyWith$Query$GetAllCsMessageQuery$cs_message<
                      Query$GetAllCsMessageQuery$cs_message>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllCsMessageQuery<TRes>
    implements CopyWith$Query$GetAllCsMessageQuery<TRes> {
  _CopyWithImpl$Query$GetAllCsMessageQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllCsMessageQuery _instance;

  final TRes Function(Query$GetAllCsMessageQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cs_message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllCsMessageQuery(
        cs_message: cs_message == _undefined || cs_message == null
            ? _instance.cs_message
            : (cs_message as List<Query$GetAllCsMessageQuery$cs_message>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes cs_message(
          Iterable<Query$GetAllCsMessageQuery$cs_message> Function(
                  Iterable<
                      CopyWith$Query$GetAllCsMessageQuery$cs_message<
                          Query$GetAllCsMessageQuery$cs_message>>)
              _fn) =>
      call(
          cs_message: _fn(_instance.cs_message
              .map((e) => CopyWith$Query$GetAllCsMessageQuery$cs_message(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllCsMessageQuery<TRes>
    implements CopyWith$Query$GetAllCsMessageQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllCsMessageQuery(this._res);

  TRes _res;

  call({
    List<Query$GetAllCsMessageQuery$cs_message>? cs_message,
    String? $__typename,
  }) =>
      _res;
  cs_message(_fn) => _res;
}

const documentNodeQueryGetAllCsMessageQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllCsMessageQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'cs_message_bool_exp'),
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
            name: NameNode(value: 'cs_message_select_column'),
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
            name: NameNode(value: 'cs_message_order_by'),
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
        name: NameNode(value: 'cs_message'),
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
            name: NameNode(value: 'cs_messageData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'userData'),
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
  fragmentDefinitioncs_messageData,
  fragmentDefinitionuserData,
]);
Query$GetAllCsMessageQuery _parserFn$Query$GetAllCsMessageQuery(
        Map<String, dynamic> data) =>
    Query$GetAllCsMessageQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllCsMessageQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllCsMessageQuery?,
);

class Options$Query$GetAllCsMessageQuery
    extends graphql.QueryOptions<Query$GetAllCsMessageQuery> {
  Options$Query$GetAllCsMessageQuery({
    String? operationName,
    Variables$Query$GetAllCsMessageQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllCsMessageQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllCsMessageQuery? onComplete,
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
                        : _parserFn$Query$GetAllCsMessageQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllCsMessageQuery,
          parserFn: _parserFn$Query$GetAllCsMessageQuery,
        );

  final OnQueryComplete$Query$GetAllCsMessageQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllCsMessageQuery
    extends graphql.WatchQueryOptions<Query$GetAllCsMessageQuery> {
  WatchOptions$Query$GetAllCsMessageQuery({
    String? operationName,
    Variables$Query$GetAllCsMessageQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllCsMessageQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllCsMessageQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllCsMessageQuery,
        );
}

class FetchMoreOptions$Query$GetAllCsMessageQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllCsMessageQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllCsMessageQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllCsMessageQuery,
        );
}

extension ClientExtension$Query$GetAllCsMessageQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllCsMessageQuery>>
      query$GetAllCsMessageQuery(
              [Options$Query$GetAllCsMessageQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllCsMessageQuery());
  graphql.ObservableQuery<Query$GetAllCsMessageQuery>
      watchQuery$GetAllCsMessageQuery(
              [WatchOptions$Query$GetAllCsMessageQuery? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetAllCsMessageQuery());
  void writeQuery$GetAllCsMessageQuery({
    required Query$GetAllCsMessageQuery data,
    Variables$Query$GetAllCsMessageQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllCsMessageQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllCsMessageQuery? readQuery$GetAllCsMessageQuery({
    Variables$Query$GetAllCsMessageQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllCsMessageQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllCsMessageQuery.fromJson(result);
  }
}

graphql_flutter
    .QueryHookResult<Query$GetAllCsMessageQuery> useQuery$GetAllCsMessageQuery(
        [Options$Query$GetAllCsMessageQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllCsMessageQuery());
graphql.ObservableQuery<Query$GetAllCsMessageQuery>
    useWatchQuery$GetAllCsMessageQuery(
            [WatchOptions$Query$GetAllCsMessageQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllCsMessageQuery());

class Query$GetAllCsMessageQuery$Widget
    extends graphql_flutter.Query<Query$GetAllCsMessageQuery> {
  Query$GetAllCsMessageQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllCsMessageQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllCsMessageQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllCsMessageQuery(),
          builder: builder,
        );
}

class Query$GetAllCsMessageQuery$cs_message implements Fragment$cs_messageData {
  Query$GetAllCsMessageQuery$cs_message({
    required this.cs_message_id,
    this.cs_agent_user_id,
    required this.cs_message_content,
    required this.cs_message_date,
    this.updated_at,
    this.created_at,
    required this.user_id,
    this.$__typename = 'cs_message',
    required this.user,
  });

  factory Query$GetAllCsMessageQuery$cs_message.fromJson(
      Map<String, dynamic> json) {
    final l$cs_message_id = json['cs_message_id'];
    final l$cs_agent_user_id = json['cs_agent_user_id'];
    final l$cs_message_content = json['cs_message_content'];
    final l$cs_message_date = json['cs_message_date'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$user_id = json['user_id'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$GetAllCsMessageQuery$cs_message(
      cs_message_id: (l$cs_message_id as int),
      cs_agent_user_id:
          l$cs_agent_user_id == null ? null : uuidFromJson(l$cs_agent_user_id),
      cs_message_content: (l$cs_message_content as String),
      cs_message_date: DateTime.parse((l$cs_message_date as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      user_id: uuidFromJson(l$user_id),
      $__typename: (l$$__typename as String),
      user: Fragment$userData.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final int cs_message_id;

  final UUID? cs_agent_user_id;

  final String cs_message_content;

  final DateTime cs_message_date;

  final DateTime? updated_at;

  final DateTime? created_at;

  final UUID user_id;

  final String $__typename;

  final Fragment$userData user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cs_message_id = cs_message_id;
    _resultData['cs_message_id'] = l$cs_message_id;
    final l$cs_agent_user_id = cs_agent_user_id;
    _resultData['cs_agent_user_id'] =
        l$cs_agent_user_id == null ? null : uuidToJson(l$cs_agent_user_id);
    final l$cs_message_content = cs_message_content;
    _resultData['cs_message_content'] = l$cs_message_content;
    final l$cs_message_date = cs_message_date;
    _resultData['cs_message_date'] = l$cs_message_date.toIso8601String();
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cs_message_id = cs_message_id;
    final l$cs_agent_user_id = cs_agent_user_id;
    final l$cs_message_content = cs_message_content;
    final l$cs_message_date = cs_message_date;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$user_id = user_id;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$cs_message_id,
      l$cs_agent_user_id,
      l$cs_message_content,
      l$cs_message_date,
      l$updated_at,
      l$created_at,
      l$user_id,
      l$$__typename,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCsMessageQuery$cs_message) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cs_message_id = cs_message_id;
    final lOther$cs_message_id = other.cs_message_id;
    if (l$cs_message_id != lOther$cs_message_id) {
      return false;
    }
    final l$cs_agent_user_id = cs_agent_user_id;
    final lOther$cs_agent_user_id = other.cs_agent_user_id;
    if (l$cs_agent_user_id != lOther$cs_agent_user_id) {
      return false;
    }
    final l$cs_message_content = cs_message_content;
    final lOther$cs_message_content = other.cs_message_content;
    if (l$cs_message_content != lOther$cs_message_content) {
      return false;
    }
    final l$cs_message_date = cs_message_date;
    final lOther$cs_message_date = other.cs_message_date;
    if (l$cs_message_date != lOther$cs_message_date) {
      return false;
    }
    final l$updated_at = updated_at;
    final lOther$updated_at = other.updated_at;
    if (l$updated_at != lOther$updated_at) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
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

extension UtilityExtension$Query$GetAllCsMessageQuery$cs_message
    on Query$GetAllCsMessageQuery$cs_message {
  CopyWith$Query$GetAllCsMessageQuery$cs_message<
          Query$GetAllCsMessageQuery$cs_message>
      get copyWith => CopyWith$Query$GetAllCsMessageQuery$cs_message(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllCsMessageQuery$cs_message<TRes> {
  factory CopyWith$Query$GetAllCsMessageQuery$cs_message(
    Query$GetAllCsMessageQuery$cs_message instance,
    TRes Function(Query$GetAllCsMessageQuery$cs_message) then,
  ) = _CopyWithImpl$Query$GetAllCsMessageQuery$cs_message;

  factory CopyWith$Query$GetAllCsMessageQuery$cs_message.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCsMessageQuery$cs_message;

  TRes call({
    int? cs_message_id,
    UUID? cs_agent_user_id,
    String? cs_message_content,
    DateTime? cs_message_date,
    DateTime? updated_at,
    DateTime? created_at,
    UUID? user_id,
    String? $__typename,
    Fragment$userData? user,
  });
  CopyWith$Fragment$userData<TRes> get user;
}

class _CopyWithImpl$Query$GetAllCsMessageQuery$cs_message<TRes>
    implements CopyWith$Query$GetAllCsMessageQuery$cs_message<TRes> {
  _CopyWithImpl$Query$GetAllCsMessageQuery$cs_message(
    this._instance,
    this._then,
  );

  final Query$GetAllCsMessageQuery$cs_message _instance;

  final TRes Function(Query$GetAllCsMessageQuery$cs_message) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cs_message_id = _undefined,
    Object? cs_agent_user_id = _undefined,
    Object? cs_message_content = _undefined,
    Object? cs_message_date = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? user_id = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$GetAllCsMessageQuery$cs_message(
        cs_message_id: cs_message_id == _undefined || cs_message_id == null
            ? _instance.cs_message_id
            : (cs_message_id as int),
        cs_agent_user_id: cs_agent_user_id == _undefined
            ? _instance.cs_agent_user_id
            : (cs_agent_user_id as UUID?),
        cs_message_content:
            cs_message_content == _undefined || cs_message_content == null
                ? _instance.cs_message_content
                : (cs_message_content as String),
        cs_message_date:
            cs_message_date == _undefined || cs_message_date == null
                ? _instance.cs_message_date
                : (cs_message_date as DateTime),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$userData),
      ));
  CopyWith$Fragment$userData<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$userData(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetAllCsMessageQuery$cs_message<TRes>
    implements CopyWith$Query$GetAllCsMessageQuery$cs_message<TRes> {
  _CopyWithStubImpl$Query$GetAllCsMessageQuery$cs_message(this._res);

  TRes _res;

  call({
    int? cs_message_id,
    UUID? cs_agent_user_id,
    String? cs_message_content,
    DateTime? cs_message_date,
    DateTime? updated_at,
    DateTime? created_at,
    UUID? user_id,
    String? $__typename,
    Fragment$userData? user,
  }) =>
      _res;
  CopyWith$Fragment$userData<TRes> get user =>
      CopyWith$Fragment$userData.stub(_res);
}

class Variables$Query$GetAllCsMessageUserQuery {
  factory Variables$Query$GetAllCsMessageUserQuery({
    required UUID user_id,
    int? limit,
    List<Enum$cs_message_select_column>? distinct_on,
    int? offset,
    List<Input$cs_message_order_by>? order_by,
  }) =>
      Variables$Query$GetAllCsMessageUserQuery._({
        r'user_id': user_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllCsMessageUserQuery._(this._$data);

  factory Variables$Query$GetAllCsMessageUserQuery.fromJson(
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
          ?.map((e) => fromJson$Enum$cs_message_select_column((e as String)))
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
              Input$cs_message_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllCsMessageUserQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get user_id => (_$data['user_id'] as UUID);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$cs_message_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$cs_message_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$cs_message_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$cs_message_order_by>?);
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
          ?.map((e) => toJson$Enum$cs_message_select_column(e))
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

  CopyWith$Variables$Query$GetAllCsMessageUserQuery<
          Variables$Query$GetAllCsMessageUserQuery>
      get copyWith => CopyWith$Variables$Query$GetAllCsMessageUserQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllCsMessageUserQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllCsMessageUserQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllCsMessageUserQuery(
    Variables$Query$GetAllCsMessageUserQuery instance,
    TRes Function(Variables$Query$GetAllCsMessageUserQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllCsMessageUserQuery;

  factory CopyWith$Variables$Query$GetAllCsMessageUserQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllCsMessageUserQuery;

  TRes call({
    UUID? user_id,
    int? limit,
    List<Enum$cs_message_select_column>? distinct_on,
    int? offset,
    List<Input$cs_message_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllCsMessageUserQuery<TRes>
    implements CopyWith$Variables$Query$GetAllCsMessageUserQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllCsMessageUserQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllCsMessageUserQuery _instance;

  final TRes Function(Variables$Query$GetAllCsMessageUserQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllCsMessageUserQuery._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$cs_message_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$cs_message_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllCsMessageUserQuery<TRes>
    implements CopyWith$Variables$Query$GetAllCsMessageUserQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllCsMessageUserQuery(this._res);

  TRes _res;

  call({
    UUID? user_id,
    int? limit,
    List<Enum$cs_message_select_column>? distinct_on,
    int? offset,
    List<Input$cs_message_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllCsMessageUserQuery {
  Query$GetAllCsMessageUserQuery({
    required this.cs_message,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllCsMessageUserQuery.fromJson(Map<String, dynamic> json) {
    final l$cs_message = json['cs_message'];
    final l$$__typename = json['__typename'];
    return Query$GetAllCsMessageUserQuery(
      cs_message: (l$cs_message as List<dynamic>)
          .map((e) => Query$GetAllCsMessageUserQuery$cs_message.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllCsMessageUserQuery$cs_message> cs_message;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cs_message = cs_message;
    _resultData['cs_message'] = l$cs_message.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cs_message = cs_message;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$cs_message.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCsMessageUserQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cs_message = cs_message;
    final lOther$cs_message = other.cs_message;
    if (l$cs_message.length != lOther$cs_message.length) {
      return false;
    }
    for (int i = 0; i < l$cs_message.length; i++) {
      final l$cs_message$entry = l$cs_message[i];
      final lOther$cs_message$entry = lOther$cs_message[i];
      if (l$cs_message$entry != lOther$cs_message$entry) {
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

extension UtilityExtension$Query$GetAllCsMessageUserQuery
    on Query$GetAllCsMessageUserQuery {
  CopyWith$Query$GetAllCsMessageUserQuery<Query$GetAllCsMessageUserQuery>
      get copyWith => CopyWith$Query$GetAllCsMessageUserQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllCsMessageUserQuery<TRes> {
  factory CopyWith$Query$GetAllCsMessageUserQuery(
    Query$GetAllCsMessageUserQuery instance,
    TRes Function(Query$GetAllCsMessageUserQuery) then,
  ) = _CopyWithImpl$Query$GetAllCsMessageUserQuery;

  factory CopyWith$Query$GetAllCsMessageUserQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCsMessageUserQuery;

  TRes call({
    List<Query$GetAllCsMessageUserQuery$cs_message>? cs_message,
    String? $__typename,
  });
  TRes cs_message(
      Iterable<Query$GetAllCsMessageUserQuery$cs_message> Function(
              Iterable<
                  CopyWith$Query$GetAllCsMessageUserQuery$cs_message<
                      Query$GetAllCsMessageUserQuery$cs_message>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllCsMessageUserQuery<TRes>
    implements CopyWith$Query$GetAllCsMessageUserQuery<TRes> {
  _CopyWithImpl$Query$GetAllCsMessageUserQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllCsMessageUserQuery _instance;

  final TRes Function(Query$GetAllCsMessageUserQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cs_message = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllCsMessageUserQuery(
        cs_message: cs_message == _undefined || cs_message == null
            ? _instance.cs_message
            : (cs_message as List<Query$GetAllCsMessageUserQuery$cs_message>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes cs_message(
          Iterable<Query$GetAllCsMessageUserQuery$cs_message> Function(
                  Iterable<
                      CopyWith$Query$GetAllCsMessageUserQuery$cs_message<
                          Query$GetAllCsMessageUserQuery$cs_message>>)
              _fn) =>
      call(
          cs_message: _fn(_instance.cs_message
              .map((e) => CopyWith$Query$GetAllCsMessageUserQuery$cs_message(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllCsMessageUserQuery<TRes>
    implements CopyWith$Query$GetAllCsMessageUserQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllCsMessageUserQuery(this._res);

  TRes _res;

  call({
    List<Query$GetAllCsMessageUserQuery$cs_message>? cs_message,
    String? $__typename,
  }) =>
      _res;
  cs_message(_fn) => _res;
}

const documentNodeQueryGetAllCsMessageUserQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllCsMessageUserQuery'),
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
            name: NameNode(value: 'cs_message_select_column'),
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
            name: NameNode(value: 'cs_message_order_by'),
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
        name: NameNode(value: 'cs_message'),
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
            name: NameNode(value: 'cs_messageData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'user'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'userData'),
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
  fragmentDefinitioncs_messageData,
  fragmentDefinitionuserData,
]);
Query$GetAllCsMessageUserQuery _parserFn$Query$GetAllCsMessageUserQuery(
        Map<String, dynamic> data) =>
    Query$GetAllCsMessageUserQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllCsMessageUserQuery = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetAllCsMessageUserQuery?,
);

class Options$Query$GetAllCsMessageUserQuery
    extends graphql.QueryOptions<Query$GetAllCsMessageUserQuery> {
  Options$Query$GetAllCsMessageUserQuery({
    String? operationName,
    required Variables$Query$GetAllCsMessageUserQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllCsMessageUserQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllCsMessageUserQuery? onComplete,
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
                        : _parserFn$Query$GetAllCsMessageUserQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllCsMessageUserQuery,
          parserFn: _parserFn$Query$GetAllCsMessageUserQuery,
        );

  final OnQueryComplete$Query$GetAllCsMessageUserQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllCsMessageUserQuery
    extends graphql.WatchQueryOptions<Query$GetAllCsMessageUserQuery> {
  WatchOptions$Query$GetAllCsMessageUserQuery({
    String? operationName,
    required Variables$Query$GetAllCsMessageUserQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllCsMessageUserQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllCsMessageUserQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllCsMessageUserQuery,
        );
}

class FetchMoreOptions$Query$GetAllCsMessageUserQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllCsMessageUserQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetAllCsMessageUserQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetAllCsMessageUserQuery,
        );
}

extension ClientExtension$Query$GetAllCsMessageUserQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllCsMessageUserQuery>>
      query$GetAllCsMessageUserQuery(
              Options$Query$GetAllCsMessageUserQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetAllCsMessageUserQuery>
      watchQuery$GetAllCsMessageUserQuery(
              WatchOptions$Query$GetAllCsMessageUserQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetAllCsMessageUserQuery({
    required Query$GetAllCsMessageUserQuery data,
    required Variables$Query$GetAllCsMessageUserQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllCsMessageUserQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllCsMessageUserQuery? readQuery$GetAllCsMessageUserQuery({
    required Variables$Query$GetAllCsMessageUserQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllCsMessageUserQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllCsMessageUserQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllCsMessageUserQuery>
    useQuery$GetAllCsMessageUserQuery(
            Options$Query$GetAllCsMessageUserQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetAllCsMessageUserQuery>
    useWatchQuery$GetAllCsMessageUserQuery(
            WatchOptions$Query$GetAllCsMessageUserQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetAllCsMessageUserQuery$Widget
    extends graphql_flutter.Query<Query$GetAllCsMessageUserQuery> {
  Query$GetAllCsMessageUserQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetAllCsMessageUserQuery options,
    required graphql_flutter.QueryBuilder<Query$GetAllCsMessageUserQuery>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetAllCsMessageUserQuery$cs_message
    implements Fragment$cs_messageData {
  Query$GetAllCsMessageUserQuery$cs_message({
    required this.cs_message_id,
    this.cs_agent_user_id,
    required this.cs_message_content,
    required this.cs_message_date,
    this.updated_at,
    this.created_at,
    required this.user_id,
    this.$__typename = 'cs_message',
    required this.user,
  });

  factory Query$GetAllCsMessageUserQuery$cs_message.fromJson(
      Map<String, dynamic> json) {
    final l$cs_message_id = json['cs_message_id'];
    final l$cs_agent_user_id = json['cs_agent_user_id'];
    final l$cs_message_content = json['cs_message_content'];
    final l$cs_message_date = json['cs_message_date'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$user_id = json['user_id'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$GetAllCsMessageUserQuery$cs_message(
      cs_message_id: (l$cs_message_id as int),
      cs_agent_user_id:
          l$cs_agent_user_id == null ? null : uuidFromJson(l$cs_agent_user_id),
      cs_message_content: (l$cs_message_content as String),
      cs_message_date: DateTime.parse((l$cs_message_date as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      user_id: uuidFromJson(l$user_id),
      $__typename: (l$$__typename as String),
      user: Fragment$userData.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final int cs_message_id;

  final UUID? cs_agent_user_id;

  final String cs_message_content;

  final DateTime cs_message_date;

  final DateTime? updated_at;

  final DateTime? created_at;

  final UUID user_id;

  final String $__typename;

  final Fragment$userData user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cs_message_id = cs_message_id;
    _resultData['cs_message_id'] = l$cs_message_id;
    final l$cs_agent_user_id = cs_agent_user_id;
    _resultData['cs_agent_user_id'] =
        l$cs_agent_user_id == null ? null : uuidToJson(l$cs_agent_user_id);
    final l$cs_message_content = cs_message_content;
    _resultData['cs_message_content'] = l$cs_message_content;
    final l$cs_message_date = cs_message_date;
    _resultData['cs_message_date'] = l$cs_message_date.toIso8601String();
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cs_message_id = cs_message_id;
    final l$cs_agent_user_id = cs_agent_user_id;
    final l$cs_message_content = cs_message_content;
    final l$cs_message_date = cs_message_date;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$user_id = user_id;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$cs_message_id,
      l$cs_agent_user_id,
      l$cs_message_content,
      l$cs_message_date,
      l$updated_at,
      l$created_at,
      l$user_id,
      l$$__typename,
      l$user,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllCsMessageUserQuery$cs_message) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cs_message_id = cs_message_id;
    final lOther$cs_message_id = other.cs_message_id;
    if (l$cs_message_id != lOther$cs_message_id) {
      return false;
    }
    final l$cs_agent_user_id = cs_agent_user_id;
    final lOther$cs_agent_user_id = other.cs_agent_user_id;
    if (l$cs_agent_user_id != lOther$cs_agent_user_id) {
      return false;
    }
    final l$cs_message_content = cs_message_content;
    final lOther$cs_message_content = other.cs_message_content;
    if (l$cs_message_content != lOther$cs_message_content) {
      return false;
    }
    final l$cs_message_date = cs_message_date;
    final lOther$cs_message_date = other.cs_message_date;
    if (l$cs_message_date != lOther$cs_message_date) {
      return false;
    }
    final l$updated_at = updated_at;
    final lOther$updated_at = other.updated_at;
    if (l$updated_at != lOther$updated_at) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
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

extension UtilityExtension$Query$GetAllCsMessageUserQuery$cs_message
    on Query$GetAllCsMessageUserQuery$cs_message {
  CopyWith$Query$GetAllCsMessageUserQuery$cs_message<
          Query$GetAllCsMessageUserQuery$cs_message>
      get copyWith => CopyWith$Query$GetAllCsMessageUserQuery$cs_message(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllCsMessageUserQuery$cs_message<TRes> {
  factory CopyWith$Query$GetAllCsMessageUserQuery$cs_message(
    Query$GetAllCsMessageUserQuery$cs_message instance,
    TRes Function(Query$GetAllCsMessageUserQuery$cs_message) then,
  ) = _CopyWithImpl$Query$GetAllCsMessageUserQuery$cs_message;

  factory CopyWith$Query$GetAllCsMessageUserQuery$cs_message.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllCsMessageUserQuery$cs_message;

  TRes call({
    int? cs_message_id,
    UUID? cs_agent_user_id,
    String? cs_message_content,
    DateTime? cs_message_date,
    DateTime? updated_at,
    DateTime? created_at,
    UUID? user_id,
    String? $__typename,
    Fragment$userData? user,
  });
  CopyWith$Fragment$userData<TRes> get user;
}

class _CopyWithImpl$Query$GetAllCsMessageUserQuery$cs_message<TRes>
    implements CopyWith$Query$GetAllCsMessageUserQuery$cs_message<TRes> {
  _CopyWithImpl$Query$GetAllCsMessageUserQuery$cs_message(
    this._instance,
    this._then,
  );

  final Query$GetAllCsMessageUserQuery$cs_message _instance;

  final TRes Function(Query$GetAllCsMessageUserQuery$cs_message) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cs_message_id = _undefined,
    Object? cs_agent_user_id = _undefined,
    Object? cs_message_content = _undefined,
    Object? cs_message_date = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? user_id = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$GetAllCsMessageUserQuery$cs_message(
        cs_message_id: cs_message_id == _undefined || cs_message_id == null
            ? _instance.cs_message_id
            : (cs_message_id as int),
        cs_agent_user_id: cs_agent_user_id == _undefined
            ? _instance.cs_agent_user_id
            : (cs_agent_user_id as UUID?),
        cs_message_content:
            cs_message_content == _undefined || cs_message_content == null
                ? _instance.cs_message_content
                : (cs_message_content as String),
        cs_message_date:
            cs_message_date == _undefined || cs_message_date == null
                ? _instance.cs_message_date
                : (cs_message_date as DateTime),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$userData),
      ));
  CopyWith$Fragment$userData<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$userData(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Query$GetAllCsMessageUserQuery$cs_message<TRes>
    implements CopyWith$Query$GetAllCsMessageUserQuery$cs_message<TRes> {
  _CopyWithStubImpl$Query$GetAllCsMessageUserQuery$cs_message(this._res);

  TRes _res;

  call({
    int? cs_message_id,
    UUID? cs_agent_user_id,
    String? cs_message_content,
    DateTime? cs_message_date,
    DateTime? updated_at,
    DateTime? created_at,
    UUID? user_id,
    String? $__typename,
    Fragment$userData? user,
  }) =>
      _res;
  CopyWith$Fragment$userData<TRes> get user =>
      CopyWith$Fragment$userData.stub(_res);
}
