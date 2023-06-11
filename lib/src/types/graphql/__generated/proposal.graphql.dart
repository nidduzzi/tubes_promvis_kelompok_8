// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';
import 'umkm.graphql.dart';

class Fragment$proposalData {
  Fragment$proposalData({
    required this.proposal_id,
    required this.umkm_id,
    required this.proposal_content,
    required this.proposal_amount,
    required this.proposal_date,
    this.updated_at,
    this.created_at,
    this.$__typename = 'proposal',
  });

  factory Fragment$proposalData.fromJson(Map<String, dynamic> json) {
    final l$proposal_id = json['proposal_id'];
    final l$umkm_id = json['umkm_id'];
    final l$proposal_content = json['proposal_content'];
    final l$proposal_amount = json['proposal_amount'];
    final l$proposal_date = json['proposal_date'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Fragment$proposalData(
      proposal_id: (l$proposal_id as int),
      umkm_id: (l$umkm_id as int),
      proposal_content: (l$proposal_content as String),
      proposal_amount: (l$proposal_amount as int),
      proposal_date: DateTime.parse((l$proposal_date as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int proposal_id;

  final int umkm_id;

  final String proposal_content;

  final int proposal_amount;

  final DateTime proposal_date;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal_id = proposal_id;
    _resultData['proposal_id'] = l$proposal_id;
    final l$umkm_id = umkm_id;
    _resultData['umkm_id'] = l$umkm_id;
    final l$proposal_content = proposal_content;
    _resultData['proposal_content'] = l$proposal_content;
    final l$proposal_amount = proposal_amount;
    _resultData['proposal_amount'] = l$proposal_amount;
    final l$proposal_date = proposal_date;
    _resultData['proposal_date'] = l$proposal_date.toIso8601String();
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal_id = proposal_id;
    final l$umkm_id = umkm_id;
    final l$proposal_content = proposal_content;
    final l$proposal_amount = proposal_amount;
    final l$proposal_date = proposal_date;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$proposal_id,
      l$umkm_id,
      l$proposal_content,
      l$proposal_amount,
      l$proposal_date,
      l$updated_at,
      l$created_at,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$proposalData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_id = proposal_id;
    final lOther$proposal_id = other.proposal_id;
    if (l$proposal_id != lOther$proposal_id) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (l$umkm_id != lOther$umkm_id) {
      return false;
    }
    final l$proposal_content = proposal_content;
    final lOther$proposal_content = other.proposal_content;
    if (l$proposal_content != lOther$proposal_content) {
      return false;
    }
    final l$proposal_amount = proposal_amount;
    final lOther$proposal_amount = other.proposal_amount;
    if (l$proposal_amount != lOther$proposal_amount) {
      return false;
    }
    final l$proposal_date = proposal_date;
    final lOther$proposal_date = other.proposal_date;
    if (l$proposal_date != lOther$proposal_date) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$proposalData on Fragment$proposalData {
  CopyWith$Fragment$proposalData<Fragment$proposalData> get copyWith =>
      CopyWith$Fragment$proposalData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$proposalData<TRes> {
  factory CopyWith$Fragment$proposalData(
    Fragment$proposalData instance,
    TRes Function(Fragment$proposalData) then,
  ) = _CopyWithImpl$Fragment$proposalData;

  factory CopyWith$Fragment$proposalData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$proposalData;

  TRes call({
    int? proposal_id,
    int? umkm_id,
    String? proposal_content,
    int? proposal_amount,
    DateTime? proposal_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$proposalData<TRes>
    implements CopyWith$Fragment$proposalData<TRes> {
  _CopyWithImpl$Fragment$proposalData(
    this._instance,
    this._then,
  );

  final Fragment$proposalData _instance;

  final TRes Function(Fragment$proposalData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal_id = _undefined,
    Object? umkm_id = _undefined,
    Object? proposal_content = _undefined,
    Object? proposal_amount = _undefined,
    Object? proposal_date = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$proposalData(
        proposal_id: proposal_id == _undefined || proposal_id == null
            ? _instance.proposal_id
            : (proposal_id as int),
        umkm_id: umkm_id == _undefined || umkm_id == null
            ? _instance.umkm_id
            : (umkm_id as int),
        proposal_content:
            proposal_content == _undefined || proposal_content == null
                ? _instance.proposal_content
                : (proposal_content as String),
        proposal_amount:
            proposal_amount == _undefined || proposal_amount == null
                ? _instance.proposal_amount
                : (proposal_amount as int),
        proposal_date: proposal_date == _undefined || proposal_date == null
            ? _instance.proposal_date
            : (proposal_date as DateTime),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$proposalData<TRes>
    implements CopyWith$Fragment$proposalData<TRes> {
  _CopyWithStubImpl$Fragment$proposalData(this._res);

  TRes _res;

  call({
    int? proposal_id,
    int? umkm_id,
    String? proposal_content,
    int? proposal_amount,
    DateTime? proposal_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionproposalData = FragmentDefinitionNode(
  name: NameNode(value: 'proposalData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'proposal'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'proposal_id'),
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
      name: NameNode(value: 'proposal_content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'proposal_amount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'proposal_date'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentproposalData = DocumentNode(definitions: [
  fragmentDefinitionproposalData,
]);

extension ClientExtension$Fragment$proposalData on graphql.GraphQLClient {
  void writeFragment$proposalData({
    required Fragment$proposalData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'proposalData',
            document: documentNodeFragmentproposalData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$proposalData? readFragment$proposalData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'proposalData',
          document: documentNodeFragmentproposalData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$proposalData.fromJson(result);
  }
}

class Variables$Mutation$InsertProposalMutation {
  factory Variables$Mutation$InsertProposalMutation(
          {required Input$proposal_insert_input data}) =>
      Variables$Mutation$InsertProposalMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertProposalMutation._(this._$data);

  factory Variables$Mutation$InsertProposalMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$proposal_insert_input.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertProposalMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$proposal_insert_input get data =>
      (_$data['data'] as Input$proposal_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertProposalMutation<
          Variables$Mutation$InsertProposalMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertProposalMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertProposalMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertProposalMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertProposalMutation(
    Variables$Mutation$InsertProposalMutation instance,
    TRes Function(Variables$Mutation$InsertProposalMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertProposalMutation;

  factory CopyWith$Variables$Mutation$InsertProposalMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertProposalMutation;

  TRes call({Input$proposal_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertProposalMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertProposalMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertProposalMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertProposalMutation _instance;

  final TRes Function(Variables$Mutation$InsertProposalMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertProposalMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$proposal_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertProposalMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertProposalMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertProposalMutation(this._res);

  TRes _res;

  call({Input$proposal_insert_input? data}) => _res;
}

class Mutation$InsertProposalMutation {
  Mutation$InsertProposalMutation({
    this.insert_proposal_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertProposalMutation.fromJson(Map<String, dynamic> json) {
    final l$insert_proposal_one = json['insert_proposal_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertProposalMutation(
      insert_proposal_one: l$insert_proposal_one == null
          ? null
          : Fragment$proposalData.fromJson(
              (l$insert_proposal_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$proposalData? insert_proposal_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_proposal_one = insert_proposal_one;
    _resultData['insert_proposal_one'] = l$insert_proposal_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_proposal_one = insert_proposal_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_proposal_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertProposalMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_proposal_one = insert_proposal_one;
    final lOther$insert_proposal_one = other.insert_proposal_one;
    if (l$insert_proposal_one != lOther$insert_proposal_one) {
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

extension UtilityExtension$Mutation$InsertProposalMutation
    on Mutation$InsertProposalMutation {
  CopyWith$Mutation$InsertProposalMutation<Mutation$InsertProposalMutation>
      get copyWith => CopyWith$Mutation$InsertProposalMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertProposalMutation<TRes> {
  factory CopyWith$Mutation$InsertProposalMutation(
    Mutation$InsertProposalMutation instance,
    TRes Function(Mutation$InsertProposalMutation) then,
  ) = _CopyWithImpl$Mutation$InsertProposalMutation;

  factory CopyWith$Mutation$InsertProposalMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertProposalMutation;

  TRes call({
    Fragment$proposalData? insert_proposal_one,
    String? $__typename,
  });
  CopyWith$Fragment$proposalData<TRes> get insert_proposal_one;
}

class _CopyWithImpl$Mutation$InsertProposalMutation<TRes>
    implements CopyWith$Mutation$InsertProposalMutation<TRes> {
  _CopyWithImpl$Mutation$InsertProposalMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertProposalMutation _instance;

  final TRes Function(Mutation$InsertProposalMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_proposal_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertProposalMutation(
        insert_proposal_one: insert_proposal_one == _undefined
            ? _instance.insert_proposal_one
            : (insert_proposal_one as Fragment$proposalData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$proposalData<TRes> get insert_proposal_one {
    final local$insert_proposal_one = _instance.insert_proposal_one;
    return local$insert_proposal_one == null
        ? CopyWith$Fragment$proposalData.stub(_then(_instance))
        : CopyWith$Fragment$proposalData(
            local$insert_proposal_one, (e) => call(insert_proposal_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertProposalMutation<TRes>
    implements CopyWith$Mutation$InsertProposalMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertProposalMutation(this._res);

  TRes _res;

  call({
    Fragment$proposalData? insert_proposal_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$proposalData<TRes> get insert_proposal_one =>
      CopyWith$Fragment$proposalData.stub(_res);
}

const documentNodeMutationInsertProposalMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertProposalMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'proposal_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_proposal_one'),
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
            name: NameNode(value: 'proposalData'),
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
  fragmentDefinitionproposalData,
]);
Mutation$InsertProposalMutation _parserFn$Mutation$InsertProposalMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertProposalMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertProposalMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertProposalMutation?,
);

class Options$Mutation$InsertProposalMutation
    extends graphql.MutationOptions<Mutation$InsertProposalMutation> {
  Options$Mutation$InsertProposalMutation({
    String? operationName,
    required Variables$Mutation$InsertProposalMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertProposalMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertProposalMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertProposalMutation>? update,
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
                        : _parserFn$Mutation$InsertProposalMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertProposalMutation,
          parserFn: _parserFn$Mutation$InsertProposalMutation,
        );

  final OnMutationCompleted$Mutation$InsertProposalMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertProposalMutation
    extends graphql.WatchQueryOptions<Mutation$InsertProposalMutation> {
  WatchOptions$Mutation$InsertProposalMutation({
    String? operationName,
    required Variables$Mutation$InsertProposalMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertProposalMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertProposalMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertProposalMutation,
        );
}

extension ClientExtension$Mutation$InsertProposalMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertProposalMutation>>
      mutate$InsertProposalMutation(
              Options$Mutation$InsertProposalMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertProposalMutation>
      watchMutation$InsertProposalMutation(
              WatchOptions$Mutation$InsertProposalMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertProposalMutation$HookResult {
  Mutation$InsertProposalMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertProposalMutation runMutation;

  final graphql.QueryResult<Mutation$InsertProposalMutation> result;
}

Mutation$InsertProposalMutation$HookResult useMutation$InsertProposalMutation(
    [WidgetOptions$Mutation$InsertProposalMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InsertProposalMutation());
  return Mutation$InsertProposalMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertProposalMutation>
    useWatchMutation$InsertProposalMutation(
            WatchOptions$Mutation$InsertProposalMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertProposalMutation
    extends graphql.MutationOptions<Mutation$InsertProposalMutation> {
  WidgetOptions$Mutation$InsertProposalMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertProposalMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertProposalMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertProposalMutation>? update,
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
                        : _parserFn$Mutation$InsertProposalMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertProposalMutation,
          parserFn: _parserFn$Mutation$InsertProposalMutation,
        );

  final OnMutationCompleted$Mutation$InsertProposalMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertProposalMutation
    = graphql.MultiSourceResult<Mutation$InsertProposalMutation> Function(
  Variables$Mutation$InsertProposalMutation, {
  Object? optimisticResult,
  Mutation$InsertProposalMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertProposalMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertProposalMutation,
  graphql.QueryResult<Mutation$InsertProposalMutation>?,
);

class Mutation$InsertProposalMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertProposalMutation> {
  Mutation$InsertProposalMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertProposalMutation? options,
    required Builder$Mutation$InsertProposalMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertProposalMutation(),
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

class Variables$Mutation$UpdateProposalMutation {
  factory Variables$Mutation$UpdateProposalMutation({
    required Input$proposal_set_input data,
    required int proposal_id,
  }) =>
      Variables$Mutation$UpdateProposalMutation._({
        r'data': data,
        r'proposal_id': proposal_id,
      });

  Variables$Mutation$UpdateProposalMutation._(this._$data);

  factory Variables$Mutation$UpdateProposalMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$proposal_set_input.fromJson((l$data as Map<String, dynamic>));
    final l$proposal_id = data['proposal_id'];
    result$data['proposal_id'] = (l$proposal_id as int);
    return Variables$Mutation$UpdateProposalMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$proposal_set_input get data =>
      (_$data['data'] as Input$proposal_set_input);
  int get proposal_id => (_$data['proposal_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$proposal_id = proposal_id;
    result$data['proposal_id'] = l$proposal_id;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProposalMutation<
          Variables$Mutation$UpdateProposalMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateProposalMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateProposalMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$proposal_id = proposal_id;
    final lOther$proposal_id = other.proposal_id;
    if (l$proposal_id != lOther$proposal_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$proposal_id = proposal_id;
    return Object.hashAll([
      l$data,
      l$proposal_id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProposalMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProposalMutation(
    Variables$Mutation$UpdateProposalMutation instance,
    TRes Function(Variables$Mutation$UpdateProposalMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProposalMutation;

  factory CopyWith$Variables$Mutation$UpdateProposalMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProposalMutation;

  TRes call({
    Input$proposal_set_input? data,
    int? proposal_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProposalMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateProposalMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProposalMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProposalMutation _instance;

  final TRes Function(Variables$Mutation$UpdateProposalMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? proposal_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProposalMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$proposal_set_input),
        if (proposal_id != _undefined && proposal_id != null)
          'proposal_id': (proposal_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProposalMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateProposalMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProposalMutation(this._res);

  TRes _res;

  call({
    Input$proposal_set_input? data,
    int? proposal_id,
  }) =>
      _res;
}

class Mutation$UpdateProposalMutation {
  Mutation$UpdateProposalMutation({
    this.update_proposal,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateProposalMutation.fromJson(Map<String, dynamic> json) {
    final l$update_proposal = json['update_proposal'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProposalMutation(
      update_proposal: l$update_proposal == null
          ? null
          : Mutation$UpdateProposalMutation$update_proposal.fromJson(
              (l$update_proposal as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateProposalMutation$update_proposal? update_proposal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_proposal = update_proposal;
    _resultData['update_proposal'] = l$update_proposal?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_proposal = update_proposal;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_proposal,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateProposalMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_proposal = update_proposal;
    final lOther$update_proposal = other.update_proposal;
    if (l$update_proposal != lOther$update_proposal) {
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

extension UtilityExtension$Mutation$UpdateProposalMutation
    on Mutation$UpdateProposalMutation {
  CopyWith$Mutation$UpdateProposalMutation<Mutation$UpdateProposalMutation>
      get copyWith => CopyWith$Mutation$UpdateProposalMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProposalMutation<TRes> {
  factory CopyWith$Mutation$UpdateProposalMutation(
    Mutation$UpdateProposalMutation instance,
    TRes Function(Mutation$UpdateProposalMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateProposalMutation;

  factory CopyWith$Mutation$UpdateProposalMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProposalMutation;

  TRes call({
    Mutation$UpdateProposalMutation$update_proposal? update_proposal,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateProposalMutation$update_proposal<TRes>
      get update_proposal;
}

class _CopyWithImpl$Mutation$UpdateProposalMutation<TRes>
    implements CopyWith$Mutation$UpdateProposalMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateProposalMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProposalMutation _instance;

  final TRes Function(Mutation$UpdateProposalMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_proposal = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProposalMutation(
        update_proposal: update_proposal == _undefined
            ? _instance.update_proposal
            : (update_proposal
                as Mutation$UpdateProposalMutation$update_proposal?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateProposalMutation$update_proposal<TRes>
      get update_proposal {
    final local$update_proposal = _instance.update_proposal;
    return local$update_proposal == null
        ? CopyWith$Mutation$UpdateProposalMutation$update_proposal.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateProposalMutation$update_proposal(
            local$update_proposal, (e) => call(update_proposal: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProposalMutation<TRes>
    implements CopyWith$Mutation$UpdateProposalMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProposalMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateProposalMutation$update_proposal? update_proposal,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateProposalMutation$update_proposal<TRes>
      get update_proposal =>
          CopyWith$Mutation$UpdateProposalMutation$update_proposal.stub(_res);
}

const documentNodeMutationUpdateProposalMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProposalMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'proposal_set_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'proposal_id')),
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
        name: NameNode(value: 'update_proposal'),
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
                name: NameNode(value: 'proposal_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'proposal_id')),
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
                name: NameNode(value: 'proposalData'),
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
  fragmentDefinitionproposalData,
]);
Mutation$UpdateProposalMutation _parserFn$Mutation$UpdateProposalMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateProposalMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProposalMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateProposalMutation?,
);

class Options$Mutation$UpdateProposalMutation
    extends graphql.MutationOptions<Mutation$UpdateProposalMutation> {
  Options$Mutation$UpdateProposalMutation({
    String? operationName,
    required Variables$Mutation$UpdateProposalMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProposalMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProposalMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProposalMutation>? update,
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
                        : _parserFn$Mutation$UpdateProposalMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProposalMutation,
          parserFn: _parserFn$Mutation$UpdateProposalMutation,
        );

  final OnMutationCompleted$Mutation$UpdateProposalMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProposalMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateProposalMutation> {
  WatchOptions$Mutation$UpdateProposalMutation({
    String? operationName,
    required Variables$Mutation$UpdateProposalMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProposalMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProposalMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProposalMutation,
        );
}

extension ClientExtension$Mutation$UpdateProposalMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProposalMutation>>
      mutate$UpdateProposalMutation(
              Options$Mutation$UpdateProposalMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProposalMutation>
      watchMutation$UpdateProposalMutation(
              WatchOptions$Mutation$UpdateProposalMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateProposalMutation$HookResult {
  Mutation$UpdateProposalMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateProposalMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateProposalMutation> result;
}

Mutation$UpdateProposalMutation$HookResult useMutation$UpdateProposalMutation(
    [WidgetOptions$Mutation$UpdateProposalMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateProposalMutation());
  return Mutation$UpdateProposalMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateProposalMutation>
    useWatchMutation$UpdateProposalMutation(
            WatchOptions$Mutation$UpdateProposalMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateProposalMutation
    extends graphql.MutationOptions<Mutation$UpdateProposalMutation> {
  WidgetOptions$Mutation$UpdateProposalMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProposalMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProposalMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProposalMutation>? update,
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
                        : _parserFn$Mutation$UpdateProposalMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProposalMutation,
          parserFn: _parserFn$Mutation$UpdateProposalMutation,
        );

  final OnMutationCompleted$Mutation$UpdateProposalMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateProposalMutation
    = graphql.MultiSourceResult<Mutation$UpdateProposalMutation> Function(
  Variables$Mutation$UpdateProposalMutation, {
  Object? optimisticResult,
  Mutation$UpdateProposalMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateProposalMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateProposalMutation,
  graphql.QueryResult<Mutation$UpdateProposalMutation>?,
);

class Mutation$UpdateProposalMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateProposalMutation> {
  Mutation$UpdateProposalMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateProposalMutation? options,
    required Builder$Mutation$UpdateProposalMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateProposalMutation(),
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

class Mutation$UpdateProposalMutation$update_proposal {
  Mutation$UpdateProposalMutation$update_proposal({
    required this.returning,
    this.$__typename = 'proposal_mutation_response',
  });

  factory Mutation$UpdateProposalMutation$update_proposal.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProposalMutation$update_proposal(
      returning: (l$returning as List<dynamic>)
          .map((e) =>
              Fragment$proposalData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$proposalData> returning;

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
    if (!(other is Mutation$UpdateProposalMutation$update_proposal) ||
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

extension UtilityExtension$Mutation$UpdateProposalMutation$update_proposal
    on Mutation$UpdateProposalMutation$update_proposal {
  CopyWith$Mutation$UpdateProposalMutation$update_proposal<
          Mutation$UpdateProposalMutation$update_proposal>
      get copyWith => CopyWith$Mutation$UpdateProposalMutation$update_proposal(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProposalMutation$update_proposal<TRes> {
  factory CopyWith$Mutation$UpdateProposalMutation$update_proposal(
    Mutation$UpdateProposalMutation$update_proposal instance,
    TRes Function(Mutation$UpdateProposalMutation$update_proposal) then,
  ) = _CopyWithImpl$Mutation$UpdateProposalMutation$update_proposal;

  factory CopyWith$Mutation$UpdateProposalMutation$update_proposal.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProposalMutation$update_proposal;

  TRes call({
    List<Fragment$proposalData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$proposalData> Function(
              Iterable<CopyWith$Fragment$proposalData<Fragment$proposalData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateProposalMutation$update_proposal<TRes>
    implements CopyWith$Mutation$UpdateProposalMutation$update_proposal<TRes> {
  _CopyWithImpl$Mutation$UpdateProposalMutation$update_proposal(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProposalMutation$update_proposal _instance;

  final TRes Function(Mutation$UpdateProposalMutation$update_proposal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProposalMutation$update_proposal(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$proposalData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$proposalData> Function(
                  Iterable<
                      CopyWith$Fragment$proposalData<Fragment$proposalData>>)
              _fn) =>
      call(
          returning:
              _fn(_instance.returning.map((e) => CopyWith$Fragment$proposalData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateProposalMutation$update_proposal<TRes>
    implements CopyWith$Mutation$UpdateProposalMutation$update_proposal<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProposalMutation$update_proposal(this._res);

  TRes _res;

  call({
    List<Fragment$proposalData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetByPkProposalQuery {
  factory Variables$Query$GetByPkProposalQuery({required int proposal_id}) =>
      Variables$Query$GetByPkProposalQuery._({
        r'proposal_id': proposal_id,
      });

  Variables$Query$GetByPkProposalQuery._(this._$data);

  factory Variables$Query$GetByPkProposalQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$proposal_id = data['proposal_id'];
    result$data['proposal_id'] = (l$proposal_id as int);
    return Variables$Query$GetByPkProposalQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int get proposal_id => (_$data['proposal_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$proposal_id = proposal_id;
    result$data['proposal_id'] = l$proposal_id;
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkProposalQuery<
          Variables$Query$GetByPkProposalQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkProposalQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkProposalQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_id = proposal_id;
    final lOther$proposal_id = other.proposal_id;
    if (l$proposal_id != lOther$proposal_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$proposal_id = proposal_id;
    return Object.hashAll([l$proposal_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkProposalQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkProposalQuery(
    Variables$Query$GetByPkProposalQuery instance,
    TRes Function(Variables$Query$GetByPkProposalQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkProposalQuery;

  factory CopyWith$Variables$Query$GetByPkProposalQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkProposalQuery;

  TRes call({int? proposal_id});
}

class _CopyWithImpl$Variables$Query$GetByPkProposalQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkProposalQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkProposalQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkProposalQuery _instance;

  final TRes Function(Variables$Query$GetByPkProposalQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? proposal_id = _undefined}) =>
      _then(Variables$Query$GetByPkProposalQuery._({
        ..._instance._$data,
        if (proposal_id != _undefined && proposal_id != null)
          'proposal_id': (proposal_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkProposalQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkProposalQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkProposalQuery(this._res);

  TRes _res;

  call({int? proposal_id}) => _res;
}

class Query$GetByPkProposalQuery {
  Query$GetByPkProposalQuery({
    this.proposal_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkProposalQuery.fromJson(Map<String, dynamic> json) {
    final l$proposal_by_pk = json['proposal_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkProposalQuery(
      proposal_by_pk: l$proposal_by_pk == null
          ? null
          : Query$GetByPkProposalQuery$proposal_by_pk.fromJson(
              (l$proposal_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetByPkProposalQuery$proposal_by_pk? proposal_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal_by_pk = proposal_by_pk;
    _resultData['proposal_by_pk'] = l$proposal_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal_by_pk = proposal_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$proposal_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkProposalQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_by_pk = proposal_by_pk;
    final lOther$proposal_by_pk = other.proposal_by_pk;
    if (l$proposal_by_pk != lOther$proposal_by_pk) {
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

extension UtilityExtension$Query$GetByPkProposalQuery
    on Query$GetByPkProposalQuery {
  CopyWith$Query$GetByPkProposalQuery<Query$GetByPkProposalQuery>
      get copyWith => CopyWith$Query$GetByPkProposalQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkProposalQuery<TRes> {
  factory CopyWith$Query$GetByPkProposalQuery(
    Query$GetByPkProposalQuery instance,
    TRes Function(Query$GetByPkProposalQuery) then,
  ) = _CopyWithImpl$Query$GetByPkProposalQuery;

  factory CopyWith$Query$GetByPkProposalQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkProposalQuery;

  TRes call({
    Query$GetByPkProposalQuery$proposal_by_pk? proposal_by_pk,
    String? $__typename,
  });
  CopyWith$Query$GetByPkProposalQuery$proposal_by_pk<TRes> get proposal_by_pk;
}

class _CopyWithImpl$Query$GetByPkProposalQuery<TRes>
    implements CopyWith$Query$GetByPkProposalQuery<TRes> {
  _CopyWithImpl$Query$GetByPkProposalQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkProposalQuery _instance;

  final TRes Function(Query$GetByPkProposalQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkProposalQuery(
        proposal_by_pk: proposal_by_pk == _undefined
            ? _instance.proposal_by_pk
            : (proposal_by_pk as Query$GetByPkProposalQuery$proposal_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetByPkProposalQuery$proposal_by_pk<TRes> get proposal_by_pk {
    final local$proposal_by_pk = _instance.proposal_by_pk;
    return local$proposal_by_pk == null
        ? CopyWith$Query$GetByPkProposalQuery$proposal_by_pk.stub(
            _then(_instance))
        : CopyWith$Query$GetByPkProposalQuery$proposal_by_pk(
            local$proposal_by_pk, (e) => call(proposal_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkProposalQuery<TRes>
    implements CopyWith$Query$GetByPkProposalQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkProposalQuery(this._res);

  TRes _res;

  call({
    Query$GetByPkProposalQuery$proposal_by_pk? proposal_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetByPkProposalQuery$proposal_by_pk<TRes> get proposal_by_pk =>
      CopyWith$Query$GetByPkProposalQuery$proposal_by_pk.stub(_res);
}

const documentNodeQueryGetByPkProposalQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkProposalQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'proposal_id')),
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
        name: NameNode(value: 'proposal_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'proposal_id'),
            value: VariableNode(name: NameNode(value: 'proposal_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'proposalData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'umkm'),
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
  fragmentDefinitionproposalData,
  fragmentDefinitionumkmData,
]);
Query$GetByPkProposalQuery _parserFn$Query$GetByPkProposalQuery(
        Map<String, dynamic> data) =>
    Query$GetByPkProposalQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkProposalQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetByPkProposalQuery?,
);

class Options$Query$GetByPkProposalQuery
    extends graphql.QueryOptions<Query$GetByPkProposalQuery> {
  Options$Query$GetByPkProposalQuery({
    String? operationName,
    required Variables$Query$GetByPkProposalQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkProposalQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkProposalQuery? onComplete,
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
                        : _parserFn$Query$GetByPkProposalQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkProposalQuery,
          parserFn: _parserFn$Query$GetByPkProposalQuery,
        );

  final OnQueryComplete$Query$GetByPkProposalQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkProposalQuery
    extends graphql.WatchQueryOptions<Query$GetByPkProposalQuery> {
  WatchOptions$Query$GetByPkProposalQuery({
    String? operationName,
    required Variables$Query$GetByPkProposalQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkProposalQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkProposalQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkProposalQuery,
        );
}

class FetchMoreOptions$Query$GetByPkProposalQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkProposalQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkProposalQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkProposalQuery,
        );
}

extension ClientExtension$Query$GetByPkProposalQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkProposalQuery>>
      query$GetByPkProposalQuery(
              Options$Query$GetByPkProposalQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetByPkProposalQuery>
      watchQuery$GetByPkProposalQuery(
              WatchOptions$Query$GetByPkProposalQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetByPkProposalQuery({
    required Query$GetByPkProposalQuery data,
    required Variables$Query$GetByPkProposalQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetByPkProposalQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkProposalQuery? readQuery$GetByPkProposalQuery({
    required Variables$Query$GetByPkProposalQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetByPkProposalQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetByPkProposalQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkProposalQuery>
    useQuery$GetByPkProposalQuery(Options$Query$GetByPkProposalQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkProposalQuery>
    useWatchQuery$GetByPkProposalQuery(
            WatchOptions$Query$GetByPkProposalQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetByPkProposalQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkProposalQuery> {
  Query$GetByPkProposalQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkProposalQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkProposalQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetByPkProposalQuery$proposal_by_pk
    implements Fragment$proposalData {
  Query$GetByPkProposalQuery$proposal_by_pk({
    required this.proposal_id,
    required this.umkm_id,
    required this.proposal_content,
    required this.proposal_amount,
    required this.proposal_date,
    this.updated_at,
    this.created_at,
    this.$__typename = 'proposal',
    required this.umkm,
  });

  factory Query$GetByPkProposalQuery$proposal_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$proposal_id = json['proposal_id'];
    final l$umkm_id = json['umkm_id'];
    final l$proposal_content = json['proposal_content'];
    final l$proposal_amount = json['proposal_amount'];
    final l$proposal_date = json['proposal_date'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$umkm = json['umkm'];
    return Query$GetByPkProposalQuery$proposal_by_pk(
      proposal_id: (l$proposal_id as int),
      umkm_id: (l$umkm_id as int),
      proposal_content: (l$proposal_content as String),
      proposal_amount: (l$proposal_amount as int),
      proposal_date: DateTime.parse((l$proposal_date as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      umkm: Fragment$umkmData.fromJson((l$umkm as Map<String, dynamic>)),
    );
  }

  final int proposal_id;

  final int umkm_id;

  final String proposal_content;

  final int proposal_amount;

  final DateTime proposal_date;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$umkmData umkm;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal_id = proposal_id;
    _resultData['proposal_id'] = l$proposal_id;
    final l$umkm_id = umkm_id;
    _resultData['umkm_id'] = l$umkm_id;
    final l$proposal_content = proposal_content;
    _resultData['proposal_content'] = l$proposal_content;
    final l$proposal_amount = proposal_amount;
    _resultData['proposal_amount'] = l$proposal_amount;
    final l$proposal_date = proposal_date;
    _resultData['proposal_date'] = l$proposal_date.toIso8601String();
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$umkm = umkm;
    _resultData['umkm'] = l$umkm.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal_id = proposal_id;
    final l$umkm_id = umkm_id;
    final l$proposal_content = proposal_content;
    final l$proposal_amount = proposal_amount;
    final l$proposal_date = proposal_date;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$umkm = umkm;
    return Object.hashAll([
      l$proposal_id,
      l$umkm_id,
      l$proposal_content,
      l$proposal_amount,
      l$proposal_date,
      l$updated_at,
      l$created_at,
      l$$__typename,
      l$umkm,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkProposalQuery$proposal_by_pk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_id = proposal_id;
    final lOther$proposal_id = other.proposal_id;
    if (l$proposal_id != lOther$proposal_id) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (l$umkm_id != lOther$umkm_id) {
      return false;
    }
    final l$proposal_content = proposal_content;
    final lOther$proposal_content = other.proposal_content;
    if (l$proposal_content != lOther$proposal_content) {
      return false;
    }
    final l$proposal_amount = proposal_amount;
    final lOther$proposal_amount = other.proposal_amount;
    if (l$proposal_amount != lOther$proposal_amount) {
      return false;
    }
    final l$proposal_date = proposal_date;
    final lOther$proposal_date = other.proposal_date;
    if (l$proposal_date != lOther$proposal_date) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$umkm = umkm;
    final lOther$umkm = other.umkm;
    if (l$umkm != lOther$umkm) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetByPkProposalQuery$proposal_by_pk
    on Query$GetByPkProposalQuery$proposal_by_pk {
  CopyWith$Query$GetByPkProposalQuery$proposal_by_pk<
          Query$GetByPkProposalQuery$proposal_by_pk>
      get copyWith => CopyWith$Query$GetByPkProposalQuery$proposal_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkProposalQuery$proposal_by_pk<TRes> {
  factory CopyWith$Query$GetByPkProposalQuery$proposal_by_pk(
    Query$GetByPkProposalQuery$proposal_by_pk instance,
    TRes Function(Query$GetByPkProposalQuery$proposal_by_pk) then,
  ) = _CopyWithImpl$Query$GetByPkProposalQuery$proposal_by_pk;

  factory CopyWith$Query$GetByPkProposalQuery$proposal_by_pk.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkProposalQuery$proposal_by_pk;

  TRes call({
    int? proposal_id,
    int? umkm_id,
    String? proposal_content,
    int? proposal_amount,
    DateTime? proposal_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$umkmData? umkm,
  });
  CopyWith$Fragment$umkmData<TRes> get umkm;
}

class _CopyWithImpl$Query$GetByPkProposalQuery$proposal_by_pk<TRes>
    implements CopyWith$Query$GetByPkProposalQuery$proposal_by_pk<TRes> {
  _CopyWithImpl$Query$GetByPkProposalQuery$proposal_by_pk(
    this._instance,
    this._then,
  );

  final Query$GetByPkProposalQuery$proposal_by_pk _instance;

  final TRes Function(Query$GetByPkProposalQuery$proposal_by_pk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal_id = _undefined,
    Object? umkm_id = _undefined,
    Object? proposal_content = _undefined,
    Object? proposal_amount = _undefined,
    Object? proposal_date = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? umkm = _undefined,
  }) =>
      _then(Query$GetByPkProposalQuery$proposal_by_pk(
        proposal_id: proposal_id == _undefined || proposal_id == null
            ? _instance.proposal_id
            : (proposal_id as int),
        umkm_id: umkm_id == _undefined || umkm_id == null
            ? _instance.umkm_id
            : (umkm_id as int),
        proposal_content:
            proposal_content == _undefined || proposal_content == null
                ? _instance.proposal_content
                : (proposal_content as String),
        proposal_amount:
            proposal_amount == _undefined || proposal_amount == null
                ? _instance.proposal_amount
                : (proposal_amount as int),
        proposal_date: proposal_date == _undefined || proposal_date == null
            ? _instance.proposal_date
            : (proposal_date as DateTime),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        umkm: umkm == _undefined || umkm == null
            ? _instance.umkm
            : (umkm as Fragment$umkmData),
      ));
  CopyWith$Fragment$umkmData<TRes> get umkm {
    final local$umkm = _instance.umkm;
    return CopyWith$Fragment$umkmData(local$umkm, (e) => call(umkm: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkProposalQuery$proposal_by_pk<TRes>
    implements CopyWith$Query$GetByPkProposalQuery$proposal_by_pk<TRes> {
  _CopyWithStubImpl$Query$GetByPkProposalQuery$proposal_by_pk(this._res);

  TRes _res;

  call({
    int? proposal_id,
    int? umkm_id,
    String? proposal_content,
    int? proposal_amount,
    DateTime? proposal_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$umkmData? umkm,
  }) =>
      _res;
  CopyWith$Fragment$umkmData<TRes> get umkm =>
      CopyWith$Fragment$umkmData.stub(_res);
}

class Variables$Query$GetUMKMProposalAggregateQuery {
  factory Variables$Query$GetUMKMProposalAggregateQuery({
    int? umkm_id,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  }) =>
      Variables$Query$GetUMKMProposalAggregateQuery._({
        if (umkm_id != null) r'umkm_id': umkm_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetUMKMProposalAggregateQuery._(this._$data);

  factory Variables$Query$GetUMKMProposalAggregateQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('umkm_id')) {
      final l$umkm_id = data['umkm_id'];
      result$data['umkm_id'] = (l$umkm_id as int?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$proposal_select_column((e as String)))
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
              Input$proposal_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetUMKMProposalAggregateQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get umkm_id => (_$data['umkm_id'] as int?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$proposal_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$proposal_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$proposal_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$proposal_order_by>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('umkm_id')) {
      final l$umkm_id = umkm_id;
      result$data['umkm_id'] = l$umkm_id;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('distinct_on')) {
      final l$distinct_on = distinct_on;
      result$data['distinct_on'] = l$distinct_on
          ?.map((e) => toJson$Enum$proposal_select_column(e))
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

  CopyWith$Variables$Query$GetUMKMProposalAggregateQuery<
          Variables$Query$GetUMKMProposalAggregateQuery>
      get copyWith => CopyWith$Variables$Query$GetUMKMProposalAggregateQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUMKMProposalAggregateQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (_$data.containsKey('umkm_id') != other._$data.containsKey('umkm_id')) {
      return false;
    }
    if (l$umkm_id != lOther$umkm_id) {
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
    final l$umkm_id = umkm_id;
    final l$limit = limit;
    final l$distinct_on = distinct_on;
    final l$offset = offset;
    final l$order_by = order_by;
    return Object.hashAll([
      _$data.containsKey('umkm_id') ? l$umkm_id : const {},
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

abstract class CopyWith$Variables$Query$GetUMKMProposalAggregateQuery<TRes> {
  factory CopyWith$Variables$Query$GetUMKMProposalAggregateQuery(
    Variables$Query$GetUMKMProposalAggregateQuery instance,
    TRes Function(Variables$Query$GetUMKMProposalAggregateQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetUMKMProposalAggregateQuery;

  factory CopyWith$Variables$Query$GetUMKMProposalAggregateQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUMKMProposalAggregateQuery;

  TRes call({
    int? umkm_id,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetUMKMProposalAggregateQuery<TRes>
    implements CopyWith$Variables$Query$GetUMKMProposalAggregateQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetUMKMProposalAggregateQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUMKMProposalAggregateQuery _instance;

  final TRes Function(Variables$Query$GetUMKMProposalAggregateQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? umkm_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetUMKMProposalAggregateQuery._({
        ..._instance._$data,
        if (umkm_id != _undefined) 'umkm_id': (umkm_id as int?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$proposal_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$proposal_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUMKMProposalAggregateQuery<TRes>
    implements CopyWith$Variables$Query$GetUMKMProposalAggregateQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUMKMProposalAggregateQuery(this._res);

  TRes _res;

  call({
    int? umkm_id,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetUMKMProposalAggregateQuery {
  Query$GetUMKMProposalAggregateQuery({
    required this.proposal_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$GetUMKMProposalAggregateQuery.fromJson(
      Map<String, dynamic> json) {
    final l$proposal_aggregate = json['proposal_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetUMKMProposalAggregateQuery(
      proposal_aggregate:
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate.fromJson(
              (l$proposal_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate
      proposal_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal_aggregate = proposal_aggregate;
    _resultData['proposal_aggregate'] = l$proposal_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal_aggregate = proposal_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$proposal_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUMKMProposalAggregateQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_aggregate = proposal_aggregate;
    final lOther$proposal_aggregate = other.proposal_aggregate;
    if (l$proposal_aggregate != lOther$proposal_aggregate) {
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

extension UtilityExtension$Query$GetUMKMProposalAggregateQuery
    on Query$GetUMKMProposalAggregateQuery {
  CopyWith$Query$GetUMKMProposalAggregateQuery<
          Query$GetUMKMProposalAggregateQuery>
      get copyWith => CopyWith$Query$GetUMKMProposalAggregateQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUMKMProposalAggregateQuery<TRes> {
  factory CopyWith$Query$GetUMKMProposalAggregateQuery(
    Query$GetUMKMProposalAggregateQuery instance,
    TRes Function(Query$GetUMKMProposalAggregateQuery) then,
  ) = _CopyWithImpl$Query$GetUMKMProposalAggregateQuery;

  factory CopyWith$Query$GetUMKMProposalAggregateQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery;

  TRes call({
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate? proposal_aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<TRes>
      get proposal_aggregate;
}

class _CopyWithImpl$Query$GetUMKMProposalAggregateQuery<TRes>
    implements CopyWith$Query$GetUMKMProposalAggregateQuery<TRes> {
  _CopyWithImpl$Query$GetUMKMProposalAggregateQuery(
    this._instance,
    this._then,
  );

  final Query$GetUMKMProposalAggregateQuery _instance;

  final TRes Function(Query$GetUMKMProposalAggregateQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUMKMProposalAggregateQuery(
        proposal_aggregate:
            proposal_aggregate == _undefined || proposal_aggregate == null
                ? _instance.proposal_aggregate
                : (proposal_aggregate
                    as Query$GetUMKMProposalAggregateQuery$proposal_aggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<TRes>
      get proposal_aggregate {
    final local$proposal_aggregate = _instance.proposal_aggregate;
    return CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate(
        local$proposal_aggregate, (e) => call(proposal_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery<TRes>
    implements CopyWith$Query$GetUMKMProposalAggregateQuery<TRes> {
  _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery(this._res);

  TRes _res;

  call({
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate? proposal_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<TRes>
      get proposal_aggregate =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate.stub(
              _res);
}

const documentNodeQueryGetUMKMProposalAggregateQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUMKMProposalAggregateQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'umkm_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
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
            name: NameNode(value: 'proposal_select_column'),
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
            name: NameNode(value: 'proposal_order_by'),
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
        name: NameNode(value: 'proposal_aggregate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'umkm_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'umkm_id')),
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
          FieldNode(
            name: NameNode(value: 'aggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sum'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'proposal_amount'),
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
                name: NameNode(value: 'avg'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'proposal_amount'),
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
]);
Query$GetUMKMProposalAggregateQuery
    _parserFn$Query$GetUMKMProposalAggregateQuery(Map<String, dynamic> data) =>
        Query$GetUMKMProposalAggregateQuery.fromJson(data);
typedef OnQueryComplete$Query$GetUMKMProposalAggregateQuery = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetUMKMProposalAggregateQuery?,
);

class Options$Query$GetUMKMProposalAggregateQuery
    extends graphql.QueryOptions<Query$GetUMKMProposalAggregateQuery> {
  Options$Query$GetUMKMProposalAggregateQuery({
    String? operationName,
    Variables$Query$GetUMKMProposalAggregateQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUMKMProposalAggregateQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUMKMProposalAggregateQuery? onComplete,
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
                        : _parserFn$Query$GetUMKMProposalAggregateQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUMKMProposalAggregateQuery,
          parserFn: _parserFn$Query$GetUMKMProposalAggregateQuery,
        );

  final OnQueryComplete$Query$GetUMKMProposalAggregateQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUMKMProposalAggregateQuery
    extends graphql.WatchQueryOptions<Query$GetUMKMProposalAggregateQuery> {
  WatchOptions$Query$GetUMKMProposalAggregateQuery({
    String? operationName,
    Variables$Query$GetUMKMProposalAggregateQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUMKMProposalAggregateQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetUMKMProposalAggregateQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUMKMProposalAggregateQuery,
        );
}

class FetchMoreOptions$Query$GetUMKMProposalAggregateQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUMKMProposalAggregateQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetUMKMProposalAggregateQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetUMKMProposalAggregateQuery,
        );
}

extension ClientExtension$Query$GetUMKMProposalAggregateQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUMKMProposalAggregateQuery>>
      query$GetUMKMProposalAggregateQuery(
              [Options$Query$GetUMKMProposalAggregateQuery? options]) async =>
          await this
              .query(options ?? Options$Query$GetUMKMProposalAggregateQuery());
  graphql.ObservableQuery<Query$GetUMKMProposalAggregateQuery>
      watchQuery$GetUMKMProposalAggregateQuery(
              [WatchOptions$Query$GetUMKMProposalAggregateQuery? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetUMKMProposalAggregateQuery());
  void writeQuery$GetUMKMProposalAggregateQuery({
    required Query$GetUMKMProposalAggregateQuery data,
    Variables$Query$GetUMKMProposalAggregateQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetUMKMProposalAggregateQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUMKMProposalAggregateQuery? readQuery$GetUMKMProposalAggregateQuery({
    Variables$Query$GetUMKMProposalAggregateQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetUMKMProposalAggregateQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetUMKMProposalAggregateQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUMKMProposalAggregateQuery>
    useQuery$GetUMKMProposalAggregateQuery(
            [Options$Query$GetUMKMProposalAggregateQuery? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetUMKMProposalAggregateQuery());
graphql.ObservableQuery<Query$GetUMKMProposalAggregateQuery>
    useWatchQuery$GetUMKMProposalAggregateQuery(
            [WatchOptions$Query$GetUMKMProposalAggregateQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetUMKMProposalAggregateQuery());

class Query$GetUMKMProposalAggregateQuery$Widget
    extends graphql_flutter.Query<Query$GetUMKMProposalAggregateQuery> {
  Query$GetUMKMProposalAggregateQuery$Widget({
    widgets.Key? key,
    Options$Query$GetUMKMProposalAggregateQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetUMKMProposalAggregateQuery>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetUMKMProposalAggregateQuery(),
          builder: builder,
        );
}

class Query$GetUMKMProposalAggregateQuery$proposal_aggregate {
  Query$GetUMKMProposalAggregateQuery$proposal_aggregate({
    this.aggregate,
    this.$__typename = 'proposal_aggregate',
  });

  factory Query$GetUMKMProposalAggregateQuery$proposal_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetUMKMProposalAggregateQuery$proposal_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate?
      aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$aggregate = aggregate;
    _resultData['aggregate'] = l$aggregate?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$aggregate = aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUMKMProposalAggregateQuery$proposal_aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$aggregate = aggregate;
    final lOther$aggregate = other.aggregate;
    if (l$aggregate != lOther$aggregate) {
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

extension UtilityExtension$Query$GetUMKMProposalAggregateQuery$proposal_aggregate
    on Query$GetUMKMProposalAggregateQuery$proposal_aggregate {
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate>
      get copyWith =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<
    TRes> {
  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate(
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate instance,
    TRes Function(Query$GetUMKMProposalAggregateQuery$proposal_aggregate) then,
  ) = _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate;

  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate;

  TRes call({
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<TRes> {
  _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate _instance;

  final TRes Function(Query$GetUMKMProposalAggregateQuery$proposal_aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUMKMProposalAggregateQuery$proposal_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<
        TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate<TRes> {
  _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate(
      this._res);

  TRes _res;

  call({
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate
              .stub(_res);
}

class Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate {
  Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate({
    required this.count,
    this.sum,
    this.avg,
    this.$__typename = 'proposal_aggregate_fields',
  });

  factory Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$sum = json['sum'];
    final l$avg = json['avg'];
    final l$$__typename = json['__typename'];
    return Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate(
      count: (l$count as int),
      sum: l$sum == null
          ? null
          : Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum
              .fromJson((l$sum as Map<String, dynamic>)),
      avg: l$avg == null
          ? null
          : Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg
              .fromJson((l$avg as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum?
      sum;

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg?
      avg;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$sum = sum;
    _resultData['sum'] = l$sum?.toJson();
    final l$avg = avg;
    _resultData['avg'] = l$avg?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$sum = sum;
    final l$avg = avg;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$sum,
      l$avg,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) {
      return false;
    }
    final l$avg = avg;
    final lOther$avg = other.avg;
    if (l$avg != lOther$avg) {
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

extension UtilityExtension$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate
    on Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate {
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate>
      get copyWith =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
    TRes> {
  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate(
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate instance,
    TRes Function(
            Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate;

  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate;

  TRes call({
    int? count,
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum? sum,
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg? avg,
    String? $__typename,
  });
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
      TRes> get sum;
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
      TRes> get avg;
}

class _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate
      _instance;

  final TRes Function(
      Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? sum = _undefined,
    Object? avg = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        sum: sum == _undefined
            ? _instance.sum
            : (sum
                as Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum?),
        avg: avg == _undefined
            ? _instance.avg
            : (avg
                as Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
      TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum
            .stub(_then(_instance))
        : CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum(
            local$sum, (e) => call(sum: e));
  }

  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
      TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg
            .stub(_then(_instance))
        : CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg(
            local$avg, (e) => call(avg: e));
  }
}

class _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum? sum,
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg? avg,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
          TRes>
      get sum =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum
              .stub(_res);
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
          TRes>
      get avg =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg
              .stub(_res);
}

class Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum {
  Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum({
    this.proposal_amount,
    this.$__typename = 'proposal_sum_fields',
  });

  factory Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum.fromJson(
      Map<String, dynamic> json) {
    final l$proposal_amount = json['proposal_amount'];
    final l$$__typename = json['__typename'];
    return Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum(
      proposal_amount: (l$proposal_amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? proposal_amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal_amount = proposal_amount;
    _resultData['proposal_amount'] = l$proposal_amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal_amount = proposal_amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$proposal_amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_amount = proposal_amount;
    final lOther$proposal_amount = other.proposal_amount;
    if (l$proposal_amount != lOther$proposal_amount) {
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

extension UtilityExtension$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum
    on Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum {
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum>
      get copyWith =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
    TRes> {
  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum(
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum
        instance,
    TRes Function(
            Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum)
        then,
  ) = _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum;

  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum;

  TRes call({
    int? proposal_amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
        TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
            TRes> {
  _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum(
    this._instance,
    this._then,
  );

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum
      _instance;

  final TRes Function(
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal_amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum(
        proposal_amount: proposal_amount == _undefined
            ? _instance.proposal_amount
            : (proposal_amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
        TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum<
            TRes> {
  _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$sum(
      this._res);

  TRes _res;

  call({
    int? proposal_amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg {
  Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg({
    this.proposal_amount,
    this.$__typename = 'proposal_avg_fields',
  });

  factory Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg.fromJson(
      Map<String, dynamic> json) {
    final l$proposal_amount = json['proposal_amount'];
    final l$$__typename = json['__typename'];
    return Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg(
      proposal_amount: (l$proposal_amount as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? proposal_amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal_amount = proposal_amount;
    _resultData['proposal_amount'] = l$proposal_amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal_amount = proposal_amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$proposal_amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_amount = proposal_amount;
    final lOther$proposal_amount = other.proposal_amount;
    if (l$proposal_amount != lOther$proposal_amount) {
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

extension UtilityExtension$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg
    on Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg {
  CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg>
      get copyWith =>
          CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
    TRes> {
  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg(
    Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg
        instance,
    TRes Function(
            Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg)
        then,
  ) = _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg;

  factory CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg;

  TRes call({
    double? proposal_amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
        TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
            TRes> {
  _CopyWithImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg(
    this._instance,
    this._then,
  );

  final Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg
      _instance;

  final TRes Function(
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal_amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg(
        proposal_amount: proposal_amount == _undefined
            ? _instance.proposal_amount
            : (proposal_amount as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
        TRes>
    implements
        CopyWith$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg<
            TRes> {
  _CopyWithStubImpl$Query$GetUMKMProposalAggregateQuery$proposal_aggregate$aggregate$avg(
      this._res);

  TRes _res;

  call({
    double? proposal_amount,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetAllProposalQuery {
  factory Variables$Query$GetAllProposalQuery({
    Input$proposal_bool_exp? where,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  }) =>
      Variables$Query$GetAllProposalQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllProposalQuery._(this._$data);

  factory Variables$Query$GetAllProposalQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$proposal_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$proposal_select_column((e as String)))
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
              Input$proposal_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllProposalQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$proposal_bool_exp? get where =>
      (_$data['where'] as Input$proposal_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$proposal_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$proposal_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$proposal_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$proposal_order_by>?);
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
          ?.map((e) => toJson$Enum$proposal_select_column(e))
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

  CopyWith$Variables$Query$GetAllProposalQuery<
          Variables$Query$GetAllProposalQuery>
      get copyWith => CopyWith$Variables$Query$GetAllProposalQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllProposalQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllProposalQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllProposalQuery(
    Variables$Query$GetAllProposalQuery instance,
    TRes Function(Variables$Query$GetAllProposalQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllProposalQuery;

  factory CopyWith$Variables$Query$GetAllProposalQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllProposalQuery;

  TRes call({
    Input$proposal_bool_exp? where,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllProposalQuery<TRes>
    implements CopyWith$Variables$Query$GetAllProposalQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllProposalQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllProposalQuery _instance;

  final TRes Function(Variables$Query$GetAllProposalQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllProposalQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$proposal_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$proposal_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$proposal_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllProposalQuery<TRes>
    implements CopyWith$Variables$Query$GetAllProposalQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllProposalQuery(this._res);

  TRes _res;

  call({
    Input$proposal_bool_exp? where,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllProposalQuery {
  Query$GetAllProposalQuery({
    required this.proposal,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllProposalQuery.fromJson(Map<String, dynamic> json) {
    final l$proposal = json['proposal'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProposalQuery(
      proposal: (l$proposal as List<dynamic>)
          .map((e) =>
              Fragment$proposalData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$proposalData> proposal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal = proposal;
    _resultData['proposal'] = l$proposal.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal = proposal;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$proposal.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllProposalQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal = proposal;
    final lOther$proposal = other.proposal;
    if (l$proposal.length != lOther$proposal.length) {
      return false;
    }
    for (int i = 0; i < l$proposal.length; i++) {
      final l$proposal$entry = l$proposal[i];
      final lOther$proposal$entry = lOther$proposal[i];
      if (l$proposal$entry != lOther$proposal$entry) {
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

extension UtilityExtension$Query$GetAllProposalQuery
    on Query$GetAllProposalQuery {
  CopyWith$Query$GetAllProposalQuery<Query$GetAllProposalQuery> get copyWith =>
      CopyWith$Query$GetAllProposalQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllProposalQuery<TRes> {
  factory CopyWith$Query$GetAllProposalQuery(
    Query$GetAllProposalQuery instance,
    TRes Function(Query$GetAllProposalQuery) then,
  ) = _CopyWithImpl$Query$GetAllProposalQuery;

  factory CopyWith$Query$GetAllProposalQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProposalQuery;

  TRes call({
    List<Fragment$proposalData>? proposal,
    String? $__typename,
  });
  TRes proposal(
      Iterable<Fragment$proposalData> Function(
              Iterable<CopyWith$Fragment$proposalData<Fragment$proposalData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllProposalQuery<TRes>
    implements CopyWith$Query$GetAllProposalQuery<TRes> {
  _CopyWithImpl$Query$GetAllProposalQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllProposalQuery _instance;

  final TRes Function(Query$GetAllProposalQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllProposalQuery(
        proposal: proposal == _undefined || proposal == null
            ? _instance.proposal
            : (proposal as List<Fragment$proposalData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes proposal(
          Iterable<Fragment$proposalData> Function(
                  Iterable<
                      CopyWith$Fragment$proposalData<Fragment$proposalData>>)
              _fn) =>
      call(
          proposal:
              _fn(_instance.proposal.map((e) => CopyWith$Fragment$proposalData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllProposalQuery<TRes>
    implements CopyWith$Query$GetAllProposalQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllProposalQuery(this._res);

  TRes _res;

  call({
    List<Fragment$proposalData>? proposal,
    String? $__typename,
  }) =>
      _res;
  proposal(_fn) => _res;
}

const documentNodeQueryGetAllProposalQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllProposalQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'proposal_bool_exp'),
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
            name: NameNode(value: 'proposal_select_column'),
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
            name: NameNode(value: 'proposal_order_by'),
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
        name: NameNode(value: 'proposal'),
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
            name: NameNode(value: 'proposalData'),
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
  fragmentDefinitionproposalData,
]);
Query$GetAllProposalQuery _parserFn$Query$GetAllProposalQuery(
        Map<String, dynamic> data) =>
    Query$GetAllProposalQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllProposalQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllProposalQuery?,
);

class Options$Query$GetAllProposalQuery
    extends graphql.QueryOptions<Query$GetAllProposalQuery> {
  Options$Query$GetAllProposalQuery({
    String? operationName,
    Variables$Query$GetAllProposalQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProposalQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllProposalQuery? onComplete,
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
                        : _parserFn$Query$GetAllProposalQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllProposalQuery,
          parserFn: _parserFn$Query$GetAllProposalQuery,
        );

  final OnQueryComplete$Query$GetAllProposalQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllProposalQuery
    extends graphql.WatchQueryOptions<Query$GetAllProposalQuery> {
  WatchOptions$Query$GetAllProposalQuery({
    String? operationName,
    Variables$Query$GetAllProposalQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProposalQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllProposalQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllProposalQuery,
        );
}

class FetchMoreOptions$Query$GetAllProposalQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllProposalQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllProposalQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllProposalQuery,
        );
}

extension ClientExtension$Query$GetAllProposalQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllProposalQuery>>
      query$GetAllProposalQuery(
              [Options$Query$GetAllProposalQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllProposalQuery());
  graphql.ObservableQuery<Query$GetAllProposalQuery>
      watchQuery$GetAllProposalQuery(
              [WatchOptions$Query$GetAllProposalQuery? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetAllProposalQuery());
  void writeQuery$GetAllProposalQuery({
    required Query$GetAllProposalQuery data,
    Variables$Query$GetAllProposalQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllProposalQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllProposalQuery? readQuery$GetAllProposalQuery({
    Variables$Query$GetAllProposalQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllProposalQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllProposalQuery.fromJson(result);
  }
}

graphql_flutter
    .QueryHookResult<Query$GetAllProposalQuery> useQuery$GetAllProposalQuery(
        [Options$Query$GetAllProposalQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllProposalQuery());
graphql.ObservableQuery<Query$GetAllProposalQuery>
    useWatchQuery$GetAllProposalQuery(
            [WatchOptions$Query$GetAllProposalQuery? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetAllProposalQuery());

class Query$GetAllProposalQuery$Widget
    extends graphql_flutter.Query<Query$GetAllProposalQuery> {
  Query$GetAllProposalQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllProposalQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllProposalQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllProposalQuery(),
          builder: builder,
        );
}

class Variables$Query$GetAllProposalUMKMQuery {
  factory Variables$Query$GetAllProposalUMKMQuery({
    Input$proposal_bool_exp? where,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  }) =>
      Variables$Query$GetAllProposalUMKMQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllProposalUMKMQuery._(this._$data);

  factory Variables$Query$GetAllProposalUMKMQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$proposal_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$proposal_select_column((e as String)))
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
              Input$proposal_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllProposalUMKMQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$proposal_bool_exp? get where =>
      (_$data['where'] as Input$proposal_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$proposal_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$proposal_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$proposal_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$proposal_order_by>?);
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
          ?.map((e) => toJson$Enum$proposal_select_column(e))
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

  CopyWith$Variables$Query$GetAllProposalUMKMQuery<
          Variables$Query$GetAllProposalUMKMQuery>
      get copyWith => CopyWith$Variables$Query$GetAllProposalUMKMQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllProposalUMKMQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllProposalUMKMQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllProposalUMKMQuery(
    Variables$Query$GetAllProposalUMKMQuery instance,
    TRes Function(Variables$Query$GetAllProposalUMKMQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllProposalUMKMQuery;

  factory CopyWith$Variables$Query$GetAllProposalUMKMQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllProposalUMKMQuery;

  TRes call({
    Input$proposal_bool_exp? where,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllProposalUMKMQuery<TRes>
    implements CopyWith$Variables$Query$GetAllProposalUMKMQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllProposalUMKMQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllProposalUMKMQuery _instance;

  final TRes Function(Variables$Query$GetAllProposalUMKMQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllProposalUMKMQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$proposal_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$proposal_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$proposal_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllProposalUMKMQuery<TRes>
    implements CopyWith$Variables$Query$GetAllProposalUMKMQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllProposalUMKMQuery(this._res);

  TRes _res;

  call({
    Input$proposal_bool_exp? where,
    int? limit,
    List<Enum$proposal_select_column>? distinct_on,
    int? offset,
    List<Input$proposal_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllProposalUMKMQuery {
  Query$GetAllProposalUMKMQuery({
    required this.proposal,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllProposalUMKMQuery.fromJson(Map<String, dynamic> json) {
    final l$proposal = json['proposal'];
    final l$$__typename = json['__typename'];
    return Query$GetAllProposalUMKMQuery(
      proposal: (l$proposal as List<dynamic>)
          .map((e) => Query$GetAllProposalUMKMQuery$proposal.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllProposalUMKMQuery$proposal> proposal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal = proposal;
    _resultData['proposal'] = l$proposal.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal = proposal;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$proposal.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllProposalUMKMQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal = proposal;
    final lOther$proposal = other.proposal;
    if (l$proposal.length != lOther$proposal.length) {
      return false;
    }
    for (int i = 0; i < l$proposal.length; i++) {
      final l$proposal$entry = l$proposal[i];
      final lOther$proposal$entry = lOther$proposal[i];
      if (l$proposal$entry != lOther$proposal$entry) {
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

extension UtilityExtension$Query$GetAllProposalUMKMQuery
    on Query$GetAllProposalUMKMQuery {
  CopyWith$Query$GetAllProposalUMKMQuery<Query$GetAllProposalUMKMQuery>
      get copyWith => CopyWith$Query$GetAllProposalUMKMQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllProposalUMKMQuery<TRes> {
  factory CopyWith$Query$GetAllProposalUMKMQuery(
    Query$GetAllProposalUMKMQuery instance,
    TRes Function(Query$GetAllProposalUMKMQuery) then,
  ) = _CopyWithImpl$Query$GetAllProposalUMKMQuery;

  factory CopyWith$Query$GetAllProposalUMKMQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProposalUMKMQuery;

  TRes call({
    List<Query$GetAllProposalUMKMQuery$proposal>? proposal,
    String? $__typename,
  });
  TRes proposal(
      Iterable<Query$GetAllProposalUMKMQuery$proposal> Function(
              Iterable<
                  CopyWith$Query$GetAllProposalUMKMQuery$proposal<
                      Query$GetAllProposalUMKMQuery$proposal>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllProposalUMKMQuery<TRes>
    implements CopyWith$Query$GetAllProposalUMKMQuery<TRes> {
  _CopyWithImpl$Query$GetAllProposalUMKMQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllProposalUMKMQuery _instance;

  final TRes Function(Query$GetAllProposalUMKMQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllProposalUMKMQuery(
        proposal: proposal == _undefined || proposal == null
            ? _instance.proposal
            : (proposal as List<Query$GetAllProposalUMKMQuery$proposal>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes proposal(
          Iterable<Query$GetAllProposalUMKMQuery$proposal> Function(
                  Iterable<
                      CopyWith$Query$GetAllProposalUMKMQuery$proposal<
                          Query$GetAllProposalUMKMQuery$proposal>>)
              _fn) =>
      call(
          proposal: _fn(_instance.proposal
              .map((e) => CopyWith$Query$GetAllProposalUMKMQuery$proposal(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllProposalUMKMQuery<TRes>
    implements CopyWith$Query$GetAllProposalUMKMQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllProposalUMKMQuery(this._res);

  TRes _res;

  call({
    List<Query$GetAllProposalUMKMQuery$proposal>? proposal,
    String? $__typename,
  }) =>
      _res;
  proposal(_fn) => _res;
}

const documentNodeQueryGetAllProposalUMKMQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllProposalUMKMQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'proposal_bool_exp'),
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
            name: NameNode(value: 'proposal_select_column'),
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
            name: NameNode(value: 'proposal_order_by'),
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
        name: NameNode(value: 'proposal'),
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
            name: NameNode(value: 'proposalData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'umkm'),
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
  fragmentDefinitionproposalData,
  fragmentDefinitionumkmData,
]);
Query$GetAllProposalUMKMQuery _parserFn$Query$GetAllProposalUMKMQuery(
        Map<String, dynamic> data) =>
    Query$GetAllProposalUMKMQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllProposalUMKMQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllProposalUMKMQuery?,
);

class Options$Query$GetAllProposalUMKMQuery
    extends graphql.QueryOptions<Query$GetAllProposalUMKMQuery> {
  Options$Query$GetAllProposalUMKMQuery({
    String? operationName,
    Variables$Query$GetAllProposalUMKMQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProposalUMKMQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllProposalUMKMQuery? onComplete,
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
                        : _parserFn$Query$GetAllProposalUMKMQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllProposalUMKMQuery,
          parserFn: _parserFn$Query$GetAllProposalUMKMQuery,
        );

  final OnQueryComplete$Query$GetAllProposalUMKMQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllProposalUMKMQuery
    extends graphql.WatchQueryOptions<Query$GetAllProposalUMKMQuery> {
  WatchOptions$Query$GetAllProposalUMKMQuery({
    String? operationName,
    Variables$Query$GetAllProposalUMKMQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllProposalUMKMQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllProposalUMKMQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllProposalUMKMQuery,
        );
}

class FetchMoreOptions$Query$GetAllProposalUMKMQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllProposalUMKMQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllProposalUMKMQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllProposalUMKMQuery,
        );
}

extension ClientExtension$Query$GetAllProposalUMKMQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllProposalUMKMQuery>>
      query$GetAllProposalUMKMQuery(
              [Options$Query$GetAllProposalUMKMQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllProposalUMKMQuery());
  graphql.ObservableQuery<
      Query$GetAllProposalUMKMQuery> watchQuery$GetAllProposalUMKMQuery(
          [WatchOptions$Query$GetAllProposalUMKMQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllProposalUMKMQuery());
  void writeQuery$GetAllProposalUMKMQuery({
    required Query$GetAllProposalUMKMQuery data,
    Variables$Query$GetAllProposalUMKMQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllProposalUMKMQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllProposalUMKMQuery? readQuery$GetAllProposalUMKMQuery({
    Variables$Query$GetAllProposalUMKMQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllProposalUMKMQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllProposalUMKMQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllProposalUMKMQuery>
    useQuery$GetAllProposalUMKMQuery(
            [Options$Query$GetAllProposalUMKMQuery? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllProposalUMKMQuery());
graphql.ObservableQuery<Query$GetAllProposalUMKMQuery>
    useWatchQuery$GetAllProposalUMKMQuery(
            [WatchOptions$Query$GetAllProposalUMKMQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllProposalUMKMQuery());

class Query$GetAllProposalUMKMQuery$Widget
    extends graphql_flutter.Query<Query$GetAllProposalUMKMQuery> {
  Query$GetAllProposalUMKMQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllProposalUMKMQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllProposalUMKMQuery>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllProposalUMKMQuery(),
          builder: builder,
        );
}

class Query$GetAllProposalUMKMQuery$proposal implements Fragment$proposalData {
  Query$GetAllProposalUMKMQuery$proposal({
    required this.proposal_id,
    required this.umkm_id,
    required this.proposal_content,
    required this.proposal_amount,
    required this.proposal_date,
    this.updated_at,
    this.created_at,
    this.$__typename = 'proposal',
    required this.umkm,
  });

  factory Query$GetAllProposalUMKMQuery$proposal.fromJson(
      Map<String, dynamic> json) {
    final l$proposal_id = json['proposal_id'];
    final l$umkm_id = json['umkm_id'];
    final l$proposal_content = json['proposal_content'];
    final l$proposal_amount = json['proposal_amount'];
    final l$proposal_date = json['proposal_date'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$umkm = json['umkm'];
    return Query$GetAllProposalUMKMQuery$proposal(
      proposal_id: (l$proposal_id as int),
      umkm_id: (l$umkm_id as int),
      proposal_content: (l$proposal_content as String),
      proposal_amount: (l$proposal_amount as int),
      proposal_date: DateTime.parse((l$proposal_date as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      umkm: Fragment$umkmData.fromJson((l$umkm as Map<String, dynamic>)),
    );
  }

  final int proposal_id;

  final int umkm_id;

  final String proposal_content;

  final int proposal_amount;

  final DateTime proposal_date;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$umkmData umkm;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$proposal_id = proposal_id;
    _resultData['proposal_id'] = l$proposal_id;
    final l$umkm_id = umkm_id;
    _resultData['umkm_id'] = l$umkm_id;
    final l$proposal_content = proposal_content;
    _resultData['proposal_content'] = l$proposal_content;
    final l$proposal_amount = proposal_amount;
    _resultData['proposal_amount'] = l$proposal_amount;
    final l$proposal_date = proposal_date;
    _resultData['proposal_date'] = l$proposal_date.toIso8601String();
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$umkm = umkm;
    _resultData['umkm'] = l$umkm.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$proposal_id = proposal_id;
    final l$umkm_id = umkm_id;
    final l$proposal_content = proposal_content;
    final l$proposal_amount = proposal_amount;
    final l$proposal_date = proposal_date;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$umkm = umkm;
    return Object.hashAll([
      l$proposal_id,
      l$umkm_id,
      l$proposal_content,
      l$proposal_amount,
      l$proposal_date,
      l$updated_at,
      l$created_at,
      l$$__typename,
      l$umkm,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllProposalUMKMQuery$proposal) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$proposal_id = proposal_id;
    final lOther$proposal_id = other.proposal_id;
    if (l$proposal_id != lOther$proposal_id) {
      return false;
    }
    final l$umkm_id = umkm_id;
    final lOther$umkm_id = other.umkm_id;
    if (l$umkm_id != lOther$umkm_id) {
      return false;
    }
    final l$proposal_content = proposal_content;
    final lOther$proposal_content = other.proposal_content;
    if (l$proposal_content != lOther$proposal_content) {
      return false;
    }
    final l$proposal_amount = proposal_amount;
    final lOther$proposal_amount = other.proposal_amount;
    if (l$proposal_amount != lOther$proposal_amount) {
      return false;
    }
    final l$proposal_date = proposal_date;
    final lOther$proposal_date = other.proposal_date;
    if (l$proposal_date != lOther$proposal_date) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$umkm = umkm;
    final lOther$umkm = other.umkm;
    if (l$umkm != lOther$umkm) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllProposalUMKMQuery$proposal
    on Query$GetAllProposalUMKMQuery$proposal {
  CopyWith$Query$GetAllProposalUMKMQuery$proposal<
          Query$GetAllProposalUMKMQuery$proposal>
      get copyWith => CopyWith$Query$GetAllProposalUMKMQuery$proposal(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllProposalUMKMQuery$proposal<TRes> {
  factory CopyWith$Query$GetAllProposalUMKMQuery$proposal(
    Query$GetAllProposalUMKMQuery$proposal instance,
    TRes Function(Query$GetAllProposalUMKMQuery$proposal) then,
  ) = _CopyWithImpl$Query$GetAllProposalUMKMQuery$proposal;

  factory CopyWith$Query$GetAllProposalUMKMQuery$proposal.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllProposalUMKMQuery$proposal;

  TRes call({
    int? proposal_id,
    int? umkm_id,
    String? proposal_content,
    int? proposal_amount,
    DateTime? proposal_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$umkmData? umkm,
  });
  CopyWith$Fragment$umkmData<TRes> get umkm;
}

class _CopyWithImpl$Query$GetAllProposalUMKMQuery$proposal<TRes>
    implements CopyWith$Query$GetAllProposalUMKMQuery$proposal<TRes> {
  _CopyWithImpl$Query$GetAllProposalUMKMQuery$proposal(
    this._instance,
    this._then,
  );

  final Query$GetAllProposalUMKMQuery$proposal _instance;

  final TRes Function(Query$GetAllProposalUMKMQuery$proposal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? proposal_id = _undefined,
    Object? umkm_id = _undefined,
    Object? proposal_content = _undefined,
    Object? proposal_amount = _undefined,
    Object? proposal_date = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? umkm = _undefined,
  }) =>
      _then(Query$GetAllProposalUMKMQuery$proposal(
        proposal_id: proposal_id == _undefined || proposal_id == null
            ? _instance.proposal_id
            : (proposal_id as int),
        umkm_id: umkm_id == _undefined || umkm_id == null
            ? _instance.umkm_id
            : (umkm_id as int),
        proposal_content:
            proposal_content == _undefined || proposal_content == null
                ? _instance.proposal_content
                : (proposal_content as String),
        proposal_amount:
            proposal_amount == _undefined || proposal_amount == null
                ? _instance.proposal_amount
                : (proposal_amount as int),
        proposal_date: proposal_date == _undefined || proposal_date == null
            ? _instance.proposal_date
            : (proposal_date as DateTime),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        umkm: umkm == _undefined || umkm == null
            ? _instance.umkm
            : (umkm as Fragment$umkmData),
      ));
  CopyWith$Fragment$umkmData<TRes> get umkm {
    final local$umkm = _instance.umkm;
    return CopyWith$Fragment$umkmData(local$umkm, (e) => call(umkm: e));
  }
}

class _CopyWithStubImpl$Query$GetAllProposalUMKMQuery$proposal<TRes>
    implements CopyWith$Query$GetAllProposalUMKMQuery$proposal<TRes> {
  _CopyWithStubImpl$Query$GetAllProposalUMKMQuery$proposal(this._res);

  TRes _res;

  call({
    int? proposal_id,
    int? umkm_id,
    String? proposal_content,
    int? proposal_amount,
    DateTime? proposal_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$umkmData? umkm,
  }) =>
      _res;
  CopyWith$Fragment$umkmData<TRes> get umkm =>
      CopyWith$Fragment$umkmData.stub(_res);
}
