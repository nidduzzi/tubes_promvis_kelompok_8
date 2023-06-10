// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'investor.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$investmentData {
  Fragment$investmentData({
    required this.investment_id,
    required this.investor_id,
    required this.investment_amount,
    this.updated_at,
    this.created_at,
    this.$__typename = 'investment',
  });

  factory Fragment$investmentData.fromJson(Map<String, dynamic> json) {
    final l$investment_id = json['investment_id'];
    final l$investor_id = json['investor_id'];
    final l$investment_amount = json['investment_amount'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Fragment$investmentData(
      investment_id: (l$investment_id as int),
      investor_id: (l$investor_id as int),
      investment_amount: (l$investment_amount as int),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int investment_id;

  final int investor_id;

  final int investment_amount;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment_id = investment_id;
    _resultData['investment_id'] = l$investment_id;
    final l$investor_id = investor_id;
    _resultData['investor_id'] = l$investor_id;
    final l$investment_amount = investment_amount;
    _resultData['investment_amount'] = l$investment_amount;
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
    final l$investment_id = investment_id;
    final l$investor_id = investor_id;
    final l$investment_amount = investment_amount;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$investment_id,
      l$investor_id,
      l$investment_amount,
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
    if (!(other is Fragment$investmentData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_id = investment_id;
    final lOther$investment_id = other.investment_id;
    if (l$investment_id != lOther$investment_id) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (l$investor_id != lOther$investor_id) {
      return false;
    }
    final l$investment_amount = investment_amount;
    final lOther$investment_amount = other.investment_amount;
    if (l$investment_amount != lOther$investment_amount) {
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

extension UtilityExtension$Fragment$investmentData on Fragment$investmentData {
  CopyWith$Fragment$investmentData<Fragment$investmentData> get copyWith =>
      CopyWith$Fragment$investmentData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$investmentData<TRes> {
  factory CopyWith$Fragment$investmentData(
    Fragment$investmentData instance,
    TRes Function(Fragment$investmentData) then,
  ) = _CopyWithImpl$Fragment$investmentData;

  factory CopyWith$Fragment$investmentData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$investmentData;

  TRes call({
    int? investment_id,
    int? investor_id,
    int? investment_amount,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$investmentData<TRes>
    implements CopyWith$Fragment$investmentData<TRes> {
  _CopyWithImpl$Fragment$investmentData(
    this._instance,
    this._then,
  );

  final Fragment$investmentData _instance;

  final TRes Function(Fragment$investmentData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment_id = _undefined,
    Object? investor_id = _undefined,
    Object? investment_amount = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$investmentData(
        investment_id: investment_id == _undefined || investment_id == null
            ? _instance.investment_id
            : (investment_id as int),
        investor_id: investor_id == _undefined || investor_id == null
            ? _instance.investor_id
            : (investor_id as int),
        investment_amount:
            investment_amount == _undefined || investment_amount == null
                ? _instance.investment_amount
                : (investment_amount as int),
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

class _CopyWithStubImpl$Fragment$investmentData<TRes>
    implements CopyWith$Fragment$investmentData<TRes> {
  _CopyWithStubImpl$Fragment$investmentData(this._res);

  TRes _res;

  call({
    int? investment_id,
    int? investor_id,
    int? investment_amount,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitioninvestmentData = FragmentDefinitionNode(
  name: NameNode(value: 'investmentData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'investment'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'investment_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'investor_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'investment_amount'),
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
const documentNodeFragmentinvestmentData = DocumentNode(definitions: [
  fragmentDefinitioninvestmentData,
]);

extension ClientExtension$Fragment$investmentData on graphql.GraphQLClient {
  void writeFragment$investmentData({
    required Fragment$investmentData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'investmentData',
            document: documentNodeFragmentinvestmentData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$investmentData? readFragment$investmentData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'investmentData',
          document: documentNodeFragmentinvestmentData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$investmentData.fromJson(result);
  }
}

class Variables$Mutation$InsertInvestmentMutation {
  factory Variables$Mutation$InsertInvestmentMutation(
          {required Input$investment_insert_input data}) =>
      Variables$Mutation$InsertInvestmentMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertInvestmentMutation._(this._$data);

  factory Variables$Mutation$InsertInvestmentMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$investment_insert_input.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertInvestmentMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investment_insert_input get data =>
      (_$data['data'] as Input$investment_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertInvestmentMutation<
          Variables$Mutation$InsertInvestmentMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertInvestmentMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertInvestmentMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertInvestmentMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertInvestmentMutation(
    Variables$Mutation$InsertInvestmentMutation instance,
    TRes Function(Variables$Mutation$InsertInvestmentMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertInvestmentMutation;

  factory CopyWith$Variables$Mutation$InsertInvestmentMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertInvestmentMutation;

  TRes call({Input$investment_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertInvestmentMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertInvestmentMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertInvestmentMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertInvestmentMutation _instance;

  final TRes Function(Variables$Mutation$InsertInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertInvestmentMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$investment_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertInvestmentMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertInvestmentMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertInvestmentMutation(this._res);

  TRes _res;

  call({Input$investment_insert_input? data}) => _res;
}

class Mutation$InsertInvestmentMutation {
  Mutation$InsertInvestmentMutation({
    this.insert_investment_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertInvestmentMutation.fromJson(
      Map<String, dynamic> json) {
    final l$insert_investment_one = json['insert_investment_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertInvestmentMutation(
      insert_investment_one: l$insert_investment_one == null
          ? null
          : Fragment$investmentData.fromJson(
              (l$insert_investment_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$investmentData? insert_investment_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_investment_one = insert_investment_one;
    _resultData['insert_investment_one'] = l$insert_investment_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_investment_one = insert_investment_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_investment_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertInvestmentMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_investment_one = insert_investment_one;
    final lOther$insert_investment_one = other.insert_investment_one;
    if (l$insert_investment_one != lOther$insert_investment_one) {
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

extension UtilityExtension$Mutation$InsertInvestmentMutation
    on Mutation$InsertInvestmentMutation {
  CopyWith$Mutation$InsertInvestmentMutation<Mutation$InsertInvestmentMutation>
      get copyWith => CopyWith$Mutation$InsertInvestmentMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertInvestmentMutation<TRes> {
  factory CopyWith$Mutation$InsertInvestmentMutation(
    Mutation$InsertInvestmentMutation instance,
    TRes Function(Mutation$InsertInvestmentMutation) then,
  ) = _CopyWithImpl$Mutation$InsertInvestmentMutation;

  factory CopyWith$Mutation$InsertInvestmentMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertInvestmentMutation;

  TRes call({
    Fragment$investmentData? insert_investment_one,
    String? $__typename,
  });
  CopyWith$Fragment$investmentData<TRes> get insert_investment_one;
}

class _CopyWithImpl$Mutation$InsertInvestmentMutation<TRes>
    implements CopyWith$Mutation$InsertInvestmentMutation<TRes> {
  _CopyWithImpl$Mutation$InsertInvestmentMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertInvestmentMutation _instance;

  final TRes Function(Mutation$InsertInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_investment_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertInvestmentMutation(
        insert_investment_one: insert_investment_one == _undefined
            ? _instance.insert_investment_one
            : (insert_investment_one as Fragment$investmentData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$investmentData<TRes> get insert_investment_one {
    final local$insert_investment_one = _instance.insert_investment_one;
    return local$insert_investment_one == null
        ? CopyWith$Fragment$investmentData.stub(_then(_instance))
        : CopyWith$Fragment$investmentData(
            local$insert_investment_one, (e) => call(insert_investment_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertInvestmentMutation<TRes>
    implements CopyWith$Mutation$InsertInvestmentMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertInvestmentMutation(this._res);

  TRes _res;

  call({
    Fragment$investmentData? insert_investment_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$investmentData<TRes> get insert_investment_one =>
      CopyWith$Fragment$investmentData.stub(_res);
}

const documentNodeMutationInsertInvestmentMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertInvestmentMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'investment_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_investment_one'),
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
            name: NameNode(value: 'investmentData'),
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
  fragmentDefinitioninvestmentData,
]);
Mutation$InsertInvestmentMutation _parserFn$Mutation$InsertInvestmentMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertInvestmentMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertInvestmentMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertInvestmentMutation?,
);

class Options$Mutation$InsertInvestmentMutation
    extends graphql.MutationOptions<Mutation$InsertInvestmentMutation> {
  Options$Mutation$InsertInvestmentMutation({
    String? operationName,
    required Variables$Mutation$InsertInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertInvestmentMutation>? update,
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
                        : _parserFn$Mutation$InsertInvestmentMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertInvestmentMutation,
          parserFn: _parserFn$Mutation$InsertInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$InsertInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertInvestmentMutation
    extends graphql.WatchQueryOptions<Mutation$InsertInvestmentMutation> {
  WatchOptions$Mutation$InsertInvestmentMutation({
    String? operationName,
    required Variables$Mutation$InsertInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertInvestmentMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertInvestmentMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertInvestmentMutation,
        );
}

extension ClientExtension$Mutation$InsertInvestmentMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertInvestmentMutation>>
      mutate$InsertInvestmentMutation(
              Options$Mutation$InsertInvestmentMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertInvestmentMutation>
      watchMutation$InsertInvestmentMutation(
              WatchOptions$Mutation$InsertInvestmentMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertInvestmentMutation$HookResult {
  Mutation$InsertInvestmentMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertInvestmentMutation runMutation;

  final graphql.QueryResult<Mutation$InsertInvestmentMutation> result;
}

Mutation$InsertInvestmentMutation$HookResult
    useMutation$InsertInvestmentMutation(
        [WidgetOptions$Mutation$InsertInvestmentMutation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$InsertInvestmentMutation());
  return Mutation$InsertInvestmentMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertInvestmentMutation>
    useWatchMutation$InsertInvestmentMutation(
            WatchOptions$Mutation$InsertInvestmentMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertInvestmentMutation
    extends graphql.MutationOptions<Mutation$InsertInvestmentMutation> {
  WidgetOptions$Mutation$InsertInvestmentMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertInvestmentMutation>? update,
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
                        : _parserFn$Mutation$InsertInvestmentMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertInvestmentMutation,
          parserFn: _parserFn$Mutation$InsertInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$InsertInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertInvestmentMutation
    = graphql.MultiSourceResult<Mutation$InsertInvestmentMutation> Function(
  Variables$Mutation$InsertInvestmentMutation, {
  Object? optimisticResult,
  Mutation$InsertInvestmentMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertInvestmentMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertInvestmentMutation,
  graphql.QueryResult<Mutation$InsertInvestmentMutation>?,
);

class Mutation$InsertInvestmentMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertInvestmentMutation> {
  Mutation$InsertInvestmentMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertInvestmentMutation? options,
    required Builder$Mutation$InsertInvestmentMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertInvestmentMutation(),
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

class Variables$Mutation$UpdateInvestmentMutation {
  factory Variables$Mutation$UpdateInvestmentMutation({
    required Input$investment_set_input data,
    int? investment_id,
  }) =>
      Variables$Mutation$UpdateInvestmentMutation._({
        r'data': data,
        if (investment_id != null) r'investment_id': investment_id,
      });

  Variables$Mutation$UpdateInvestmentMutation._(this._$data);

  factory Variables$Mutation$UpdateInvestmentMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$investment_set_input.fromJson((l$data as Map<String, dynamic>));
    if (data.containsKey('investment_id')) {
      final l$investment_id = data['investment_id'];
      result$data['investment_id'] = (l$investment_id as int?);
    }
    return Variables$Mutation$UpdateInvestmentMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investment_set_input get data =>
      (_$data['data'] as Input$investment_set_input);
  int? get investment_id => (_$data['investment_id'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    if (_$data.containsKey('investment_id')) {
      final l$investment_id = investment_id;
      result$data['investment_id'] = l$investment_id;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateInvestmentMutation<
          Variables$Mutation$UpdateInvestmentMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateInvestmentMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateInvestmentMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$investment_id = investment_id;
    final lOther$investment_id = other.investment_id;
    if (_$data.containsKey('investment_id') !=
        other._$data.containsKey('investment_id')) {
      return false;
    }
    if (l$investment_id != lOther$investment_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$investment_id = investment_id;
    return Object.hashAll([
      l$data,
      _$data.containsKey('investment_id') ? l$investment_id : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateInvestmentMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateInvestmentMutation(
    Variables$Mutation$UpdateInvestmentMutation instance,
    TRes Function(Variables$Mutation$UpdateInvestmentMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateInvestmentMutation;

  factory CopyWith$Variables$Mutation$UpdateInvestmentMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateInvestmentMutation;

  TRes call({
    Input$investment_set_input? data,
    int? investment_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateInvestmentMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateInvestmentMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateInvestmentMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateInvestmentMutation _instance;

  final TRes Function(Variables$Mutation$UpdateInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? investment_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateInvestmentMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$investment_set_input),
        if (investment_id != _undefined)
          'investment_id': (investment_id as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateInvestmentMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateInvestmentMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateInvestmentMutation(this._res);

  TRes _res;

  call({
    Input$investment_set_input? data,
    int? investment_id,
  }) =>
      _res;
}

class Mutation$UpdateInvestmentMutation {
  Mutation$UpdateInvestmentMutation({
    this.update_investment,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateInvestmentMutation.fromJson(
      Map<String, dynamic> json) {
    final l$update_investment = json['update_investment'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateInvestmentMutation(
      update_investment: l$update_investment == null
          ? null
          : Mutation$UpdateInvestmentMutation$update_investment.fromJson(
              (l$update_investment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateInvestmentMutation$update_investment? update_investment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_investment = update_investment;
    _resultData['update_investment'] = l$update_investment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_investment = update_investment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_investment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateInvestmentMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_investment = update_investment;
    final lOther$update_investment = other.update_investment;
    if (l$update_investment != lOther$update_investment) {
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

extension UtilityExtension$Mutation$UpdateInvestmentMutation
    on Mutation$UpdateInvestmentMutation {
  CopyWith$Mutation$UpdateInvestmentMutation<Mutation$UpdateInvestmentMutation>
      get copyWith => CopyWith$Mutation$UpdateInvestmentMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateInvestmentMutation<TRes> {
  factory CopyWith$Mutation$UpdateInvestmentMutation(
    Mutation$UpdateInvestmentMutation instance,
    TRes Function(Mutation$UpdateInvestmentMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateInvestmentMutation;

  factory CopyWith$Mutation$UpdateInvestmentMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateInvestmentMutation;

  TRes call({
    Mutation$UpdateInvestmentMutation$update_investment? update_investment,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateInvestmentMutation$update_investment<TRes>
      get update_investment;
}

class _CopyWithImpl$Mutation$UpdateInvestmentMutation<TRes>
    implements CopyWith$Mutation$UpdateInvestmentMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateInvestmentMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateInvestmentMutation _instance;

  final TRes Function(Mutation$UpdateInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_investment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateInvestmentMutation(
        update_investment: update_investment == _undefined
            ? _instance.update_investment
            : (update_investment
                as Mutation$UpdateInvestmentMutation$update_investment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateInvestmentMutation$update_investment<TRes>
      get update_investment {
    final local$update_investment = _instance.update_investment;
    return local$update_investment == null
        ? CopyWith$Mutation$UpdateInvestmentMutation$update_investment.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateInvestmentMutation$update_investment(
            local$update_investment, (e) => call(update_investment: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateInvestmentMutation<TRes>
    implements CopyWith$Mutation$UpdateInvestmentMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateInvestmentMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateInvestmentMutation$update_investment? update_investment,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateInvestmentMutation$update_investment<TRes>
      get update_investment =>
          CopyWith$Mutation$UpdateInvestmentMutation$update_investment.stub(
              _res);
}

const documentNodeMutationUpdateInvestmentMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateInvestmentMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'investment_set_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'investment_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_investment'),
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
                name: NameNode(value: 'investment_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'investment_id')),
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
                name: NameNode(value: 'investmentData'),
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
  fragmentDefinitioninvestmentData,
]);
Mutation$UpdateInvestmentMutation _parserFn$Mutation$UpdateInvestmentMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateInvestmentMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateInvestmentMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateInvestmentMutation?,
);

class Options$Mutation$UpdateInvestmentMutation
    extends graphql.MutationOptions<Mutation$UpdateInvestmentMutation> {
  Options$Mutation$UpdateInvestmentMutation({
    String? operationName,
    required Variables$Mutation$UpdateInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateInvestmentMutation>? update,
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
                        : _parserFn$Mutation$UpdateInvestmentMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateInvestmentMutation,
          parserFn: _parserFn$Mutation$UpdateInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$UpdateInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateInvestmentMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateInvestmentMutation> {
  WatchOptions$Mutation$UpdateInvestmentMutation({
    String? operationName,
    required Variables$Mutation$UpdateInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateInvestmentMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateInvestmentMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateInvestmentMutation,
        );
}

extension ClientExtension$Mutation$UpdateInvestmentMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateInvestmentMutation>>
      mutate$UpdateInvestmentMutation(
              Options$Mutation$UpdateInvestmentMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateInvestmentMutation>
      watchMutation$UpdateInvestmentMutation(
              WatchOptions$Mutation$UpdateInvestmentMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateInvestmentMutation$HookResult {
  Mutation$UpdateInvestmentMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateInvestmentMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateInvestmentMutation> result;
}

Mutation$UpdateInvestmentMutation$HookResult
    useMutation$UpdateInvestmentMutation(
        [WidgetOptions$Mutation$UpdateInvestmentMutation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$UpdateInvestmentMutation());
  return Mutation$UpdateInvestmentMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateInvestmentMutation>
    useWatchMutation$UpdateInvestmentMutation(
            WatchOptions$Mutation$UpdateInvestmentMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateInvestmentMutation
    extends graphql.MutationOptions<Mutation$UpdateInvestmentMutation> {
  WidgetOptions$Mutation$UpdateInvestmentMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateInvestmentMutation>? update,
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
                        : _parserFn$Mutation$UpdateInvestmentMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateInvestmentMutation,
          parserFn: _parserFn$Mutation$UpdateInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$UpdateInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateInvestmentMutation
    = graphql.MultiSourceResult<Mutation$UpdateInvestmentMutation> Function(
  Variables$Mutation$UpdateInvestmentMutation, {
  Object? optimisticResult,
  Mutation$UpdateInvestmentMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateInvestmentMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateInvestmentMutation,
  graphql.QueryResult<Mutation$UpdateInvestmentMutation>?,
);

class Mutation$UpdateInvestmentMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateInvestmentMutation> {
  Mutation$UpdateInvestmentMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateInvestmentMutation? options,
    required Builder$Mutation$UpdateInvestmentMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateInvestmentMutation(),
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

class Mutation$UpdateInvestmentMutation$update_investment {
  Mutation$UpdateInvestmentMutation$update_investment({
    required this.returning,
    this.$__typename = 'investment_mutation_response',
  });

  factory Mutation$UpdateInvestmentMutation$update_investment.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateInvestmentMutation$update_investment(
      returning: (l$returning as List<dynamic>)
          .map((e) =>
              Fragment$investmentData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$investmentData> returning;

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
    if (!(other is Mutation$UpdateInvestmentMutation$update_investment) ||
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

extension UtilityExtension$Mutation$UpdateInvestmentMutation$update_investment
    on Mutation$UpdateInvestmentMutation$update_investment {
  CopyWith$Mutation$UpdateInvestmentMutation$update_investment<
          Mutation$UpdateInvestmentMutation$update_investment>
      get copyWith =>
          CopyWith$Mutation$UpdateInvestmentMutation$update_investment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateInvestmentMutation$update_investment<
    TRes> {
  factory CopyWith$Mutation$UpdateInvestmentMutation$update_investment(
    Mutation$UpdateInvestmentMutation$update_investment instance,
    TRes Function(Mutation$UpdateInvestmentMutation$update_investment) then,
  ) = _CopyWithImpl$Mutation$UpdateInvestmentMutation$update_investment;

  factory CopyWith$Mutation$UpdateInvestmentMutation$update_investment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateInvestmentMutation$update_investment;

  TRes call({
    List<Fragment$investmentData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$investmentData> Function(
              Iterable<
                  CopyWith$Fragment$investmentData<Fragment$investmentData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateInvestmentMutation$update_investment<TRes>
    implements
        CopyWith$Mutation$UpdateInvestmentMutation$update_investment<TRes> {
  _CopyWithImpl$Mutation$UpdateInvestmentMutation$update_investment(
    this._instance,
    this._then,
  );

  final Mutation$UpdateInvestmentMutation$update_investment _instance;

  final TRes Function(Mutation$UpdateInvestmentMutation$update_investment)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateInvestmentMutation$update_investment(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$investmentData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$investmentData> Function(
                  Iterable<
                      CopyWith$Fragment$investmentData<
                          Fragment$investmentData>>)
              _fn) =>
      call(
          returning: _fn(
              _instance.returning.map((e) => CopyWith$Fragment$investmentData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateInvestmentMutation$update_investment<
        TRes>
    implements
        CopyWith$Mutation$UpdateInvestmentMutation$update_investment<TRes> {
  _CopyWithStubImpl$Mutation$UpdateInvestmentMutation$update_investment(
      this._res);

  TRes _res;

  call({
    List<Fragment$investmentData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetByPkInvestmentQuery {
  factory Variables$Query$GetByPkInvestmentQuery(
          {required int investment_id}) =>
      Variables$Query$GetByPkInvestmentQuery._({
        r'investment_id': investment_id,
      });

  Variables$Query$GetByPkInvestmentQuery._(this._$data);

  factory Variables$Query$GetByPkInvestmentQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$investment_id = data['investment_id'];
    result$data['investment_id'] = (l$investment_id as int);
    return Variables$Query$GetByPkInvestmentQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int get investment_id => (_$data['investment_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$investment_id = investment_id;
    result$data['investment_id'] = l$investment_id;
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkInvestmentQuery<
          Variables$Query$GetByPkInvestmentQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkInvestmentQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkInvestmentQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_id = investment_id;
    final lOther$investment_id = other.investment_id;
    if (l$investment_id != lOther$investment_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$investment_id = investment_id;
    return Object.hashAll([l$investment_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkInvestmentQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkInvestmentQuery(
    Variables$Query$GetByPkInvestmentQuery instance,
    TRes Function(Variables$Query$GetByPkInvestmentQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkInvestmentQuery;

  factory CopyWith$Variables$Query$GetByPkInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkInvestmentQuery;

  TRes call({int? investment_id});
}

class _CopyWithImpl$Variables$Query$GetByPkInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkInvestmentQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkInvestmentQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkInvestmentQuery _instance;

  final TRes Function(Variables$Query$GetByPkInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? investment_id = _undefined}) =>
      _then(Variables$Query$GetByPkInvestmentQuery._({
        ..._instance._$data,
        if (investment_id != _undefined && investment_id != null)
          'investment_id': (investment_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkInvestmentQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkInvestmentQuery(this._res);

  TRes _res;

  call({int? investment_id}) => _res;
}

class Query$GetByPkInvestmentQuery {
  Query$GetByPkInvestmentQuery({
    this.investment_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkInvestmentQuery.fromJson(Map<String, dynamic> json) {
    final l$investment_by_pk = json['investment_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkInvestmentQuery(
      investment_by_pk: l$investment_by_pk == null
          ? null
          : Query$GetByPkInvestmentQuery$investment_by_pk.fromJson(
              (l$investment_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetByPkInvestmentQuery$investment_by_pk? investment_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment_by_pk = investment_by_pk;
    _resultData['investment_by_pk'] = l$investment_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment_by_pk = investment_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$investment_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkInvestmentQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_by_pk = investment_by_pk;
    final lOther$investment_by_pk = other.investment_by_pk;
    if (l$investment_by_pk != lOther$investment_by_pk) {
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

extension UtilityExtension$Query$GetByPkInvestmentQuery
    on Query$GetByPkInvestmentQuery {
  CopyWith$Query$GetByPkInvestmentQuery<Query$GetByPkInvestmentQuery>
      get copyWith => CopyWith$Query$GetByPkInvestmentQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkInvestmentQuery<TRes> {
  factory CopyWith$Query$GetByPkInvestmentQuery(
    Query$GetByPkInvestmentQuery instance,
    TRes Function(Query$GetByPkInvestmentQuery) then,
  ) = _CopyWithImpl$Query$GetByPkInvestmentQuery;

  factory CopyWith$Query$GetByPkInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkInvestmentQuery;

  TRes call({
    Query$GetByPkInvestmentQuery$investment_by_pk? investment_by_pk,
    String? $__typename,
  });
  CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk<TRes>
      get investment_by_pk;
}

class _CopyWithImpl$Query$GetByPkInvestmentQuery<TRes>
    implements CopyWith$Query$GetByPkInvestmentQuery<TRes> {
  _CopyWithImpl$Query$GetByPkInvestmentQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkInvestmentQuery _instance;

  final TRes Function(Query$GetByPkInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkInvestmentQuery(
        investment_by_pk: investment_by_pk == _undefined
            ? _instance.investment_by_pk
            : (investment_by_pk
                as Query$GetByPkInvestmentQuery$investment_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk<TRes>
      get investment_by_pk {
    final local$investment_by_pk = _instance.investment_by_pk;
    return local$investment_by_pk == null
        ? CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk.stub(
            _then(_instance))
        : CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk(
            local$investment_by_pk, (e) => call(investment_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkInvestmentQuery<TRes>
    implements CopyWith$Query$GetByPkInvestmentQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkInvestmentQuery(this._res);

  TRes _res;

  call({
    Query$GetByPkInvestmentQuery$investment_by_pk? investment_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk<TRes>
      get investment_by_pk =>
          CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk.stub(_res);
}

const documentNodeQueryGetByPkInvestmentQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkInvestmentQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'investment_id')),
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
        name: NameNode(value: 'investment_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'investment_id'),
            value: VariableNode(name: NameNode(value: 'investment_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'investmentData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'investor'),
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
  fragmentDefinitioninvestmentData,
  fragmentDefinitioninvestorData,
]);
Query$GetByPkInvestmentQuery _parserFn$Query$GetByPkInvestmentQuery(
        Map<String, dynamic> data) =>
    Query$GetByPkInvestmentQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkInvestmentQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetByPkInvestmentQuery?,
);

class Options$Query$GetByPkInvestmentQuery
    extends graphql.QueryOptions<Query$GetByPkInvestmentQuery> {
  Options$Query$GetByPkInvestmentQuery({
    String? operationName,
    required Variables$Query$GetByPkInvestmentQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkInvestmentQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkInvestmentQuery? onComplete,
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
                        : _parserFn$Query$GetByPkInvestmentQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkInvestmentQuery,
          parserFn: _parserFn$Query$GetByPkInvestmentQuery,
        );

  final OnQueryComplete$Query$GetByPkInvestmentQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkInvestmentQuery
    extends graphql.WatchQueryOptions<Query$GetByPkInvestmentQuery> {
  WatchOptions$Query$GetByPkInvestmentQuery({
    String? operationName,
    required Variables$Query$GetByPkInvestmentQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkInvestmentQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkInvestmentQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkInvestmentQuery,
        );
}

class FetchMoreOptions$Query$GetByPkInvestmentQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkInvestmentQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkInvestmentQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkInvestmentQuery,
        );
}

extension ClientExtension$Query$GetByPkInvestmentQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkInvestmentQuery>>
      query$GetByPkInvestmentQuery(
              Options$Query$GetByPkInvestmentQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetByPkInvestmentQuery>
      watchQuery$GetByPkInvestmentQuery(
              WatchOptions$Query$GetByPkInvestmentQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetByPkInvestmentQuery({
    required Query$GetByPkInvestmentQuery data,
    required Variables$Query$GetByPkInvestmentQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetByPkInvestmentQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkInvestmentQuery? readQuery$GetByPkInvestmentQuery({
    required Variables$Query$GetByPkInvestmentQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetByPkInvestmentQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetByPkInvestmentQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkInvestmentQuery>
    useQuery$GetByPkInvestmentQuery(
            Options$Query$GetByPkInvestmentQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkInvestmentQuery>
    useWatchQuery$GetByPkInvestmentQuery(
            WatchOptions$Query$GetByPkInvestmentQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetByPkInvestmentQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkInvestmentQuery> {
  Query$GetByPkInvestmentQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkInvestmentQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkInvestmentQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetByPkInvestmentQuery$investment_by_pk
    implements Fragment$investmentData {
  Query$GetByPkInvestmentQuery$investment_by_pk({
    required this.investment_id,
    required this.investor_id,
    required this.investment_amount,
    this.updated_at,
    this.created_at,
    this.$__typename = 'investment',
    required this.investor,
  });

  factory Query$GetByPkInvestmentQuery$investment_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$investment_id = json['investment_id'];
    final l$investor_id = json['investor_id'];
    final l$investment_amount = json['investment_amount'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$investor = json['investor'];
    return Query$GetByPkInvestmentQuery$investment_by_pk(
      investment_id: (l$investment_id as int),
      investor_id: (l$investor_id as int),
      investment_amount: (l$investment_amount as int),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      investor:
          Fragment$investorData.fromJson((l$investor as Map<String, dynamic>)),
    );
  }

  final int investment_id;

  final int investor_id;

  final int investment_amount;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$investorData investor;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment_id = investment_id;
    _resultData['investment_id'] = l$investment_id;
    final l$investor_id = investor_id;
    _resultData['investor_id'] = l$investor_id;
    final l$investment_amount = investment_amount;
    _resultData['investment_amount'] = l$investment_amount;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$investor = investor;
    _resultData['investor'] = l$investor.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment_id = investment_id;
    final l$investor_id = investor_id;
    final l$investment_amount = investment_amount;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$investor = investor;
    return Object.hashAll([
      l$investment_id,
      l$investor_id,
      l$investment_amount,
      l$updated_at,
      l$created_at,
      l$$__typename,
      l$investor,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkInvestmentQuery$investment_by_pk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_id = investment_id;
    final lOther$investment_id = other.investment_id;
    if (l$investment_id != lOther$investment_id) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (l$investor_id != lOther$investor_id) {
      return false;
    }
    final l$investment_amount = investment_amount;
    final lOther$investment_amount = other.investment_amount;
    if (l$investment_amount != lOther$investment_amount) {
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
    final l$investor = investor;
    final lOther$investor = other.investor;
    if (l$investor != lOther$investor) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetByPkInvestmentQuery$investment_by_pk
    on Query$GetByPkInvestmentQuery$investment_by_pk {
  CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk<
          Query$GetByPkInvestmentQuery$investment_by_pk>
      get copyWith => CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk<TRes> {
  factory CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk(
    Query$GetByPkInvestmentQuery$investment_by_pk instance,
    TRes Function(Query$GetByPkInvestmentQuery$investment_by_pk) then,
  ) = _CopyWithImpl$Query$GetByPkInvestmentQuery$investment_by_pk;

  factory CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetByPkInvestmentQuery$investment_by_pk;

  TRes call({
    int? investment_id,
    int? investor_id,
    int? investment_amount,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$investorData? investor,
  });
  CopyWith$Fragment$investorData<TRes> get investor;
}

class _CopyWithImpl$Query$GetByPkInvestmentQuery$investment_by_pk<TRes>
    implements CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk<TRes> {
  _CopyWithImpl$Query$GetByPkInvestmentQuery$investment_by_pk(
    this._instance,
    this._then,
  );

  final Query$GetByPkInvestmentQuery$investment_by_pk _instance;

  final TRes Function(Query$GetByPkInvestmentQuery$investment_by_pk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment_id = _undefined,
    Object? investor_id = _undefined,
    Object? investment_amount = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? investor = _undefined,
  }) =>
      _then(Query$GetByPkInvestmentQuery$investment_by_pk(
        investment_id: investment_id == _undefined || investment_id == null
            ? _instance.investment_id
            : (investment_id as int),
        investor_id: investor_id == _undefined || investor_id == null
            ? _instance.investor_id
            : (investor_id as int),
        investment_amount:
            investment_amount == _undefined || investment_amount == null
                ? _instance.investment_amount
                : (investment_amount as int),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        investor: investor == _undefined || investor == null
            ? _instance.investor
            : (investor as Fragment$investorData),
      ));
  CopyWith$Fragment$investorData<TRes> get investor {
    final local$investor = _instance.investor;
    return CopyWith$Fragment$investorData(
        local$investor, (e) => call(investor: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkInvestmentQuery$investment_by_pk<TRes>
    implements CopyWith$Query$GetByPkInvestmentQuery$investment_by_pk<TRes> {
  _CopyWithStubImpl$Query$GetByPkInvestmentQuery$investment_by_pk(this._res);

  TRes _res;

  call({
    int? investment_id,
    int? investor_id,
    int? investment_amount,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$investorData? investor,
  }) =>
      _res;
  CopyWith$Fragment$investorData<TRes> get investor =>
      CopyWith$Fragment$investorData.stub(_res);
}

class Variables$Query$GetInvestorInvestmentAggregateQuery {
  factory Variables$Query$GetInvestorInvestmentAggregateQuery({
    int? investor_id,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  }) =>
      Variables$Query$GetInvestorInvestmentAggregateQuery._({
        if (investor_id != null) r'investor_id': investor_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetInvestorInvestmentAggregateQuery._(this._$data);

  factory Variables$Query$GetInvestorInvestmentAggregateQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('investor_id')) {
      final l$investor_id = data['investor_id'];
      result$data['investor_id'] = (l$investor_id as int?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$investment_select_column((e as String)))
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
              Input$investment_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetInvestorInvestmentAggregateQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get investor_id => (_$data['investor_id'] as int?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$investment_order_by>?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('investor_id')) {
      final l$investor_id = investor_id;
      result$data['investor_id'] = l$investor_id;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('distinct_on')) {
      final l$distinct_on = distinct_on;
      result$data['distinct_on'] = l$distinct_on
          ?.map((e) => toJson$Enum$investment_select_column(e))
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

  CopyWith$Variables$Query$GetInvestorInvestmentAggregateQuery<
          Variables$Query$GetInvestorInvestmentAggregateQuery>
      get copyWith =>
          CopyWith$Variables$Query$GetInvestorInvestmentAggregateQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetInvestorInvestmentAggregateQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (_$data.containsKey('investor_id') !=
        other._$data.containsKey('investor_id')) {
      return false;
    }
    if (l$investor_id != lOther$investor_id) {
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
    final l$investor_id = investor_id;
    final l$limit = limit;
    final l$distinct_on = distinct_on;
    final l$offset = offset;
    final l$order_by = order_by;
    return Object.hashAll([
      _$data.containsKey('investor_id') ? l$investor_id : const {},
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

abstract class CopyWith$Variables$Query$GetInvestorInvestmentAggregateQuery<
    TRes> {
  factory CopyWith$Variables$Query$GetInvestorInvestmentAggregateQuery(
    Variables$Query$GetInvestorInvestmentAggregateQuery instance,
    TRes Function(Variables$Query$GetInvestorInvestmentAggregateQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetInvestorInvestmentAggregateQuery;

  factory CopyWith$Variables$Query$GetInvestorInvestmentAggregateQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetInvestorInvestmentAggregateQuery;

  TRes call({
    int? investor_id,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetInvestorInvestmentAggregateQuery<TRes>
    implements
        CopyWith$Variables$Query$GetInvestorInvestmentAggregateQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetInvestorInvestmentAggregateQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetInvestorInvestmentAggregateQuery _instance;

  final TRes Function(Variables$Query$GetInvestorInvestmentAggregateQuery)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetInvestorInvestmentAggregateQuery._({
        ..._instance._$data,
        if (investor_id != _undefined) 'investor_id': (investor_id as int?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetInvestorInvestmentAggregateQuery<
        TRes>
    implements
        CopyWith$Variables$Query$GetInvestorInvestmentAggregateQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetInvestorInvestmentAggregateQuery(
      this._res);

  TRes _res;

  call({
    int? investor_id,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetInvestorInvestmentAggregateQuery {
  Query$GetInvestorInvestmentAggregateQuery({
    required this.investment_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$GetInvestorInvestmentAggregateQuery.fromJson(
      Map<String, dynamic> json) {
    final l$investment_aggregate = json['investment_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetInvestorInvestmentAggregateQuery(
      investment_aggregate:
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate
              .fromJson((l$investment_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate
      investment_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment_aggregate = investment_aggregate;
    _resultData['investment_aggregate'] = l$investment_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment_aggregate = investment_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$investment_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInvestorInvestmentAggregateQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_aggregate = investment_aggregate;
    final lOther$investment_aggregate = other.investment_aggregate;
    if (l$investment_aggregate != lOther$investment_aggregate) {
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

extension UtilityExtension$Query$GetInvestorInvestmentAggregateQuery
    on Query$GetInvestorInvestmentAggregateQuery {
  CopyWith$Query$GetInvestorInvestmentAggregateQuery<
          Query$GetInvestorInvestmentAggregateQuery>
      get copyWith => CopyWith$Query$GetInvestorInvestmentAggregateQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInvestorInvestmentAggregateQuery<TRes> {
  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery(
    Query$GetInvestorInvestmentAggregateQuery instance,
    TRes Function(Query$GetInvestorInvestmentAggregateQuery) then,
  ) = _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery;

  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery;

  TRes call({
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate?
        investment_aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<TRes>
      get investment_aggregate;
}

class _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery<TRes>
    implements CopyWith$Query$GetInvestorInvestmentAggregateQuery<TRes> {
  _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery(
    this._instance,
    this._then,
  );

  final Query$GetInvestorInvestmentAggregateQuery _instance;

  final TRes Function(Query$GetInvestorInvestmentAggregateQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInvestorInvestmentAggregateQuery(
        investment_aggregate: investment_aggregate == _undefined ||
                investment_aggregate == null
            ? _instance.investment_aggregate
            : (investment_aggregate
                as Query$GetInvestorInvestmentAggregateQuery$investment_aggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<TRes>
      get investment_aggregate {
    final local$investment_aggregate = _instance.investment_aggregate;
    return CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate(
        local$investment_aggregate, (e) => call(investment_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery<TRes>
    implements CopyWith$Query$GetInvestorInvestmentAggregateQuery<TRes> {
  _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery(this._res);

  TRes _res;

  call({
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate?
        investment_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<TRes>
      get investment_aggregate =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate
              .stub(_res);
}

const documentNodeQueryGetInvestorInvestmentAggregateQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetInvestorInvestmentAggregateQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'investor_id')),
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
            name: NameNode(value: 'investment_select_column'),
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
            name: NameNode(value: 'investment_order_by'),
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
        name: NameNode(value: 'investment_aggregate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'investor_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'investor_id')),
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
                    name: NameNode(value: 'investment_amount'),
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
                    name: NameNode(value: 'investment_amount'),
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
Query$GetInvestorInvestmentAggregateQuery
    _parserFn$Query$GetInvestorInvestmentAggregateQuery(
            Map<String, dynamic> data) =>
        Query$GetInvestorInvestmentAggregateQuery.fromJson(data);
typedef OnQueryComplete$Query$GetInvestorInvestmentAggregateQuery
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetInvestorInvestmentAggregateQuery?,
);

class Options$Query$GetInvestorInvestmentAggregateQuery
    extends graphql.QueryOptions<Query$GetInvestorInvestmentAggregateQuery> {
  Options$Query$GetInvestorInvestmentAggregateQuery({
    String? operationName,
    Variables$Query$GetInvestorInvestmentAggregateQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetInvestorInvestmentAggregateQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetInvestorInvestmentAggregateQuery? onComplete,
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
                        : _parserFn$Query$GetInvestorInvestmentAggregateQuery(
                            data),
                  ),
          onError: onError,
          document: documentNodeQueryGetInvestorInvestmentAggregateQuery,
          parserFn: _parserFn$Query$GetInvestorInvestmentAggregateQuery,
        );

  final OnQueryComplete$Query$GetInvestorInvestmentAggregateQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetInvestorInvestmentAggregateQuery extends graphql
    .WatchQueryOptions<Query$GetInvestorInvestmentAggregateQuery> {
  WatchOptions$Query$GetInvestorInvestmentAggregateQuery({
    String? operationName,
    Variables$Query$GetInvestorInvestmentAggregateQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetInvestorInvestmentAggregateQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetInvestorInvestmentAggregateQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetInvestorInvestmentAggregateQuery,
        );
}

class FetchMoreOptions$Query$GetInvestorInvestmentAggregateQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetInvestorInvestmentAggregateQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetInvestorInvestmentAggregateQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetInvestorInvestmentAggregateQuery,
        );
}

extension ClientExtension$Query$GetInvestorInvestmentAggregateQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetInvestorInvestmentAggregateQuery>>
      query$GetInvestorInvestmentAggregateQuery(
              [Options$Query$GetInvestorInvestmentAggregateQuery?
                  options]) async =>
          await this.query(
              options ?? Options$Query$GetInvestorInvestmentAggregateQuery());
  graphql.ObservableQuery<Query$GetInvestorInvestmentAggregateQuery>
      watchQuery$GetInvestorInvestmentAggregateQuery(
              [WatchOptions$Query$GetInvestorInvestmentAggregateQuery?
                  options]) =>
          this.watchQuery(options ??
              WatchOptions$Query$GetInvestorInvestmentAggregateQuery());
  void writeQuery$GetInvestorInvestmentAggregateQuery({
    required Query$GetInvestorInvestmentAggregateQuery data,
    Variables$Query$GetInvestorInvestmentAggregateQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetInvestorInvestmentAggregateQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetInvestorInvestmentAggregateQuery?
      readQuery$GetInvestorInvestmentAggregateQuery({
    Variables$Query$GetInvestorInvestmentAggregateQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetInvestorInvestmentAggregateQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetInvestorInvestmentAggregateQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetInvestorInvestmentAggregateQuery>
    useQuery$GetInvestorInvestmentAggregateQuery(
            [Options$Query$GetInvestorInvestmentAggregateQuery? options]) =>
        graphql_flutter.useQuery(
            options ?? Options$Query$GetInvestorInvestmentAggregateQuery());
graphql.ObservableQuery<Query$GetInvestorInvestmentAggregateQuery>
    useWatchQuery$GetInvestorInvestmentAggregateQuery(
            [WatchOptions$Query$GetInvestorInvestmentAggregateQuery?
                options]) =>
        graphql_flutter.useWatchQuery(options ??
            WatchOptions$Query$GetInvestorInvestmentAggregateQuery());

class Query$GetInvestorInvestmentAggregateQuery$Widget
    extends graphql_flutter.Query<Query$GetInvestorInvestmentAggregateQuery> {
  Query$GetInvestorInvestmentAggregateQuery$Widget({
    widgets.Key? key,
    Options$Query$GetInvestorInvestmentAggregateQuery? options,
    required graphql_flutter
            .QueryBuilder<Query$GetInvestorInvestmentAggregateQuery>
        builder,
  }) : super(
          key: key,
          options:
              options ?? Options$Query$GetInvestorInvestmentAggregateQuery(),
          builder: builder,
        );
}

class Query$GetInvestorInvestmentAggregateQuery$investment_aggregate {
  Query$GetInvestorInvestmentAggregateQuery$investment_aggregate({
    this.aggregate,
    this.$__typename = 'investment_aggregate',
  });

  factory Query$GetInvestorInvestmentAggregateQuery$investment_aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetInvestorInvestmentAggregateQuery$investment_aggregate(
      aggregate: l$aggregate == null
          ? null
          : Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate
              .fromJson((l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate?
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
    if (!(other
            is Query$GetInvestorInvestmentAggregateQuery$investment_aggregate) ||
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

extension UtilityExtension$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate
    on Query$GetInvestorInvestmentAggregateQuery$investment_aggregate {
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate>
      get copyWith =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<
    TRes> {
  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate(
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate instance,
    TRes Function(
            Query$GetInvestorInvestmentAggregateQuery$investment_aggregate)
        then,
  ) = _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate;

  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate;

  TRes call({
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate?
        aggregate,
    String? $__typename,
  });
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
      TRes> get aggregate;
}

class _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<
            TRes> {
  _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate(
    this._instance,
    this._then,
  );

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate
      _instance;

  final TRes Function(
      Query$GetInvestorInvestmentAggregateQuery$investment_aggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInvestorInvestmentAggregateQuery$investment_aggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate
                as Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
      TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate
            .stub(_then(_instance))
        : CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate(
      this._res);

  TRes _res;

  call({
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate?
        aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
          TRes>
      get aggregate =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate
              .stub(_res);
}

class Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate {
  Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate({
    required this.count,
    this.sum,
    this.avg,
    this.$__typename = 'investment_aggregate_fields',
  });

  factory Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$sum = json['sum'];
    final l$avg = json['avg'];
    final l$$__typename = json['__typename'];
    return Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate(
      count: (l$count as int),
      sum: l$sum == null
          ? null
          : Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum
              .fromJson((l$sum as Map<String, dynamic>)),
      avg: l$avg == null
          ? null
          : Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg
              .fromJson((l$avg as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum?
      sum;

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg?
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
            is Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate) ||
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

extension UtilityExtension$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate
    on Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate {
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate>
      get copyWith =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
    TRes> {
  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate(
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate
        instance,
    TRes Function(
            Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate)
        then,
  ) = _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate;

  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate;

  TRes call({
    int? count,
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum?
        sum,
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg?
        avg,
    String? $__typename,
  });
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
      TRes> get sum;
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
      TRes> get avg;
}

class _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
            TRes> {
  _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate(
    this._instance,
    this._then,
  );

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate
      _instance;

  final TRes Function(
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? sum = _undefined,
    Object? avg = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        sum: sum == _undefined
            ? _instance.sum
            : (sum
                as Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum?),
        avg: avg == _undefined
            ? _instance.avg
            : (avg
                as Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
      TRes> get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum
            .stub(_then(_instance))
        : CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum(
            local$sum, (e) => call(sum: e));
  }

  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
      TRes> get avg {
    final local$avg = _instance.avg;
    return local$avg == null
        ? CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg
            .stub(_then(_instance))
        : CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg(
            local$avg, (e) => call(avg: e));
  }
}

class _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate<
            TRes> {
  _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate(
      this._res);

  TRes _res;

  call({
    int? count,
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum?
        sum,
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg?
        avg,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
          TRes>
      get sum =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum
              .stub(_res);
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
          TRes>
      get avg =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg
              .stub(_res);
}

class Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum {
  Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum({
    this.investment_amount,
    this.$__typename = 'investment_sum_fields',
  });

  factory Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum.fromJson(
      Map<String, dynamic> json) {
    final l$investment_amount = json['investment_amount'];
    final l$$__typename = json['__typename'];
    return Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum(
      investment_amount: (l$investment_amount as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? investment_amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment_amount = investment_amount;
    _resultData['investment_amount'] = l$investment_amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment_amount = investment_amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$investment_amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_amount = investment_amount;
    final lOther$investment_amount = other.investment_amount;
    if (l$investment_amount != lOther$investment_amount) {
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

extension UtilityExtension$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum
    on Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum {
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum>
      get copyWith =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
    TRes> {
  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum(
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum
        instance,
    TRes Function(
            Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum)
        then,
  ) = _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum;

  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum;

  TRes call({
    int? investment_amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
            TRes> {
  _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum(
    this._instance,
    this._then,
  );

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum
      _instance;

  final TRes Function(
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment_amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum(
        investment_amount: investment_amount == _undefined
            ? _instance.investment_amount
            : (investment_amount as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum<
            TRes> {
  _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$sum(
      this._res);

  TRes _res;

  call({
    int? investment_amount,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg {
  Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg({
    this.investment_amount,
    this.$__typename = 'investment_avg_fields',
  });

  factory Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg.fromJson(
      Map<String, dynamic> json) {
    final l$investment_amount = json['investment_amount'];
    final l$$__typename = json['__typename'];
    return Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg(
      investment_amount: (l$investment_amount as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? investment_amount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment_amount = investment_amount;
    _resultData['investment_amount'] = l$investment_amount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment_amount = investment_amount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$investment_amount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_amount = investment_amount;
    final lOther$investment_amount = other.investment_amount;
    if (l$investment_amount != lOther$investment_amount) {
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

extension UtilityExtension$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg
    on Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg {
  CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg>
      get copyWith =>
          CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
    TRes> {
  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg(
    Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg
        instance,
    TRes Function(
            Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg)
        then,
  ) = _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg;

  factory CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg;

  TRes call({
    double? investment_amount,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
            TRes> {
  _CopyWithImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg(
    this._instance,
    this._then,
  );

  final Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg
      _instance;

  final TRes Function(
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment_amount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg(
        investment_amount: investment_amount == _undefined
            ? _instance.investment_amount
            : (investment_amount as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
        TRes>
    implements
        CopyWith$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg<
            TRes> {
  _CopyWithStubImpl$Query$GetInvestorInvestmentAggregateQuery$investment_aggregate$aggregate$avg(
      this._res);

  TRes _res;

  call({
    double? investment_amount,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetAllInvestmentQuery {
  factory Variables$Query$GetAllInvestmentQuery({
    Input$investment_bool_exp? where,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  }) =>
      Variables$Query$GetAllInvestmentQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllInvestmentQuery._(this._$data);

  factory Variables$Query$GetAllInvestmentQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$investment_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$investment_select_column((e as String)))
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
              Input$investment_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllInvestmentQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investment_bool_exp? get where =>
      (_$data['where'] as Input$investment_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$investment_order_by>?);
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
          ?.map((e) => toJson$Enum$investment_select_column(e))
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

  CopyWith$Variables$Query$GetAllInvestmentQuery<
          Variables$Query$GetAllInvestmentQuery>
      get copyWith => CopyWith$Variables$Query$GetAllInvestmentQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllInvestmentQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllInvestmentQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllInvestmentQuery(
    Variables$Query$GetAllInvestmentQuery instance,
    TRes Function(Variables$Query$GetAllInvestmentQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllInvestmentQuery;

  factory CopyWith$Variables$Query$GetAllInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllInvestmentQuery;

  TRes call({
    Input$investment_bool_exp? where,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestmentQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllInvestmentQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllInvestmentQuery _instance;

  final TRes Function(Variables$Query$GetAllInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllInvestmentQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$investment_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestmentQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllInvestmentQuery(this._res);

  TRes _res;

  call({
    Input$investment_bool_exp? where,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllInvestmentQuery {
  Query$GetAllInvestmentQuery({
    required this.investment,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllInvestmentQuery.fromJson(Map<String, dynamic> json) {
    final l$investment = json['investment'];
    final l$$__typename = json['__typename'];
    return Query$GetAllInvestmentQuery(
      investment: (l$investment as List<dynamic>)
          .map((e) =>
              Fragment$investmentData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$investmentData> investment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment = investment;
    _resultData['investment'] = l$investment.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment = investment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$investment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllInvestmentQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment = investment;
    final lOther$investment = other.investment;
    if (l$investment.length != lOther$investment.length) {
      return false;
    }
    for (int i = 0; i < l$investment.length; i++) {
      final l$investment$entry = l$investment[i];
      final lOther$investment$entry = lOther$investment[i];
      if (l$investment$entry != lOther$investment$entry) {
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

extension UtilityExtension$Query$GetAllInvestmentQuery
    on Query$GetAllInvestmentQuery {
  CopyWith$Query$GetAllInvestmentQuery<Query$GetAllInvestmentQuery>
      get copyWith => CopyWith$Query$GetAllInvestmentQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllInvestmentQuery<TRes> {
  factory CopyWith$Query$GetAllInvestmentQuery(
    Query$GetAllInvestmentQuery instance,
    TRes Function(Query$GetAllInvestmentQuery) then,
  ) = _CopyWithImpl$Query$GetAllInvestmentQuery;

  factory CopyWith$Query$GetAllInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllInvestmentQuery;

  TRes call({
    List<Fragment$investmentData>? investment,
    String? $__typename,
  });
  TRes investment(
      Iterable<Fragment$investmentData> Function(
              Iterable<
                  CopyWith$Fragment$investmentData<Fragment$investmentData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllInvestmentQuery<TRes>
    implements CopyWith$Query$GetAllInvestmentQuery<TRes> {
  _CopyWithImpl$Query$GetAllInvestmentQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllInvestmentQuery _instance;

  final TRes Function(Query$GetAllInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllInvestmentQuery(
        investment: investment == _undefined || investment == null
            ? _instance.investment
            : (investment as List<Fragment$investmentData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes investment(
          Iterable<Fragment$investmentData> Function(
                  Iterable<
                      CopyWith$Fragment$investmentData<
                          Fragment$investmentData>>)
              _fn) =>
      call(
          investment: _fn(
              _instance.investment.map((e) => CopyWith$Fragment$investmentData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllInvestmentQuery<TRes>
    implements CopyWith$Query$GetAllInvestmentQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllInvestmentQuery(this._res);

  TRes _res;

  call({
    List<Fragment$investmentData>? investment,
    String? $__typename,
  }) =>
      _res;
  investment(_fn) => _res;
}

const documentNodeQueryGetAllInvestmentQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllInvestmentQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'investment_bool_exp'),
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
            name: NameNode(value: 'investment_select_column'),
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
            name: NameNode(value: 'investment_order_by'),
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
        name: NameNode(value: 'investment'),
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
            name: NameNode(value: 'investmentData'),
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
  fragmentDefinitioninvestmentData,
]);
Query$GetAllInvestmentQuery _parserFn$Query$GetAllInvestmentQuery(
        Map<String, dynamic> data) =>
    Query$GetAllInvestmentQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllInvestmentQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllInvestmentQuery?,
);

class Options$Query$GetAllInvestmentQuery
    extends graphql.QueryOptions<Query$GetAllInvestmentQuery> {
  Options$Query$GetAllInvestmentQuery({
    String? operationName,
    Variables$Query$GetAllInvestmentQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestmentQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllInvestmentQuery? onComplete,
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
                        : _parserFn$Query$GetAllInvestmentQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllInvestmentQuery,
          parserFn: _parserFn$Query$GetAllInvestmentQuery,
        );

  final OnQueryComplete$Query$GetAllInvestmentQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllInvestmentQuery
    extends graphql.WatchQueryOptions<Query$GetAllInvestmentQuery> {
  WatchOptions$Query$GetAllInvestmentQuery({
    String? operationName,
    Variables$Query$GetAllInvestmentQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestmentQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllInvestmentQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllInvestmentQuery,
        );
}

class FetchMoreOptions$Query$GetAllInvestmentQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllInvestmentQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllInvestmentQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllInvestmentQuery,
        );
}

extension ClientExtension$Query$GetAllInvestmentQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllInvestmentQuery>>
      query$GetAllInvestmentQuery(
              [Options$Query$GetAllInvestmentQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllInvestmentQuery());
  graphql.ObservableQuery<
      Query$GetAllInvestmentQuery> watchQuery$GetAllInvestmentQuery(
          [WatchOptions$Query$GetAllInvestmentQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllInvestmentQuery());
  void writeQuery$GetAllInvestmentQuery({
    required Query$GetAllInvestmentQuery data,
    Variables$Query$GetAllInvestmentQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllInvestmentQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllInvestmentQuery? readQuery$GetAllInvestmentQuery({
    Variables$Query$GetAllInvestmentQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllInvestmentQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllInvestmentQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllInvestmentQuery>
    useQuery$GetAllInvestmentQuery(
            [Options$Query$GetAllInvestmentQuery? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllInvestmentQuery());
graphql.ObservableQuery<Query$GetAllInvestmentQuery>
    useWatchQuery$GetAllInvestmentQuery(
            [WatchOptions$Query$GetAllInvestmentQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllInvestmentQuery());

class Query$GetAllInvestmentQuery$Widget
    extends graphql_flutter.Query<Query$GetAllInvestmentQuery> {
  Query$GetAllInvestmentQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllInvestmentQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllInvestmentQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllInvestmentQuery(),
          builder: builder,
        );
}

class Variables$Query$GetAllInvestmentInvestorQuery {
  factory Variables$Query$GetAllInvestmentInvestorQuery({
    Input$investment_bool_exp? where,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  }) =>
      Variables$Query$GetAllInvestmentInvestorQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllInvestmentInvestorQuery._(this._$data);

  factory Variables$Query$GetAllInvestmentInvestorQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$investment_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$investment_select_column((e as String)))
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
              Input$investment_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllInvestmentInvestorQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$investment_bool_exp? get where =>
      (_$data['where'] as Input$investment_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$investment_order_by>?);
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
          ?.map((e) => toJson$Enum$investment_select_column(e))
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

  CopyWith$Variables$Query$GetAllInvestmentInvestorQuery<
          Variables$Query$GetAllInvestmentInvestorQuery>
      get copyWith => CopyWith$Variables$Query$GetAllInvestmentInvestorQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllInvestmentInvestorQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllInvestmentInvestorQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllInvestmentInvestorQuery(
    Variables$Query$GetAllInvestmentInvestorQuery instance,
    TRes Function(Variables$Query$GetAllInvestmentInvestorQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllInvestmentInvestorQuery;

  factory CopyWith$Variables$Query$GetAllInvestmentInvestorQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllInvestmentInvestorQuery;

  TRes call({
    Input$investment_bool_exp? where,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllInvestmentInvestorQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestmentInvestorQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllInvestmentInvestorQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllInvestmentInvestorQuery _instance;

  final TRes Function(Variables$Query$GetAllInvestmentInvestorQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllInvestmentInvestorQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$investment_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllInvestmentInvestorQuery<TRes>
    implements CopyWith$Variables$Query$GetAllInvestmentInvestorQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllInvestmentInvestorQuery(this._res);

  TRes _res;

  call({
    Input$investment_bool_exp? where,
    int? limit,
    List<Enum$investment_select_column>? distinct_on,
    int? offset,
    List<Input$investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllInvestmentInvestorQuery {
  Query$GetAllInvestmentInvestorQuery({
    required this.investment,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllInvestmentInvestorQuery.fromJson(
      Map<String, dynamic> json) {
    final l$investment = json['investment'];
    final l$$__typename = json['__typename'];
    return Query$GetAllInvestmentInvestorQuery(
      investment: (l$investment as List<dynamic>)
          .map((e) => Query$GetAllInvestmentInvestorQuery$investment.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllInvestmentInvestorQuery$investment> investment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment = investment;
    _resultData['investment'] = l$investment.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment = investment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$investment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllInvestmentInvestorQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment = investment;
    final lOther$investment = other.investment;
    if (l$investment.length != lOther$investment.length) {
      return false;
    }
    for (int i = 0; i < l$investment.length; i++) {
      final l$investment$entry = l$investment[i];
      final lOther$investment$entry = lOther$investment[i];
      if (l$investment$entry != lOther$investment$entry) {
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

extension UtilityExtension$Query$GetAllInvestmentInvestorQuery
    on Query$GetAllInvestmentInvestorQuery {
  CopyWith$Query$GetAllInvestmentInvestorQuery<
          Query$GetAllInvestmentInvestorQuery>
      get copyWith => CopyWith$Query$GetAllInvestmentInvestorQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllInvestmentInvestorQuery<TRes> {
  factory CopyWith$Query$GetAllInvestmentInvestorQuery(
    Query$GetAllInvestmentInvestorQuery instance,
    TRes Function(Query$GetAllInvestmentInvestorQuery) then,
  ) = _CopyWithImpl$Query$GetAllInvestmentInvestorQuery;

  factory CopyWith$Query$GetAllInvestmentInvestorQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllInvestmentInvestorQuery;

  TRes call({
    List<Query$GetAllInvestmentInvestorQuery$investment>? investment,
    String? $__typename,
  });
  TRes investment(
      Iterable<Query$GetAllInvestmentInvestorQuery$investment> Function(
              Iterable<
                  CopyWith$Query$GetAllInvestmentInvestorQuery$investment<
                      Query$GetAllInvestmentInvestorQuery$investment>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllInvestmentInvestorQuery<TRes>
    implements CopyWith$Query$GetAllInvestmentInvestorQuery<TRes> {
  _CopyWithImpl$Query$GetAllInvestmentInvestorQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllInvestmentInvestorQuery _instance;

  final TRes Function(Query$GetAllInvestmentInvestorQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllInvestmentInvestorQuery(
        investment: investment == _undefined || investment == null
            ? _instance.investment
            : (investment
                as List<Query$GetAllInvestmentInvestorQuery$investment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes investment(
          Iterable<Query$GetAllInvestmentInvestorQuery$investment> Function(
                  Iterable<
                      CopyWith$Query$GetAllInvestmentInvestorQuery$investment<
                          Query$GetAllInvestmentInvestorQuery$investment>>)
              _fn) =>
      call(
          investment: _fn(_instance.investment.map(
              (e) => CopyWith$Query$GetAllInvestmentInvestorQuery$investment(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllInvestmentInvestorQuery<TRes>
    implements CopyWith$Query$GetAllInvestmentInvestorQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllInvestmentInvestorQuery(this._res);

  TRes _res;

  call({
    List<Query$GetAllInvestmentInvestorQuery$investment>? investment,
    String? $__typename,
  }) =>
      _res;
  investment(_fn) => _res;
}

const documentNodeQueryGetAllInvestmentInvestorQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllInvestmentInvestorQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'investment_bool_exp'),
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
            name: NameNode(value: 'investment_select_column'),
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
            name: NameNode(value: 'investment_order_by'),
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
        name: NameNode(value: 'investment'),
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
            name: NameNode(value: 'investmentData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'investor'),
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
  fragmentDefinitioninvestmentData,
  fragmentDefinitioninvestorData,
]);
Query$GetAllInvestmentInvestorQuery
    _parserFn$Query$GetAllInvestmentInvestorQuery(Map<String, dynamic> data) =>
        Query$GetAllInvestmentInvestorQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllInvestmentInvestorQuery = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetAllInvestmentInvestorQuery?,
);

class Options$Query$GetAllInvestmentInvestorQuery
    extends graphql.QueryOptions<Query$GetAllInvestmentInvestorQuery> {
  Options$Query$GetAllInvestmentInvestorQuery({
    String? operationName,
    Variables$Query$GetAllInvestmentInvestorQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestmentInvestorQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllInvestmentInvestorQuery? onComplete,
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
                        : _parserFn$Query$GetAllInvestmentInvestorQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllInvestmentInvestorQuery,
          parserFn: _parserFn$Query$GetAllInvestmentInvestorQuery,
        );

  final OnQueryComplete$Query$GetAllInvestmentInvestorQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllInvestmentInvestorQuery
    extends graphql.WatchQueryOptions<Query$GetAllInvestmentInvestorQuery> {
  WatchOptions$Query$GetAllInvestmentInvestorQuery({
    String? operationName,
    Variables$Query$GetAllInvestmentInvestorQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllInvestmentInvestorQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllInvestmentInvestorQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllInvestmentInvestorQuery,
        );
}

class FetchMoreOptions$Query$GetAllInvestmentInvestorQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllInvestmentInvestorQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllInvestmentInvestorQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllInvestmentInvestorQuery,
        );
}

extension ClientExtension$Query$GetAllInvestmentInvestorQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllInvestmentInvestorQuery>>
      query$GetAllInvestmentInvestorQuery(
              [Options$Query$GetAllInvestmentInvestorQuery? options]) async =>
          await this
              .query(options ?? Options$Query$GetAllInvestmentInvestorQuery());
  graphql.ObservableQuery<Query$GetAllInvestmentInvestorQuery>
      watchQuery$GetAllInvestmentInvestorQuery(
              [WatchOptions$Query$GetAllInvestmentInvestorQuery? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetAllInvestmentInvestorQuery());
  void writeQuery$GetAllInvestmentInvestorQuery({
    required Query$GetAllInvestmentInvestorQuery data,
    Variables$Query$GetAllInvestmentInvestorQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllInvestmentInvestorQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllInvestmentInvestorQuery? readQuery$GetAllInvestmentInvestorQuery({
    Variables$Query$GetAllInvestmentInvestorQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllInvestmentInvestorQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllInvestmentInvestorQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllInvestmentInvestorQuery>
    useQuery$GetAllInvestmentInvestorQuery(
            [Options$Query$GetAllInvestmentInvestorQuery? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllInvestmentInvestorQuery());
graphql.ObservableQuery<Query$GetAllInvestmentInvestorQuery>
    useWatchQuery$GetAllInvestmentInvestorQuery(
            [WatchOptions$Query$GetAllInvestmentInvestorQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllInvestmentInvestorQuery());

class Query$GetAllInvestmentInvestorQuery$Widget
    extends graphql_flutter.Query<Query$GetAllInvestmentInvestorQuery> {
  Query$GetAllInvestmentInvestorQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllInvestmentInvestorQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllInvestmentInvestorQuery>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllInvestmentInvestorQuery(),
          builder: builder,
        );
}

class Query$GetAllInvestmentInvestorQuery$investment
    implements Fragment$investmentData {
  Query$GetAllInvestmentInvestorQuery$investment({
    required this.investment_id,
    required this.investor_id,
    required this.investment_amount,
    this.updated_at,
    this.created_at,
    this.$__typename = 'investment',
    required this.investor,
  });

  factory Query$GetAllInvestmentInvestorQuery$investment.fromJson(
      Map<String, dynamic> json) {
    final l$investment_id = json['investment_id'];
    final l$investor_id = json['investor_id'];
    final l$investment_amount = json['investment_amount'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    final l$investor = json['investor'];
    return Query$GetAllInvestmentInvestorQuery$investment(
      investment_id: (l$investment_id as int),
      investor_id: (l$investor_id as int),
      investment_amount: (l$investment_amount as int),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
      investor:
          Fragment$investorData.fromJson((l$investor as Map<String, dynamic>)),
    );
  }

  final int investment_id;

  final int investor_id;

  final int investment_amount;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  final Fragment$investorData investor;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$investment_id = investment_id;
    _resultData['investment_id'] = l$investment_id;
    final l$investor_id = investor_id;
    _resultData['investor_id'] = l$investor_id;
    final l$investment_amount = investment_amount;
    _resultData['investment_amount'] = l$investment_amount;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at?.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$investor = investor;
    _resultData['investor'] = l$investor.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$investment_id = investment_id;
    final l$investor_id = investor_id;
    final l$investment_amount = investment_amount;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    final l$investor = investor;
    return Object.hashAll([
      l$investment_id,
      l$investor_id,
      l$investment_amount,
      l$updated_at,
      l$created_at,
      l$$__typename,
      l$investor,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllInvestmentInvestorQuery$investment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$investment_id = investment_id;
    final lOther$investment_id = other.investment_id;
    if (l$investment_id != lOther$investment_id) {
      return false;
    }
    final l$investor_id = investor_id;
    final lOther$investor_id = other.investor_id;
    if (l$investor_id != lOther$investor_id) {
      return false;
    }
    final l$investment_amount = investment_amount;
    final lOther$investment_amount = other.investment_amount;
    if (l$investment_amount != lOther$investment_amount) {
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
    final l$investor = investor;
    final lOther$investor = other.investor;
    if (l$investor != lOther$investor) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllInvestmentInvestorQuery$investment
    on Query$GetAllInvestmentInvestorQuery$investment {
  CopyWith$Query$GetAllInvestmentInvestorQuery$investment<
          Query$GetAllInvestmentInvestorQuery$investment>
      get copyWith => CopyWith$Query$GetAllInvestmentInvestorQuery$investment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllInvestmentInvestorQuery$investment<TRes> {
  factory CopyWith$Query$GetAllInvestmentInvestorQuery$investment(
    Query$GetAllInvestmentInvestorQuery$investment instance,
    TRes Function(Query$GetAllInvestmentInvestorQuery$investment) then,
  ) = _CopyWithImpl$Query$GetAllInvestmentInvestorQuery$investment;

  factory CopyWith$Query$GetAllInvestmentInvestorQuery$investment.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllInvestmentInvestorQuery$investment;

  TRes call({
    int? investment_id,
    int? investor_id,
    int? investment_amount,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$investorData? investor,
  });
  CopyWith$Fragment$investorData<TRes> get investor;
}

class _CopyWithImpl$Query$GetAllInvestmentInvestorQuery$investment<TRes>
    implements CopyWith$Query$GetAllInvestmentInvestorQuery$investment<TRes> {
  _CopyWithImpl$Query$GetAllInvestmentInvestorQuery$investment(
    this._instance,
    this._then,
  );

  final Query$GetAllInvestmentInvestorQuery$investment _instance;

  final TRes Function(Query$GetAllInvestmentInvestorQuery$investment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investment_id = _undefined,
    Object? investor_id = _undefined,
    Object? investment_amount = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
    Object? investor = _undefined,
  }) =>
      _then(Query$GetAllInvestmentInvestorQuery$investment(
        investment_id: investment_id == _undefined || investment_id == null
            ? _instance.investment_id
            : (investment_id as int),
        investor_id: investor_id == _undefined || investor_id == null
            ? _instance.investor_id
            : (investor_id as int),
        investment_amount:
            investment_amount == _undefined || investment_amount == null
                ? _instance.investment_amount
                : (investment_amount as int),
        updated_at: updated_at == _undefined
            ? _instance.updated_at
            : (updated_at as DateTime?),
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        investor: investor == _undefined || investor == null
            ? _instance.investor
            : (investor as Fragment$investorData),
      ));
  CopyWith$Fragment$investorData<TRes> get investor {
    final local$investor = _instance.investor;
    return CopyWith$Fragment$investorData(
        local$investor, (e) => call(investor: e));
  }
}

class _CopyWithStubImpl$Query$GetAllInvestmentInvestorQuery$investment<TRes>
    implements CopyWith$Query$GetAllInvestmentInvestorQuery$investment<TRes> {
  _CopyWithStubImpl$Query$GetAllInvestmentInvestorQuery$investment(this._res);

  TRes _res;

  call({
    int? investment_id,
    int? investor_id,
    int? investment_amount,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
    Fragment$investorData? investor,
  }) =>
      _res;
  CopyWith$Fragment$investorData<TRes> get investor =>
      CopyWith$Fragment$investorData.stub(_res);
}
