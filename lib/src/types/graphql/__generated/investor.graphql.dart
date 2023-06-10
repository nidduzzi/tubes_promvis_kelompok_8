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

class Fragment$investorData {
  Fragment$investorData({
    required this.investor_id,
    required this.investor_name,
    required this.investor_investment_amount,
    required this.user_id,
    this.updated_at,
    this.created_at,
    this.$__typename = 'investor',
  });

  factory Fragment$investorData.fromJson(Map<String, dynamic> json) {
    final l$investor_id = json['investor_id'];
    final l$investor_name = json['investor_name'];
    final l$investor_investment_amount = json['investor_investment_amount'];
    final l$user_id = json['user_id'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Fragment$investorData(
      investor_id: (l$investor_id as int),
      investor_name: (l$investor_name as String),
      investor_investment_amount: (l$investor_investment_amount as int),
      user_id: uuidFromJson(l$user_id),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int investor_id;

  final String investor_name;

  final int investor_investment_amount;

  final UUID user_id;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investor_id = investor_id;
    _resultData['investor_id'] = l$investor_id;
    final l$investor_name = investor_name;
    _resultData['investor_name'] = l$investor_name;
    final l$investor_investment_amount = investor_investment_amount;
    _resultData['investor_investment_amount'] = l$investor_investment_amount;
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
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
    final l$investor_id = investor_id;
    final l$investor_name = investor_name;
    final l$investor_investment_amount = investor_investment_amount;
    final l$user_id = user_id;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$investor_id,
      l$investor_name,
      l$investor_investment_amount,
      l$user_id,
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
    if (!(other is Fragment$investorData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (l$investor_id != lOther$investor_id) {
      return false;
    }
    final l$investor_name = investor_name;
    final lOther$investor_name = other.investor_name;
    if (l$investor_name != lOther$investor_name) {
      return false;
    }
    final l$investor_investment_amount = investor_investment_amount;
    final lOther$investor_investment_amount = other.investor_investment_amount;
    if (l$investor_investment_amount != lOther$investor_investment_amount) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
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

extension UtilityExtension$Fragment$investorData on Fragment$investorData {
  CopyWith$Fragment$investorData<Fragment$investorData> get copyWith =>
      CopyWith$Fragment$investorData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$investorData<TRes> {
  factory CopyWith$Fragment$investorData(
    Fragment$investorData instance,
    TRes Function(Fragment$investorData) then,
  ) = _CopyWithImpl$Fragment$investorData;

  factory CopyWith$Fragment$investorData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$investorData;

  TRes call({
    int? investor_id,
    String? investor_name,
    int? investor_investment_amount,
    UUID? user_id,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$investorData<TRes>
    implements CopyWith$Fragment$investorData<TRes> {
  _CopyWithImpl$Fragment$investorData(
    this._instance,
    this._then,
  );

  final Fragment$investorData _instance;

  final TRes Function(Fragment$investorData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor_id = _undefined,
    Object? investor_name = _undefined,
    Object? investor_investment_amount = _undefined,
    Object? user_id = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$investorData(
        investor_id: investor_id == _undefined || investor_id == null
            ? _instance.investor_id
            : (investor_id as int),
        investor_name: investor_name == _undefined || investor_name == null
            ? _instance.investor_name
            : (investor_name as String),
        investor_investment_amount: investor_investment_amount == _undefined ||
                investor_investment_amount == null
            ? _instance.investor_investment_amount
            : (investor_investment_amount as int),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
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

class _CopyWithStubImpl$Fragment$investorData<TRes>
    implements CopyWith$Fragment$investorData<TRes> {
  _CopyWithStubImpl$Fragment$investorData(this._res);

  TRes _res;

  call({
    int? investor_id,
    String? investor_name,
    int? investor_investment_amount,
    UUID? user_id,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitioninvestorData = FragmentDefinitionNode(
  name: NameNode(value: 'investorData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'investor'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'investor_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'investor_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'investor_investment_amount'),
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
const documentNodeFragmentinvestorData = DocumentNode(definitions: [
  fragmentDefinitioninvestorData,
]);

extension ClientExtension$Fragment$investorData on graphql.GraphQLClient {
  void writeFragment$investorData({
    required Fragment$investorData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'investorData',
            document: documentNodeFragmentinvestorData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$investorData? readFragment$investorData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'investorData',
          document: documentNodeFragmentinvestorData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$investorData.fromJson(result);
  }
}

class Variables$Mutation$InsertInvestorMutation {
  factory Variables$Mutation$InsertInvestorMutation(
          {required Input$investor_insert_input data}) =>
      Variables$Mutation$InsertInvestorMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertInvestorMutation._(this._$data);

  factory Variables$Mutation$InsertInvestorMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$investor_insert_input.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertInvestorMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investor_insert_input get data =>
      (_$data['data'] as Input$investor_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertInvestorMutation<
          Variables$Mutation$InsertInvestorMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertInvestorMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertInvestorMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertInvestorMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertInvestorMutation(
    Variables$Mutation$InsertInvestorMutation instance,
    TRes Function(Variables$Mutation$InsertInvestorMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertInvestorMutation;

  factory CopyWith$Variables$Mutation$InsertInvestorMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertInvestorMutation;

  TRes call({Input$investor_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertInvestorMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertInvestorMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertInvestorMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertInvestorMutation _instance;

  final TRes Function(Variables$Mutation$InsertInvestorMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertInvestorMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$investor_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertInvestorMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertInvestorMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertInvestorMutation(this._res);

  TRes _res;

  call({Input$investor_insert_input? data}) => _res;
}

class Mutation$InsertInvestorMutation {
  Mutation$InsertInvestorMutation({
    this.insert_investor_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertInvestorMutation.fromJson(Map<String, dynamic> json) {
    final l$insert_investor_one = json['insert_investor_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertInvestorMutation(
      insert_investor_one: l$insert_investor_one == null
          ? null
          : Fragment$investorData.fromJson(
              (l$insert_investor_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$investorData? insert_investor_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_investor_one = insert_investor_one;
    _resultData['insert_investor_one'] = l$insert_investor_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_investor_one = insert_investor_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_investor_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertInvestorMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_investor_one = insert_investor_one;
    final lOther$insert_investor_one = other.insert_investor_one;
    if (l$insert_investor_one != lOther$insert_investor_one) {
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

extension UtilityExtension$Mutation$InsertInvestorMutation
    on Mutation$InsertInvestorMutation {
  CopyWith$Mutation$InsertInvestorMutation<Mutation$InsertInvestorMutation>
      get copyWith => CopyWith$Mutation$InsertInvestorMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertInvestorMutation<TRes> {
  factory CopyWith$Mutation$InsertInvestorMutation(
    Mutation$InsertInvestorMutation instance,
    TRes Function(Mutation$InsertInvestorMutation) then,
  ) = _CopyWithImpl$Mutation$InsertInvestorMutation;

  factory CopyWith$Mutation$InsertInvestorMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertInvestorMutation;

  TRes call({
    Fragment$investorData? insert_investor_one,
    String? $__typename,
  });
  CopyWith$Fragment$investorData<TRes> get insert_investor_one;
}

class _CopyWithImpl$Mutation$InsertInvestorMutation<TRes>
    implements CopyWith$Mutation$InsertInvestorMutation<TRes> {
  _CopyWithImpl$Mutation$InsertInvestorMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertInvestorMutation _instance;

  final TRes Function(Mutation$InsertInvestorMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_investor_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertInvestorMutation(
        insert_investor_one: insert_investor_one == _undefined
            ? _instance.insert_investor_one
            : (insert_investor_one as Fragment$investorData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$investorData<TRes> get insert_investor_one {
    final local$insert_investor_one = _instance.insert_investor_one;
    return local$insert_investor_one == null
        ? CopyWith$Fragment$investorData.stub(_then(_instance))
        : CopyWith$Fragment$investorData(
            local$insert_investor_one, (e) => call(insert_investor_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertInvestorMutation<TRes>
    implements CopyWith$Mutation$InsertInvestorMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertInvestorMutation(this._res);

  TRes _res;

  call({
    Fragment$investorData? insert_investor_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$investorData<TRes> get insert_investor_one =>
      CopyWith$Fragment$investorData.stub(_res);
}

const documentNodeMutationInsertInvestorMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertInvestorMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'investor_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_investor_one'),
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
            name: NameNode(value: 'investorData'),
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
  fragmentDefinitioninvestorData,
]);
Mutation$InsertInvestorMutation _parserFn$Mutation$InsertInvestorMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertInvestorMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertInvestorMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertInvestorMutation?,
);

class Options$Mutation$InsertInvestorMutation
    extends graphql.MutationOptions<Mutation$InsertInvestorMutation> {
  Options$Mutation$InsertInvestorMutation({
    String? operationName,
    required Variables$Mutation$InsertInvestorMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertInvestorMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertInvestorMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertInvestorMutation>? update,
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
                        : _parserFn$Mutation$InsertInvestorMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertInvestorMutation,
          parserFn: _parserFn$Mutation$InsertInvestorMutation,
        );

  final OnMutationCompleted$Mutation$InsertInvestorMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertInvestorMutation
    extends graphql.WatchQueryOptions<Mutation$InsertInvestorMutation> {
  WatchOptions$Mutation$InsertInvestorMutation({
    String? operationName,
    required Variables$Mutation$InsertInvestorMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertInvestorMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertInvestorMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertInvestorMutation,
        );
}

extension ClientExtension$Mutation$InsertInvestorMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertInvestorMutation>>
      mutate$InsertInvestorMutation(
              Options$Mutation$InsertInvestorMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertInvestorMutation>
      watchMutation$InsertInvestorMutation(
              WatchOptions$Mutation$InsertInvestorMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertInvestorMutation$HookResult {
  Mutation$InsertInvestorMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertInvestorMutation runMutation;

  final graphql.QueryResult<Mutation$InsertInvestorMutation> result;
}

Mutation$InsertInvestorMutation$HookResult useMutation$InsertInvestorMutation(
    [WidgetOptions$Mutation$InsertInvestorMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InsertInvestorMutation());
  return Mutation$InsertInvestorMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertInvestorMutation>
    useWatchMutation$InsertInvestorMutation(
            WatchOptions$Mutation$InsertInvestorMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertInvestorMutation
    extends graphql.MutationOptions<Mutation$InsertInvestorMutation> {
  WidgetOptions$Mutation$InsertInvestorMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertInvestorMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertInvestorMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertInvestorMutation>? update,
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
                        : _parserFn$Mutation$InsertInvestorMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertInvestorMutation,
          parserFn: _parserFn$Mutation$InsertInvestorMutation,
        );

  final OnMutationCompleted$Mutation$InsertInvestorMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertInvestorMutation
    = graphql.MultiSourceResult<Mutation$InsertInvestorMutation> Function(
  Variables$Mutation$InsertInvestorMutation, {
  Object? optimisticResult,
  Mutation$InsertInvestorMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertInvestorMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertInvestorMutation,
  graphql.QueryResult<Mutation$InsertInvestorMutation>?,
);

class Mutation$InsertInvestorMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertInvestorMutation> {
  Mutation$InsertInvestorMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertInvestorMutation? options,
    required Builder$Mutation$InsertInvestorMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertInvestorMutation(),
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

class Variables$Mutation$UpdateInvestorMutation {
  factory Variables$Mutation$UpdateInvestorMutation({
    required Input$investor_set_input data,
    UUID? user_id,
  }) =>
      Variables$Mutation$UpdateInvestorMutation._({
        r'data': data,
        if (user_id != null) r'user_id': user_id,
      });

  Variables$Mutation$UpdateInvestorMutation._(this._$data);

  factory Variables$Mutation$UpdateInvestorMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$investor_set_input.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('user_id')) {
      final l$user_id = data['user_id'];
      result$data['user_id'] =
          l$user_id == null ? null : uuidFromJson(l$user_id);
    }
    return Variables$Mutation$UpdateInvestorMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investor_set_input get data =>
      (_$data['data'] as Input$investor_set_input);
  UUID? get user_id => (_$data['user_id'] as UUID?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('user_id')) {
      final l$user_id = user_id;
      result$data['user_id'] = l$user_id == null ? null : uuidToJson(l$user_id);
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateInvestorMutation<
          Variables$Mutation$UpdateInvestorMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateInvestorMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateInvestorMutation) ||
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
    final l$data = data;
    final l$user_id = user_id;
    return Object.hashAll([
      l$data,
      _$data.containsKey('user_id') ? l$user_id : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateInvestorMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateInvestorMutation(
    Variables$Mutation$UpdateInvestorMutation instance,
    TRes Function(Variables$Mutation$UpdateInvestorMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateInvestorMutation;

  factory CopyWith$Variables$Mutation$UpdateInvestorMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateInvestorMutation;

  TRes call({
    Input$investor_set_input? data,
    UUID? user_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateInvestorMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateInvestorMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateInvestorMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateInvestorMutation _instance;

  final TRes Function(Variables$Mutation$UpdateInvestorMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? user_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateInvestorMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$investor_set_input),
        if (user_id != _undefined) 'user_id': (user_id as UUID?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateInvestorMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateInvestorMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateInvestorMutation(this._res);

  TRes _res;

  call({
    Input$investor_set_input? data,
    UUID? user_id,
  }) =>
      _res;
}

class Mutation$UpdateInvestorMutation {
  Mutation$UpdateInvestorMutation({
    this.update_investor,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateInvestorMutation.fromJson(Map<String, dynamic> json) {
    final l$update_investor = json['update_investor'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateInvestorMutation(
      update_investor: l$update_investor == null
          ? null
          : Mutation$UpdateInvestorMutation$update_investor.fromJson(
              (l$update_investor as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateInvestorMutation$update_investor? update_investor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_investor = update_investor;
    _resultData['update_investor'] = l$update_investor?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_investor = update_investor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_investor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateInvestorMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_investor = update_investor;
    final lOther$update_investor = other.update_investor;
    if (l$update_investor != lOther$update_investor) {
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

extension UtilityExtension$Mutation$UpdateInvestorMutation
    on Mutation$UpdateInvestorMutation {
  CopyWith$Mutation$UpdateInvestorMutation<Mutation$UpdateInvestorMutation>
      get copyWith => CopyWith$Mutation$UpdateInvestorMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateInvestorMutation<TRes> {
  factory CopyWith$Mutation$UpdateInvestorMutation(
    Mutation$UpdateInvestorMutation instance,
    TRes Function(Mutation$UpdateInvestorMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateInvestorMutation;

  factory CopyWith$Mutation$UpdateInvestorMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateInvestorMutation;

  TRes call({
    Mutation$UpdateInvestorMutation$update_investor? update_investor,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateInvestorMutation$update_investor<TRes>
      get update_investor;
}

class _CopyWithImpl$Mutation$UpdateInvestorMutation<TRes>
    implements CopyWith$Mutation$UpdateInvestorMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateInvestorMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateInvestorMutation _instance;

  final TRes Function(Mutation$UpdateInvestorMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_investor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateInvestorMutation(
        update_investor: update_investor == _undefined
            ? _instance.update_investor
            : (update_investor
                as Mutation$UpdateInvestorMutation$update_investor?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateInvestorMutation$update_investor<TRes>
      get update_investor {
    final local$update_investor = _instance.update_investor;
    return local$update_investor == null
        ? CopyWith$Mutation$UpdateInvestorMutation$update_investor.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateInvestorMutation$update_investor(
            local$update_investor, (e) => call(update_investor: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateInvestorMutation<TRes>
    implements CopyWith$Mutation$UpdateInvestorMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateInvestorMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateInvestorMutation$update_investor? update_investor,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateInvestorMutation$update_investor<TRes>
      get update_investor =>
          CopyWith$Mutation$UpdateInvestorMutation$update_investor.stub(_res);
}

const documentNodeMutationUpdateInvestorMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateInvestorMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'investor_set_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_investor'),
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
                name: NameNode(value: 'investorData'),
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
  fragmentDefinitioninvestorData,
]);
Mutation$UpdateInvestorMutation _parserFn$Mutation$UpdateInvestorMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateInvestorMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateInvestorMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateInvestorMutation?,
);

class Options$Mutation$UpdateInvestorMutation
    extends graphql.MutationOptions<Mutation$UpdateInvestorMutation> {
  Options$Mutation$UpdateInvestorMutation({
    String? operationName,
    required Variables$Mutation$UpdateInvestorMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateInvestorMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateInvestorMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateInvestorMutation>? update,
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
                        : _parserFn$Mutation$UpdateInvestorMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateInvestorMutation,
          parserFn: _parserFn$Mutation$UpdateInvestorMutation,
        );

  final OnMutationCompleted$Mutation$UpdateInvestorMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateInvestorMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateInvestorMutation> {
  WatchOptions$Mutation$UpdateInvestorMutation({
    String? operationName,
    required Variables$Mutation$UpdateInvestorMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateInvestorMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateInvestorMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateInvestorMutation,
        );
}

extension ClientExtension$Mutation$UpdateInvestorMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateInvestorMutation>>
      mutate$UpdateInvestorMutation(
              Options$Mutation$UpdateInvestorMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateInvestorMutation>
      watchMutation$UpdateInvestorMutation(
              WatchOptions$Mutation$UpdateInvestorMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateInvestorMutation$HookResult {
  Mutation$UpdateInvestorMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateInvestorMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateInvestorMutation> result;
}

Mutation$UpdateInvestorMutation$HookResult useMutation$UpdateInvestorMutation(
    [WidgetOptions$Mutation$UpdateInvestorMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateInvestorMutation());
  return Mutation$UpdateInvestorMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateInvestorMutation>
    useWatchMutation$UpdateInvestorMutation(
            WatchOptions$Mutation$UpdateInvestorMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateInvestorMutation
    extends graphql.MutationOptions<Mutation$UpdateInvestorMutation> {
  WidgetOptions$Mutation$UpdateInvestorMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateInvestorMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateInvestorMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateInvestorMutation>? update,
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
                        : _parserFn$Mutation$UpdateInvestorMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateInvestorMutation,
          parserFn: _parserFn$Mutation$UpdateInvestorMutation,
        );

  final OnMutationCompleted$Mutation$UpdateInvestorMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateInvestorMutation
    = graphql.MultiSourceResult<Mutation$UpdateInvestorMutation> Function(
  Variables$Mutation$UpdateInvestorMutation, {
  Object? optimisticResult,
  Mutation$UpdateInvestorMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateInvestorMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateInvestorMutation,
  graphql.QueryResult<Mutation$UpdateInvestorMutation>?,
);

class Mutation$UpdateInvestorMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateInvestorMutation> {
  Mutation$UpdateInvestorMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateInvestorMutation? options,
    required Builder$Mutation$UpdateInvestorMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateInvestorMutation(),
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

class Mutation$UpdateInvestorMutation$update_investor {
  Mutation$UpdateInvestorMutation$update_investor({
    required this.returning,
    this.$__typename = 'investor_mutation_response',
  });

  factory Mutation$UpdateInvestorMutation$update_investor.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateInvestorMutation$update_investor(
      returning: (l$returning as List<dynamic>)
          .map((e) =>
              Fragment$investorData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$investorData> returning;

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
    if (!(other is Mutation$UpdateInvestorMutation$update_investor) ||
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

extension UtilityExtension$Mutation$UpdateInvestorMutation$update_investor
    on Mutation$UpdateInvestorMutation$update_investor {
  CopyWith$Mutation$UpdateInvestorMutation$update_investor<
          Mutation$UpdateInvestorMutation$update_investor>
      get copyWith => CopyWith$Mutation$UpdateInvestorMutation$update_investor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateInvestorMutation$update_investor<TRes> {
  factory CopyWith$Mutation$UpdateInvestorMutation$update_investor(
    Mutation$UpdateInvestorMutation$update_investor instance,
    TRes Function(Mutation$UpdateInvestorMutation$update_investor) then,
  ) = _CopyWithImpl$Mutation$UpdateInvestorMutation$update_investor;

  factory CopyWith$Mutation$UpdateInvestorMutation$update_investor.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateInvestorMutation$update_investor;

  TRes call({
    List<Fragment$investorData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$investorData> Function(
              Iterable<CopyWith$Fragment$investorData<Fragment$investorData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateInvestorMutation$update_investor<TRes>
    implements CopyWith$Mutation$UpdateInvestorMutation$update_investor<TRes> {
  _CopyWithImpl$Mutation$UpdateInvestorMutation$update_investor(
    this._instance,
    this._then,
  );

  final Mutation$UpdateInvestorMutation$update_investor _instance;

  final TRes Function(Mutation$UpdateInvestorMutation$update_investor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateInvestorMutation$update_investor(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$investorData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$investorData> Function(
                  Iterable<
                      CopyWith$Fragment$investorData<Fragment$investorData>>)
              _fn) =>
      call(
          returning:
              _fn(_instance.returning.map((e) => CopyWith$Fragment$investorData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateInvestorMutation$update_investor<TRes>
    implements CopyWith$Mutation$UpdateInvestorMutation$update_investor<TRes> {
  _CopyWithStubImpl$Mutation$UpdateInvestorMutation$update_investor(this._res);

  TRes _res;

  call({
    List<Fragment$investorData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetByPkInvestorQuery {
  factory Variables$Query$GetByPkInvestorQuery({required int investor_id}) =>
      Variables$Query$GetByPkInvestorQuery._({
        r'investor_id': investor_id,
      });

  Variables$Query$GetByPkInvestorQuery._(this._$data);

  factory Variables$Query$GetByPkInvestorQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$investor_id = data['investor_id'];
    result$data['investor_id'] = (l$investor_id as int);
    return Variables$Query$GetByPkInvestorQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int get investor_id => (_$data['investor_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$investor_id = investor_id;
    result$data['investor_id'] = l$investor_id;
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkInvestorQuery<
          Variables$Query$GetByPkInvestorQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkInvestorQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkInvestorQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (l$investor_id != lOther$investor_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$investor_id = investor_id;
    return Object.hashAll([l$investor_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkInvestorQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkInvestorQuery(
    Variables$Query$GetByPkInvestorQuery instance,
    TRes Function(Variables$Query$GetByPkInvestorQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkInvestorQuery;

  factory CopyWith$Variables$Query$GetByPkInvestorQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkInvestorQuery;

  TRes call({int? investor_id});
}

class _CopyWithImpl$Variables$Query$GetByPkInvestorQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkInvestorQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkInvestorQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkInvestorQuery _instance;

  final TRes Function(Variables$Query$GetByPkInvestorQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? investor_id = _undefined}) =>
      _then(Variables$Query$GetByPkInvestorQuery._({
        ..._instance._$data,
        if (investor_id != _undefined && investor_id != null)
          'investor_id': (investor_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkInvestorQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkInvestorQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkInvestorQuery(this._res);

  TRes _res;

  call({int? investor_id}) => _res;
}

class Query$GetByPkInvestorQuery {
  Query$GetByPkInvestorQuery({
    this.investor_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkInvestorQuery.fromJson(Map<String, dynamic> json) {
    final l$investor_by_pk = json['investor_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkInvestorQuery(
      investor_by_pk: l$investor_by_pk == null
          ? null
          : Query$GetByPkInvestorQuery$investor_by_pk.fromJson(
              (l$investor_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetByPkInvestorQuery$investor_by_pk? investor_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investor_by_pk = investor_by_pk;
    _resultData['investor_by_pk'] = l$investor_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investor_by_pk = investor_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$investor_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkInvestorQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor_by_pk = investor_by_pk;
    final lOther$investor_by_pk = other.investor_by_pk;
    if (l$investor_by_pk != lOther$investor_by_pk) {
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

extension UtilityExtension$Query$GetByPkInvestorQuery
    on Query$GetByPkInvestorQuery {
  CopyWith$Query$GetByPkInvestorQuery<Query$GetByPkInvestorQuery>
      get copyWith => CopyWith$Query$GetByPkInvestorQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkInvestorQuery<TRes> {
  factory CopyWith$Query$GetByPkInvestorQuery(
    Query$GetByPkInvestorQuery instance,
    TRes Function(Query$GetByPkInvestorQuery) then,
  ) = _CopyWithImpl$Query$GetByPkInvestorQuery;

  factory CopyWith$Query$GetByPkInvestorQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkInvestorQuery;

  TRes call({
    Query$GetByPkInvestorQuery$investor_by_pk? investor_by_pk,
    String? $__typename,
  });
  CopyWith$Query$GetByPkInvestorQuery$investor_by_pk<TRes> get investor_by_pk;
}

class _CopyWithImpl$Query$GetByPkInvestorQuery<TRes>
    implements CopyWith$Query$GetByPkInvestorQuery<TRes> {
  _CopyWithImpl$Query$GetByPkInvestorQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkInvestorQuery _instance;

  final TRes Function(Query$GetByPkInvestorQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkInvestorQuery(
        investor_by_pk: investor_by_pk == _undefined
            ? _instance.investor_by_pk
            : (investor_by_pk as Query$GetByPkInvestorQuery$investor_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetByPkInvestorQuery$investor_by_pk<TRes> get investor_by_pk {
    final local$investor_by_pk = _instance.investor_by_pk;
    return local$investor_by_pk == null
        ? CopyWith$Query$GetByPkInvestorQuery$investor_by_pk.stub(
            _then(_instance))
        : CopyWith$Query$GetByPkInvestorQuery$investor_by_pk(
            local$investor_by_pk, (e) => call(investor_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkInvestorQuery<TRes>
    implements CopyWith$Query$GetByPkInvestorQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkInvestorQuery(this._res);

  TRes _res;

  call({
    Query$GetByPkInvestorQuery$investor_by_pk? investor_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetByPkInvestorQuery$investor_by_pk<TRes> get investor_by_pk =>
      CopyWith$Query$GetByPkInvestorQuery$investor_by_pk.stub(_res);
}

const documentNodeQueryGetByPkInvestorQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkInvestorQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'investor_id')),
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
        name: NameNode(value: 'investor_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'investor_id'),
            value: VariableNode(name: NameNode(value: 'investor_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'investorData'),
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
  fragmentDefinitioninvestorData,
  fragmentDefinitionuserProfile,
  fragmentDefinitionprofileData,
]);
Query$GetByPkInvestorQuery _parserFn$Query$GetByPkInvestorQuery(
        Map<String, dynamic> data) =>
    Query$GetByPkInvestorQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkInvestorQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetByPkInvestorQuery?,
);

class Options$Query$GetByPkInvestorQuery
    extends graphql.QueryOptions<Query$GetByPkInvestorQuery> {
  Options$Query$GetByPkInvestorQuery({
    String? operationName,
    required Variables$Query$GetByPkInvestorQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkInvestorQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkInvestorQuery? onComplete,
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
                        : _parserFn$Query$GetByPkInvestorQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkInvestorQuery,
          parserFn: _parserFn$Query$GetByPkInvestorQuery,
        );

  final OnQueryComplete$Query$GetByPkInvestorQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkInvestorQuery
    extends graphql.WatchQueryOptions<Query$GetByPkInvestorQuery> {
  WatchOptions$Query$GetByPkInvestorQuery({
    String? operationName,
    required Variables$Query$GetByPkInvestorQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkInvestorQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkInvestorQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkInvestorQuery,
        );
}

class FetchMoreOptions$Query$GetByPkInvestorQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkInvestorQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkInvestorQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkInvestorQuery,
        );
}

extension ClientExtension$Query$GetByPkInvestorQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkInvestorQuery>>
      query$GetByPkInvestorQuery(
              Options$Query$GetByPkInvestorQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetByPkInvestorQuery>
      watchQuery$GetByPkInvestorQuery(
              WatchOptions$Query$GetByPkInvestorQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetByPkInvestorQuery({
    required Query$GetByPkInvestorQuery data,
    required Variables$Query$GetByPkInvestorQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetByPkInvestorQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkInvestorQuery? readQuery$GetByPkInvestorQuery({
    required Variables$Query$GetByPkInvestorQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetByPkInvestorQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetByPkInvestorQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkInvestorQuery>
    useQuery$GetByPkInvestorQuery(Options$Query$GetByPkInvestorQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkInvestorQuery>
    useWatchQuery$GetByPkInvestorQuery(
            WatchOptions$Query$GetByPkInvestorQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetByPkInvestorQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkInvestorQuery> {
  Query$GetByPkInvestorQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkInvestorQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkInvestorQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetByPkInvestorQuery$investor_by_pk
    implements Fragment$investorData {
  Query$GetByPkInvestorQuery$investor_by_pk({
    required this.investor_id,
    required this.investor_name,
    required this.investor_investment_amount,
    required this.user_id,
    this.updated_at,
    this.created_at,
    this.$__typename = 'investor',
    required this.user,
  });

  factory Query$GetByPkInvestorQuery$investor_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$investor_id = json['investor_id'];
    final l$investor_name = json['investor_name'];
    final l$investor_investment_amount = json['investor_investment_amount'];
    final l$user_id = json['user_id'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$GetByPkInvestorQuery$investor_by_pk(
      investor_id: (l$investor_id as int),
      investor_name: (l$investor_name as String),
      investor_investment_amount: (l$investor_investment_amount as int),
      user_id: uuidFromJson(l$user_id),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      user: Fragment$userProfile.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final int investor_id;

  final String investor_name;

  final int investor_investment_amount;

  final UUID user_id;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$userProfile user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investor_id = investor_id;
    _resultData['investor_id'] = l$investor_id;
    final l$investor_name = investor_name;
    _resultData['investor_name'] = l$investor_name;
    final l$investor_investment_amount = investor_investment_amount;
    _resultData['investor_investment_amount'] = l$investor_investment_amount;
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
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
    final l$investor_id = investor_id;
    final l$investor_name = investor_name;
    final l$investor_investment_amount = investor_investment_amount;
    final l$user_id = user_id;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$investor_id,
      l$investor_name,
      l$investor_investment_amount,
      l$user_id,
      l$updated_at,
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
    if (!(other is Query$GetByPkInvestorQuery$investor_by_pk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (l$investor_id != lOther$investor_id) {
      return false;
    }
    final l$investor_name = investor_name;
    final lOther$investor_name = other.investor_name;
    if (l$investor_name != lOther$investor_name) {
      return false;
    }
    final l$investor_investment_amount = investor_investment_amount;
    final lOther$investor_investment_amount = other.investor_investment_amount;
    if (l$investor_investment_amount != lOther$investor_investment_amount) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetByPkInvestorQuery$investor_by_pk
    on Query$GetByPkInvestorQuery$investor_by_pk {
  CopyWith$Query$GetByPkInvestorQuery$investor_by_pk<
          Query$GetByPkInvestorQuery$investor_by_pk>
      get copyWith => CopyWith$Query$GetByPkInvestorQuery$investor_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkInvestorQuery$investor_by_pk<TRes> {
  factory CopyWith$Query$GetByPkInvestorQuery$investor_by_pk(
    Query$GetByPkInvestorQuery$investor_by_pk instance,
    TRes Function(Query$GetByPkInvestorQuery$investor_by_pk) then,
  ) = _CopyWithImpl$Query$GetByPkInvestorQuery$investor_by_pk;

  factory CopyWith$Query$GetByPkInvestorQuery$investor_by_pk.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkInvestorQuery$investor_by_pk;

  TRes call({
    int? investor_id,
    String? investor_name,
    int? investor_investment_amount,
    UUID? user_id,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  });
  CopyWith$Fragment$userProfile<TRes> get user;
}

class _CopyWithImpl$Query$GetByPkInvestorQuery$investor_by_pk<TRes>
    implements CopyWith$Query$GetByPkInvestorQuery$investor_by_pk<TRes> {
  _CopyWithImpl$Query$GetByPkInvestorQuery$investor_by_pk(
    this._instance,
    this._then,
  );

  final Query$GetByPkInvestorQuery$investor_by_pk _instance;

  final TRes Function(Query$GetByPkInvestorQuery$investor_by_pk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor_id = _undefined,
    Object? investor_name = _undefined,
    Object? investor_investment_amount = _undefined,
    Object? user_id = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$GetByPkInvestorQuery$investor_by_pk(
        investor_id: investor_id == _undefined || investor_id == null
            ? _instance.investor_id
            : (investor_id as int),
        investor_name: investor_name == _undefined || investor_name == null
            ? _instance.investor_name
            : (investor_name as String),
        investor_investment_amount: investor_investment_amount == _undefined ||
                investor_investment_amount == null
            ? _instance.investor_investment_amount
            : (investor_investment_amount as int),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
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

class _CopyWithStubImpl$Query$GetByPkInvestorQuery$investor_by_pk<TRes>
    implements CopyWith$Query$GetByPkInvestorQuery$investor_by_pk<TRes> {
  _CopyWithStubImpl$Query$GetByPkInvestorQuery$investor_by_pk(this._res);

  TRes _res;

  call({
    int? investor_id,
    String? investor_name,
    int? investor_investment_amount,
    UUID? user_id,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  }) =>
      _res;
  CopyWith$Fragment$userProfile<TRes> get user =>
      CopyWith$Fragment$userProfile.stub(_res);
}

class Variables$Query$GetAllInvestorQuery {
  factory Variables$Query$GetAllInvestorQuery({
    Input$investor_bool_exp? where,
    int? limit,
    List<Enum$investor_select_column>? distinct_on,
    int? offset,
    List<Input$investor_order_by>? order_by,
  }) =>
      Variables$Query$GetAllInvestorQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllInvestorQuery._(this._$data);

  factory Variables$Query$GetAllInvestorQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$investor_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$investor_select_column((e as String)))
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
              Input$investor_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllInvestorQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investor_bool_exp? get where =>
      (_$data['where'] as Input$investor_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$investor_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$investor_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$investor_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$investor_order_by>?);
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
          ?.map((e) => toJson$Enum$investor_select_column(e))
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

  CopyWith$Variables$Query$GetAllInvestorQuery<
          Variables$Query$GetAllInvestorQuery>
      get copyWith => CopyWith$Variables$Query$GetAllInvestorQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllInvestorQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllInvestorQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllInvestorQuery(
    Variables$Query$GetAllInvestorQuery instance,
    TRes Function(Variables$Query$GetAllInvestorQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllInvestorQuery;

  factory CopyWith$Variables$Query$GetAllInvestorQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllInvestorQuery;

  TRes call({
    Input$investor_bool_exp? where,
    int? limit,
    List<Enum$investor_select_column>? distinct_on,
    int? offset,
    List<Input$investor_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllInvestorQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestorQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllInvestorQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllInvestorQuery _instance;

  final TRes Function(Variables$Query$GetAllInvestorQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllInvestorQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$investor_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$investor_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$investor_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllInvestorQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestorQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllInvestorQuery(this._res);

  TRes _res;

  call({
    Input$investor_bool_exp? where,
    int? limit,
    List<Enum$investor_select_column>? distinct_on,
    int? offset,
    List<Input$investor_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllInvestorQuery {
  Query$GetAllInvestorQuery({
    required this.investor,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllInvestorQuery.fromJson(Map<String, dynamic> json) {
    final l$investor = json['investor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllInvestorQuery(
      investor: (l$investor as List<dynamic>)
          .map((e) =>
              Fragment$investorData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$investorData> investor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investor = investor;
    _resultData['investor'] = l$investor.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investor = investor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$investor.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllInvestorQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor = investor;
    final lOther$investor = other.investor;
    if (l$investor.length != lOther$investor.length) {
      return false;
    }
    for (int i = 0; i < l$investor.length; i++) {
      final l$investor$entry = l$investor[i];
      final lOther$investor$entry = lOther$investor[i];
      if (l$investor$entry != lOther$investor$entry) {
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

extension UtilityExtension$Query$GetAllInvestorQuery
    on Query$GetAllInvestorQuery {
  CopyWith$Query$GetAllInvestorQuery<Query$GetAllInvestorQuery> get copyWith =>
      CopyWith$Query$GetAllInvestorQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllInvestorQuery<TRes> {
  factory CopyWith$Query$GetAllInvestorQuery(
    Query$GetAllInvestorQuery instance,
    TRes Function(Query$GetAllInvestorQuery) then,
  ) = _CopyWithImpl$Query$GetAllInvestorQuery;

  factory CopyWith$Query$GetAllInvestorQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllInvestorQuery;

  TRes call({
    List<Fragment$investorData>? investor,
    String? $__typename,
  });
  TRes investor(
      Iterable<Fragment$investorData> Function(
              Iterable<CopyWith$Fragment$investorData<Fragment$investorData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllInvestorQuery<TRes>
    implements CopyWith$Query$GetAllInvestorQuery<TRes> {
  _CopyWithImpl$Query$GetAllInvestorQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllInvestorQuery _instance;

  final TRes Function(Query$GetAllInvestorQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllInvestorQuery(
        investor: investor == _undefined || investor == null
            ? _instance.investor
            : (investor as List<Fragment$investorData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes investor(
          Iterable<Fragment$investorData> Function(
                  Iterable<
                      CopyWith$Fragment$investorData<Fragment$investorData>>)
              _fn) =>
      call(
          investor:
              _fn(_instance.investor.map((e) => CopyWith$Fragment$investorData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllInvestorQuery<TRes>
    implements CopyWith$Query$GetAllInvestorQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllInvestorQuery(this._res);

  TRes _res;

  call({
    List<Fragment$investorData>? investor,
    String? $__typename,
  }) =>
      _res;
  investor(_fn) => _res;
}

const documentNodeQueryGetAllInvestorQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllInvestorQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'investor_bool_exp'),
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
            name: NameNode(value: 'investor_select_column'),
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
            name: NameNode(value: 'investor_order_by'),
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
        name: NameNode(value: 'investor'),
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
            name: NameNode(value: 'investorData'),
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
  fragmentDefinitioninvestorData,
]);
Query$GetAllInvestorQuery _parserFn$Query$GetAllInvestorQuery(
        Map<String, dynamic> data) =>
    Query$GetAllInvestorQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllInvestorQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllInvestorQuery?,
);

class Options$Query$GetAllInvestorQuery
    extends graphql.QueryOptions<Query$GetAllInvestorQuery> {
  Options$Query$GetAllInvestorQuery({
    String? operationName,
    Variables$Query$GetAllInvestorQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestorQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllInvestorQuery? onComplete,
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
                        : _parserFn$Query$GetAllInvestorQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllInvestorQuery,
          parserFn: _parserFn$Query$GetAllInvestorQuery,
        );

  final OnQueryComplete$Query$GetAllInvestorQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllInvestorQuery
    extends graphql.WatchQueryOptions<Query$GetAllInvestorQuery> {
  WatchOptions$Query$GetAllInvestorQuery({
    String? operationName,
    Variables$Query$GetAllInvestorQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestorQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllInvestorQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllInvestorQuery,
        );
}

class FetchMoreOptions$Query$GetAllInvestorQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllInvestorQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllInvestorQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllInvestorQuery,
        );
}

extension ClientExtension$Query$GetAllInvestorQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllInvestorQuery>>
      query$GetAllInvestorQuery(
              [Options$Query$GetAllInvestorQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllInvestorQuery());
  graphql.ObservableQuery<Query$GetAllInvestorQuery>
      watchQuery$GetAllInvestorQuery(
              [WatchOptions$Query$GetAllInvestorQuery? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetAllInvestorQuery());
  void writeQuery$GetAllInvestorQuery({
    required Query$GetAllInvestorQuery data,
    Variables$Query$GetAllInvestorQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllInvestorQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllInvestorQuery? readQuery$GetAllInvestorQuery({
    Variables$Query$GetAllInvestorQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllInvestorQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllInvestorQuery.fromJson(result);
  }
}

graphql_flutter
    .QueryHookResult<Query$GetAllInvestorQuery> useQuery$GetAllInvestorQuery(
        [Options$Query$GetAllInvestorQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllInvestorQuery());
graphql.ObservableQuery<Query$GetAllInvestorQuery>
    useWatchQuery$GetAllInvestorQuery(
            [WatchOptions$Query$GetAllInvestorQuery? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetAllInvestorQuery());

class Query$GetAllInvestorQuery$Widget
    extends graphql_flutter.Query<Query$GetAllInvestorQuery> {
  Query$GetAllInvestorQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllInvestorQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllInvestorQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllInvestorQuery(),
          builder: builder,
        );
}

class Variables$Query$GetAllInvestorProfileQuery {
  factory Variables$Query$GetAllInvestorProfileQuery({
    Input$investor_bool_exp? where,
    int? limit,
    List<Enum$investor_select_column>? distinct_on,
    int? offset,
    List<Input$investor_order_by>? order_by,
  }) =>
      Variables$Query$GetAllInvestorProfileQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllInvestorProfileQuery._(this._$data);

  factory Variables$Query$GetAllInvestorProfileQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$investor_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$investor_select_column((e as String)))
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
              Input$investor_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllInvestorProfileQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investor_bool_exp? get where =>
      (_$data['where'] as Input$investor_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$investor_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$investor_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$investor_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$investor_order_by>?);
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
          ?.map((e) => toJson$Enum$investor_select_column(e))
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

  CopyWith$Variables$Query$GetAllInvestorProfileQuery<
          Variables$Query$GetAllInvestorProfileQuery>
      get copyWith => CopyWith$Variables$Query$GetAllInvestorProfileQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllInvestorProfileQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllInvestorProfileQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllInvestorProfileQuery(
    Variables$Query$GetAllInvestorProfileQuery instance,
    TRes Function(Variables$Query$GetAllInvestorProfileQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllInvestorProfileQuery;

  factory CopyWith$Variables$Query$GetAllInvestorProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllInvestorProfileQuery;

  TRes call({
    Input$investor_bool_exp? where,
    int? limit,
    List<Enum$investor_select_column>? distinct_on,
    int? offset,
    List<Input$investor_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllInvestorProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestorProfileQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllInvestorProfileQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllInvestorProfileQuery _instance;

  final TRes Function(Variables$Query$GetAllInvestorProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllInvestorProfileQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$investor_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$investor_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$investor_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllInvestorProfileQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestorProfileQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllInvestorProfileQuery(this._res);

  TRes _res;

  call({
    Input$investor_bool_exp? where,
    int? limit,
    List<Enum$investor_select_column>? distinct_on,
    int? offset,
    List<Input$investor_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllInvestorProfileQuery {
  Query$GetAllInvestorProfileQuery({
    required this.investor,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllInvestorProfileQuery.fromJson(Map<String, dynamic> json) {
    final l$investor = json['investor'];
    final l$$__typename = json['__typename'];
    return Query$GetAllInvestorProfileQuery(
      investor: (l$investor as List<dynamic>)
          .map((e) => Query$GetAllInvestorProfileQuery$investor.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllInvestorProfileQuery$investor> investor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investor = investor;
    _resultData['investor'] = l$investor.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investor = investor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$investor.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllInvestorProfileQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor = investor;
    final lOther$investor = other.investor;
    if (l$investor.length != lOther$investor.length) {
      return false;
    }
    for (int i = 0; i < l$investor.length; i++) {
      final l$investor$entry = l$investor[i];
      final lOther$investor$entry = lOther$investor[i];
      if (l$investor$entry != lOther$investor$entry) {
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

extension UtilityExtension$Query$GetAllInvestorProfileQuery
    on Query$GetAllInvestorProfileQuery {
  CopyWith$Query$GetAllInvestorProfileQuery<Query$GetAllInvestorProfileQuery>
      get copyWith => CopyWith$Query$GetAllInvestorProfileQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllInvestorProfileQuery<TRes> {
  factory CopyWith$Query$GetAllInvestorProfileQuery(
    Query$GetAllInvestorProfileQuery instance,
    TRes Function(Query$GetAllInvestorProfileQuery) then,
  ) = _CopyWithImpl$Query$GetAllInvestorProfileQuery;

  factory CopyWith$Query$GetAllInvestorProfileQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllInvestorProfileQuery;

  TRes call({
    List<Query$GetAllInvestorProfileQuery$investor>? investor,
    String? $__typename,
  });
  TRes investor(
      Iterable<Query$GetAllInvestorProfileQuery$investor> Function(
              Iterable<
                  CopyWith$Query$GetAllInvestorProfileQuery$investor<
                      Query$GetAllInvestorProfileQuery$investor>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllInvestorProfileQuery<TRes>
    implements CopyWith$Query$GetAllInvestorProfileQuery<TRes> {
  _CopyWithImpl$Query$GetAllInvestorProfileQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllInvestorProfileQuery _instance;

  final TRes Function(Query$GetAllInvestorProfileQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllInvestorProfileQuery(
        investor: investor == _undefined || investor == null
            ? _instance.investor
            : (investor as List<Query$GetAllInvestorProfileQuery$investor>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes investor(
          Iterable<Query$GetAllInvestorProfileQuery$investor> Function(
                  Iterable<
                      CopyWith$Query$GetAllInvestorProfileQuery$investor<
                          Query$GetAllInvestorProfileQuery$investor>>)
              _fn) =>
      call(
          investor: _fn(_instance.investor
              .map((e) => CopyWith$Query$GetAllInvestorProfileQuery$investor(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllInvestorProfileQuery<TRes>
    implements CopyWith$Query$GetAllInvestorProfileQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllInvestorProfileQuery(this._res);

  TRes _res;

  call({
    List<Query$GetAllInvestorProfileQuery$investor>? investor,
    String? $__typename,
  }) =>
      _res;
  investor(_fn) => _res;
}

const documentNodeQueryGetAllInvestorProfileQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllInvestorProfileQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'investor_bool_exp'),
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
            name: NameNode(value: 'investor_select_column'),
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
            name: NameNode(value: 'investor_order_by'),
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
        name: NameNode(value: 'investor'),
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
            name: NameNode(value: 'investorData'),
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
  fragmentDefinitioninvestorData,
  fragmentDefinitionuserProfile,
  fragmentDefinitionprofileData,
]);
Query$GetAllInvestorProfileQuery _parserFn$Query$GetAllInvestorProfileQuery(
        Map<String, dynamic> data) =>
    Query$GetAllInvestorProfileQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllInvestorProfileQuery = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetAllInvestorProfileQuery?,
);

class Options$Query$GetAllInvestorProfileQuery
    extends graphql.QueryOptions<Query$GetAllInvestorProfileQuery> {
  Options$Query$GetAllInvestorProfileQuery({
    String? operationName,
    Variables$Query$GetAllInvestorProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestorProfileQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllInvestorProfileQuery? onComplete,
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
                        : _parserFn$Query$GetAllInvestorProfileQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllInvestorProfileQuery,
          parserFn: _parserFn$Query$GetAllInvestorProfileQuery,
        );

  final OnQueryComplete$Query$GetAllInvestorProfileQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllInvestorProfileQuery
    extends graphql.WatchQueryOptions<Query$GetAllInvestorProfileQuery> {
  WatchOptions$Query$GetAllInvestorProfileQuery({
    String? operationName,
    Variables$Query$GetAllInvestorProfileQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestorProfileQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllInvestorProfileQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllInvestorProfileQuery,
        );
}

class FetchMoreOptions$Query$GetAllInvestorProfileQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllInvestorProfileQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllInvestorProfileQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllInvestorProfileQuery,
        );
}

extension ClientExtension$Query$GetAllInvestorProfileQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllInvestorProfileQuery>>
      query$GetAllInvestorProfileQuery(
              [Options$Query$GetAllInvestorProfileQuery? options]) async =>
          await this
              .query(options ?? Options$Query$GetAllInvestorProfileQuery());
  graphql.ObservableQuery<Query$GetAllInvestorProfileQuery>
      watchQuery$GetAllInvestorProfileQuery(
              [WatchOptions$Query$GetAllInvestorProfileQuery? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetAllInvestorProfileQuery());
  void writeQuery$GetAllInvestorProfileQuery({
    required Query$GetAllInvestorProfileQuery data,
    Variables$Query$GetAllInvestorProfileQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllInvestorProfileQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllInvestorProfileQuery? readQuery$GetAllInvestorProfileQuery({
    Variables$Query$GetAllInvestorProfileQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllInvestorProfileQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllInvestorProfileQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllInvestorProfileQuery>
    useQuery$GetAllInvestorProfileQuery(
            [Options$Query$GetAllInvestorProfileQuery? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllInvestorProfileQuery());
graphql.ObservableQuery<Query$GetAllInvestorProfileQuery>
    useWatchQuery$GetAllInvestorProfileQuery(
            [WatchOptions$Query$GetAllInvestorProfileQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllInvestorProfileQuery());

class Query$GetAllInvestorProfileQuery$Widget
    extends graphql_flutter.Query<Query$GetAllInvestorProfileQuery> {
  Query$GetAllInvestorProfileQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllInvestorProfileQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllInvestorProfileQuery>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllInvestorProfileQuery(),
          builder: builder,
        );
}

class Query$GetAllInvestorProfileQuery$investor
    implements Fragment$investorData {
  Query$GetAllInvestorProfileQuery$investor({
    required this.investor_id,
    required this.investor_name,
    required this.investor_investment_amount,
    required this.user_id,
    this.updated_at,
    this.created_at,
    this.$__typename = 'investor',
    required this.user,
  });

  factory Query$GetAllInvestorProfileQuery$investor.fromJson(
      Map<String, dynamic> json) {
    final l$investor_id = json['investor_id'];
    final l$investor_name = json['investor_name'];
    final l$investor_investment_amount = json['investor_investment_amount'];
    final l$user_id = json['user_id'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$user = json['user'];
    return Query$GetAllInvestorProfileQuery$investor(
      investor_id: (l$investor_id as int),
      investor_name: (l$investor_name as String),
      investor_investment_amount: (l$investor_investment_amount as int),
      user_id: uuidFromJson(l$user_id),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      user: Fragment$userProfile.fromJson((l$user as Map<String, dynamic>)),
    );
  }

  final int investor_id;

  final String investor_name;

  final int investor_investment_amount;

  final UUID user_id;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$userProfile user;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investor_id = investor_id;
    _resultData['investor_id'] = l$investor_id;
    final l$investor_name = investor_name;
    _resultData['investor_name'] = l$investor_name;
    final l$investor_investment_amount = investor_investment_amount;
    _resultData['investor_investment_amount'] = l$investor_investment_amount;
    final l$user_id = user_id;
    _resultData['user_id'] = uuidToJson(l$user_id);
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
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
    final l$investor_id = investor_id;
    final l$investor_name = investor_name;
    final l$investor_investment_amount = investor_investment_amount;
    final l$user_id = user_id;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$user = user;
    return Object.hashAll([
      l$investor_id,
      l$investor_name,
      l$investor_investment_amount,
      l$user_id,
      l$updated_at,
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
    if (!(other is Query$GetAllInvestorProfileQuery$investor) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (l$investor_id != lOther$investor_id) {
      return false;
    }
    final l$investor_name = investor_name;
    final lOther$investor_name = other.investor_name;
    if (l$investor_name != lOther$investor_name) {
      return false;
    }
    final l$investor_investment_amount = investor_investment_amount;
    final lOther$investor_investment_amount = other.investor_investment_amount;
    if (l$investor_investment_amount != lOther$investor_investment_amount) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllInvestorProfileQuery$investor
    on Query$GetAllInvestorProfileQuery$investor {
  CopyWith$Query$GetAllInvestorProfileQuery$investor<
          Query$GetAllInvestorProfileQuery$investor>
      get copyWith => CopyWith$Query$GetAllInvestorProfileQuery$investor(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllInvestorProfileQuery$investor<TRes> {
  factory CopyWith$Query$GetAllInvestorProfileQuery$investor(
    Query$GetAllInvestorProfileQuery$investor instance,
    TRes Function(Query$GetAllInvestorProfileQuery$investor) then,
  ) = _CopyWithImpl$Query$GetAllInvestorProfileQuery$investor;

  factory CopyWith$Query$GetAllInvestorProfileQuery$investor.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllInvestorProfileQuery$investor;

  TRes call({
    int? investor_id,
    String? investor_name,
    int? investor_investment_amount,
    UUID? user_id,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  });
  CopyWith$Fragment$userProfile<TRes> get user;
}

class _CopyWithImpl$Query$GetAllInvestorProfileQuery$investor<TRes>
    implements CopyWith$Query$GetAllInvestorProfileQuery$investor<TRes> {
  _CopyWithImpl$Query$GetAllInvestorProfileQuery$investor(
    this._instance,
    this._then,
  );

  final Query$GetAllInvestorProfileQuery$investor _instance;

  final TRes Function(Query$GetAllInvestorProfileQuery$investor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor_id = _undefined,
    Object? investor_name = _undefined,
    Object? investor_investment_amount = _undefined,
    Object? user_id = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Query$GetAllInvestorProfileQuery$investor(
        investor_id: investor_id == _undefined || investor_id == null
            ? _instance.investor_id
            : (investor_id as int),
        investor_name: investor_name == _undefined || investor_name == null
            ? _instance.investor_name
            : (investor_name as String),
        investor_investment_amount: investor_investment_amount == _undefined ||
                investor_investment_amount == null
            ? _instance.investor_investment_amount
            : (investor_investment_amount as int),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as UUID),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
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

class _CopyWithStubImpl$Query$GetAllInvestorProfileQuery$investor<TRes>
    implements CopyWith$Query$GetAllInvestorProfileQuery$investor<TRes> {
  _CopyWithStubImpl$Query$GetAllInvestorProfileQuery$investor(this._res);

  TRes _res;

  call({
    int? investor_id,
    String? investor_name,
    int? investor_investment_amount,
    UUID? user_id,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$userProfile? user,
  }) =>
      _res;
  CopyWith$Fragment$userProfile<TRes> get user =>
      CopyWith$Fragment$userProfile.stub(_res);
}
