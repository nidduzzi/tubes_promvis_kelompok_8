// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'schema.graphql.dart';

class Fragment$blogData {
  Fragment$blogData({
    required this.blog_id,
    required this.blog_title,
    required this.blog_content,
    required this.blog_date,
    this.updated_at,
    this.created_at,
    this.$__typename = 'blog',
  });

  factory Fragment$blogData.fromJson(Map<String, dynamic> json) {
    final l$blog_id = json['blog_id'];
    final l$blog_title = json['blog_title'];
    final l$blog_content = json['blog_content'];
    final l$blog_date = json['blog_date'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Fragment$blogData(
      blog_id: (l$blog_id as int),
      blog_title: (l$blog_title as String),
      blog_content: (l$blog_content as String),
      blog_date: DateTime.parse((l$blog_date as String)),
      updated_at: l$updated_at == null
          ? null
          : DateTime.parse((l$updated_at as String)),
      created_at: l$created_at == null
          ? null
          : DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final int blog_id;

  final String blog_title;

  final String blog_content;

  final DateTime blog_date;

  final DateTime? updated_at;

  final DateTime? created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$blog_id = blog_id;
    _resultData['blog_id'] = l$blog_id;
    final l$blog_title = blog_title;
    _resultData['blog_title'] = l$blog_title;
    final l$blog_content = blog_content;
    _resultData['blog_content'] = l$blog_content;
    final l$blog_date = blog_date;
    _resultData['blog_date'] = l$blog_date.toIso8601String();
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
    final l$blog_id = blog_id;
    final l$blog_title = blog_title;
    final l$blog_content = blog_content;
    final l$blog_date = blog_date;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$blog_id,
      l$blog_title,
      l$blog_content,
      l$blog_date,
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
    if (!(other is Fragment$blogData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$blog_id = blog_id;
    final lOther$blog_id = other.blog_id;
    if (l$blog_id != lOther$blog_id) {
      return false;
    }
    final l$blog_title = blog_title;
    final lOther$blog_title = other.blog_title;
    if (l$blog_title != lOther$blog_title) {
      return false;
    }
    final l$blog_content = blog_content;
    final lOther$blog_content = other.blog_content;
    if (l$blog_content != lOther$blog_content) {
      return false;
    }
    final l$blog_date = blog_date;
    final lOther$blog_date = other.blog_date;
    if (l$blog_date != lOther$blog_date) {
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

extension UtilityExtension$Fragment$blogData on Fragment$blogData {
  CopyWith$Fragment$blogData<Fragment$blogData> get copyWith =>
      CopyWith$Fragment$blogData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$blogData<TRes> {
  factory CopyWith$Fragment$blogData(
    Fragment$blogData instance,
    TRes Function(Fragment$blogData) then,
  ) = _CopyWithImpl$Fragment$blogData;

  factory CopyWith$Fragment$blogData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$blogData;

  TRes call({
    int? blog_id,
    String? blog_title,
    String? blog_content,
    DateTime? blog_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$blogData<TRes>
    implements CopyWith$Fragment$blogData<TRes> {
  _CopyWithImpl$Fragment$blogData(
    this._instance,
    this._then,
  );

  final Fragment$blogData _instance;

  final TRes Function(Fragment$blogData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blog_id = _undefined,
    Object? blog_title = _undefined,
    Object? blog_content = _undefined,
    Object? blog_date = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$blogData(
        blog_id: blog_id == _undefined || blog_id == null
            ? _instance.blog_id
            : (blog_id as int),
        blog_title: blog_title == _undefined || blog_title == null
            ? _instance.blog_title
            : (blog_title as String),
        blog_content: blog_content == _undefined || blog_content == null
            ? _instance.blog_content
            : (blog_content as String),
        blog_date: blog_date == _undefined || blog_date == null
            ? _instance.blog_date
            : (blog_date as DateTime),
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

class _CopyWithStubImpl$Fragment$blogData<TRes>
    implements CopyWith$Fragment$blogData<TRes> {
  _CopyWithStubImpl$Fragment$blogData(this._res);

  TRes _res;

  call({
    int? blog_id,
    String? blog_title,
    String? blog_content,
    DateTime? blog_date,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionblogData = FragmentDefinitionNode(
  name: NameNode(value: 'blogData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'blog'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'blog_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'blog_title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'blog_content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'blog_date'),
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
const documentNodeFragmentblogData = DocumentNode(definitions: [
  fragmentDefinitionblogData,
]);

extension ClientExtension$Fragment$blogData on graphql.GraphQLClient {
  void writeFragment$blogData({
    required Fragment$blogData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'blogData',
            document: documentNodeFragmentblogData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$blogData? readFragment$blogData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'blogData',
          document: documentNodeFragmentblogData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$blogData.fromJson(result);
  }
}

class Variables$Mutation$InsertBlogMutation {
  factory Variables$Mutation$InsertBlogMutation(
          {required Input$blog_insert_input data}) =>
      Variables$Mutation$InsertBlogMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertBlogMutation._(this._$data);

  factory Variables$Mutation$InsertBlogMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$blog_insert_input.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertBlogMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$blog_insert_input get data =>
      (_$data['data'] as Input$blog_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertBlogMutation<
          Variables$Mutation$InsertBlogMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertBlogMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertBlogMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertBlogMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertBlogMutation(
    Variables$Mutation$InsertBlogMutation instance,
    TRes Function(Variables$Mutation$InsertBlogMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertBlogMutation;

  factory CopyWith$Variables$Mutation$InsertBlogMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertBlogMutation;

  TRes call({Input$blog_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertBlogMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertBlogMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertBlogMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertBlogMutation _instance;

  final TRes Function(Variables$Mutation$InsertBlogMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertBlogMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$blog_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertBlogMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertBlogMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertBlogMutation(this._res);

  TRes _res;

  call({Input$blog_insert_input? data}) => _res;
}

class Mutation$InsertBlogMutation {
  Mutation$InsertBlogMutation({
    this.insert_blog_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertBlogMutation.fromJson(Map<String, dynamic> json) {
    final l$insert_blog_one = json['insert_blog_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertBlogMutation(
      insert_blog_one: l$insert_blog_one == null
          ? null
          : Fragment$blogData.fromJson(
              (l$insert_blog_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$blogData? insert_blog_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_blog_one = insert_blog_one;
    _resultData['insert_blog_one'] = l$insert_blog_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_blog_one = insert_blog_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_blog_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertBlogMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_blog_one = insert_blog_one;
    final lOther$insert_blog_one = other.insert_blog_one;
    if (l$insert_blog_one != lOther$insert_blog_one) {
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

extension UtilityExtension$Mutation$InsertBlogMutation
    on Mutation$InsertBlogMutation {
  CopyWith$Mutation$InsertBlogMutation<Mutation$InsertBlogMutation>
      get copyWith => CopyWith$Mutation$InsertBlogMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertBlogMutation<TRes> {
  factory CopyWith$Mutation$InsertBlogMutation(
    Mutation$InsertBlogMutation instance,
    TRes Function(Mutation$InsertBlogMutation) then,
  ) = _CopyWithImpl$Mutation$InsertBlogMutation;

  factory CopyWith$Mutation$InsertBlogMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertBlogMutation;

  TRes call({
    Fragment$blogData? insert_blog_one,
    String? $__typename,
  });
  CopyWith$Fragment$blogData<TRes> get insert_blog_one;
}

class _CopyWithImpl$Mutation$InsertBlogMutation<TRes>
    implements CopyWith$Mutation$InsertBlogMutation<TRes> {
  _CopyWithImpl$Mutation$InsertBlogMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertBlogMutation _instance;

  final TRes Function(Mutation$InsertBlogMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_blog_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertBlogMutation(
        insert_blog_one: insert_blog_one == _undefined
            ? _instance.insert_blog_one
            : (insert_blog_one as Fragment$blogData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$blogData<TRes> get insert_blog_one {
    final local$insert_blog_one = _instance.insert_blog_one;
    return local$insert_blog_one == null
        ? CopyWith$Fragment$blogData.stub(_then(_instance))
        : CopyWith$Fragment$blogData(
            local$insert_blog_one, (e) => call(insert_blog_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertBlogMutation<TRes>
    implements CopyWith$Mutation$InsertBlogMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertBlogMutation(this._res);

  TRes _res;

  call({
    Fragment$blogData? insert_blog_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$blogData<TRes> get insert_blog_one =>
      CopyWith$Fragment$blogData.stub(_res);
}

const documentNodeMutationInsertBlogMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertBlogMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'blog_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_blog_one'),
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
            name: NameNode(value: 'blogData'),
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
  fragmentDefinitionblogData,
]);
Mutation$InsertBlogMutation _parserFn$Mutation$InsertBlogMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertBlogMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertBlogMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertBlogMutation?,
);

class Options$Mutation$InsertBlogMutation
    extends graphql.MutationOptions<Mutation$InsertBlogMutation> {
  Options$Mutation$InsertBlogMutation({
    String? operationName,
    required Variables$Mutation$InsertBlogMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertBlogMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertBlogMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertBlogMutation>? update,
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
                        : _parserFn$Mutation$InsertBlogMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertBlogMutation,
          parserFn: _parserFn$Mutation$InsertBlogMutation,
        );

  final OnMutationCompleted$Mutation$InsertBlogMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertBlogMutation
    extends graphql.WatchQueryOptions<Mutation$InsertBlogMutation> {
  WatchOptions$Mutation$InsertBlogMutation({
    String? operationName,
    required Variables$Mutation$InsertBlogMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertBlogMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertBlogMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertBlogMutation,
        );
}

extension ClientExtension$Mutation$InsertBlogMutation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertBlogMutation>>
      mutate$InsertBlogMutation(
              Options$Mutation$InsertBlogMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertBlogMutation>
      watchMutation$InsertBlogMutation(
              WatchOptions$Mutation$InsertBlogMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertBlogMutation$HookResult {
  Mutation$InsertBlogMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertBlogMutation runMutation;

  final graphql.QueryResult<Mutation$InsertBlogMutation> result;
}

Mutation$InsertBlogMutation$HookResult useMutation$InsertBlogMutation(
    [WidgetOptions$Mutation$InsertBlogMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InsertBlogMutation());
  return Mutation$InsertBlogMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertBlogMutation>
    useWatchMutation$InsertBlogMutation(
            WatchOptions$Mutation$InsertBlogMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertBlogMutation
    extends graphql.MutationOptions<Mutation$InsertBlogMutation> {
  WidgetOptions$Mutation$InsertBlogMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertBlogMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertBlogMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertBlogMutation>? update,
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
                        : _parserFn$Mutation$InsertBlogMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertBlogMutation,
          parserFn: _parserFn$Mutation$InsertBlogMutation,
        );

  final OnMutationCompleted$Mutation$InsertBlogMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertBlogMutation
    = graphql.MultiSourceResult<Mutation$InsertBlogMutation> Function(
  Variables$Mutation$InsertBlogMutation, {
  Object? optimisticResult,
  Mutation$InsertBlogMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertBlogMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertBlogMutation,
  graphql.QueryResult<Mutation$InsertBlogMutation>?,
);

class Mutation$InsertBlogMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertBlogMutation> {
  Mutation$InsertBlogMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertBlogMutation? options,
    required Builder$Mutation$InsertBlogMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertBlogMutation(),
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

class Variables$Mutation$UpdateBlogMutation {
  factory Variables$Mutation$UpdateBlogMutation({
    required Input$blog_set_input data,
    required int blog_id,
  }) =>
      Variables$Mutation$UpdateBlogMutation._({
        r'data': data,
        r'blog_id': blog_id,
      });

  Variables$Mutation$UpdateBlogMutation._(this._$data);

  factory Variables$Mutation$UpdateBlogMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$blog_set_input.fromJson((l$data as Map<String, dynamic>));
    final l$blog_id = data['blog_id'];
    result$data['blog_id'] = (l$blog_id as int);
    return Variables$Mutation$UpdateBlogMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$blog_set_input get data => (_$data['data'] as Input$blog_set_input);
  int get blog_id => (_$data['blog_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$blog_id = blog_id;
    result$data['blog_id'] = l$blog_id;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateBlogMutation<
          Variables$Mutation$UpdateBlogMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateBlogMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateBlogMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$blog_id = blog_id;
    final lOther$blog_id = other.blog_id;
    if (l$blog_id != lOther$blog_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$blog_id = blog_id;
    return Object.hashAll([
      l$data,
      l$blog_id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateBlogMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateBlogMutation(
    Variables$Mutation$UpdateBlogMutation instance,
    TRes Function(Variables$Mutation$UpdateBlogMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateBlogMutation;

  factory CopyWith$Variables$Mutation$UpdateBlogMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateBlogMutation;

  TRes call({
    Input$blog_set_input? data,
    int? blog_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateBlogMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateBlogMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateBlogMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateBlogMutation _instance;

  final TRes Function(Variables$Mutation$UpdateBlogMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? blog_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateBlogMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$blog_set_input),
        if (blog_id != _undefined && blog_id != null)
          'blog_id': (blog_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateBlogMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateBlogMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateBlogMutation(this._res);

  TRes _res;

  call({
    Input$blog_set_input? data,
    int? blog_id,
  }) =>
      _res;
}

class Mutation$UpdateBlogMutation {
  Mutation$UpdateBlogMutation({
    this.update_blog,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateBlogMutation.fromJson(Map<String, dynamic> json) {
    final l$update_blog = json['update_blog'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBlogMutation(
      update_blog: l$update_blog == null
          ? null
          : Mutation$UpdateBlogMutation$update_blog.fromJson(
              (l$update_blog as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateBlogMutation$update_blog? update_blog;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_blog = update_blog;
    _resultData['update_blog'] = l$update_blog?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_blog = update_blog;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_blog,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateBlogMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_blog = update_blog;
    final lOther$update_blog = other.update_blog;
    if (l$update_blog != lOther$update_blog) {
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

extension UtilityExtension$Mutation$UpdateBlogMutation
    on Mutation$UpdateBlogMutation {
  CopyWith$Mutation$UpdateBlogMutation<Mutation$UpdateBlogMutation>
      get copyWith => CopyWith$Mutation$UpdateBlogMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateBlogMutation<TRes> {
  factory CopyWith$Mutation$UpdateBlogMutation(
    Mutation$UpdateBlogMutation instance,
    TRes Function(Mutation$UpdateBlogMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateBlogMutation;

  factory CopyWith$Mutation$UpdateBlogMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBlogMutation;

  TRes call({
    Mutation$UpdateBlogMutation$update_blog? update_blog,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateBlogMutation$update_blog<TRes> get update_blog;
}

class _CopyWithImpl$Mutation$UpdateBlogMutation<TRes>
    implements CopyWith$Mutation$UpdateBlogMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateBlogMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBlogMutation _instance;

  final TRes Function(Mutation$UpdateBlogMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_blog = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateBlogMutation(
        update_blog: update_blog == _undefined
            ? _instance.update_blog
            : (update_blog as Mutation$UpdateBlogMutation$update_blog?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateBlogMutation$update_blog<TRes> get update_blog {
    final local$update_blog = _instance.update_blog;
    return local$update_blog == null
        ? CopyWith$Mutation$UpdateBlogMutation$update_blog.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateBlogMutation$update_blog(
            local$update_blog, (e) => call(update_blog: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateBlogMutation<TRes>
    implements CopyWith$Mutation$UpdateBlogMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBlogMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateBlogMutation$update_blog? update_blog,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateBlogMutation$update_blog<TRes> get update_blog =>
      CopyWith$Mutation$UpdateBlogMutation$update_blog.stub(_res);
}

const documentNodeMutationUpdateBlogMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateBlogMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'blog_set_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'blog_id')),
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
        name: NameNode(value: 'update_blog'),
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
                name: NameNode(value: 'blog_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'blog_id')),
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
                name: NameNode(value: 'blogData'),
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
  fragmentDefinitionblogData,
]);
Mutation$UpdateBlogMutation _parserFn$Mutation$UpdateBlogMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateBlogMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateBlogMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateBlogMutation?,
);

class Options$Mutation$UpdateBlogMutation
    extends graphql.MutationOptions<Mutation$UpdateBlogMutation> {
  Options$Mutation$UpdateBlogMutation({
    String? operationName,
    required Variables$Mutation$UpdateBlogMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateBlogMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateBlogMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateBlogMutation>? update,
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
                        : _parserFn$Mutation$UpdateBlogMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateBlogMutation,
          parserFn: _parserFn$Mutation$UpdateBlogMutation,
        );

  final OnMutationCompleted$Mutation$UpdateBlogMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateBlogMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateBlogMutation> {
  WatchOptions$Mutation$UpdateBlogMutation({
    String? operationName,
    required Variables$Mutation$UpdateBlogMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateBlogMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateBlogMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateBlogMutation,
        );
}

extension ClientExtension$Mutation$UpdateBlogMutation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateBlogMutation>>
      mutate$UpdateBlogMutation(
              Options$Mutation$UpdateBlogMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateBlogMutation>
      watchMutation$UpdateBlogMutation(
              WatchOptions$Mutation$UpdateBlogMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateBlogMutation$HookResult {
  Mutation$UpdateBlogMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateBlogMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateBlogMutation> result;
}

Mutation$UpdateBlogMutation$HookResult useMutation$UpdateBlogMutation(
    [WidgetOptions$Mutation$UpdateBlogMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateBlogMutation());
  return Mutation$UpdateBlogMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateBlogMutation>
    useWatchMutation$UpdateBlogMutation(
            WatchOptions$Mutation$UpdateBlogMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateBlogMutation
    extends graphql.MutationOptions<Mutation$UpdateBlogMutation> {
  WidgetOptions$Mutation$UpdateBlogMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateBlogMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateBlogMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateBlogMutation>? update,
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
                        : _parserFn$Mutation$UpdateBlogMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateBlogMutation,
          parserFn: _parserFn$Mutation$UpdateBlogMutation,
        );

  final OnMutationCompleted$Mutation$UpdateBlogMutation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateBlogMutation
    = graphql.MultiSourceResult<Mutation$UpdateBlogMutation> Function(
  Variables$Mutation$UpdateBlogMutation, {
  Object? optimisticResult,
  Mutation$UpdateBlogMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateBlogMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateBlogMutation,
  graphql.QueryResult<Mutation$UpdateBlogMutation>?,
);

class Mutation$UpdateBlogMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateBlogMutation> {
  Mutation$UpdateBlogMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateBlogMutation? options,
    required Builder$Mutation$UpdateBlogMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateBlogMutation(),
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

class Mutation$UpdateBlogMutation$update_blog {
  Mutation$UpdateBlogMutation$update_blog({
    required this.returning,
    this.$__typename = 'blog_mutation_response',
  });

  factory Mutation$UpdateBlogMutation$update_blog.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBlogMutation$update_blog(
      returning: (l$returning as List<dynamic>)
          .map((e) => Fragment$blogData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$blogData> returning;

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
    if (!(other is Mutation$UpdateBlogMutation$update_blog) ||
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

extension UtilityExtension$Mutation$UpdateBlogMutation$update_blog
    on Mutation$UpdateBlogMutation$update_blog {
  CopyWith$Mutation$UpdateBlogMutation$update_blog<
          Mutation$UpdateBlogMutation$update_blog>
      get copyWith => CopyWith$Mutation$UpdateBlogMutation$update_blog(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateBlogMutation$update_blog<TRes> {
  factory CopyWith$Mutation$UpdateBlogMutation$update_blog(
    Mutation$UpdateBlogMutation$update_blog instance,
    TRes Function(Mutation$UpdateBlogMutation$update_blog) then,
  ) = _CopyWithImpl$Mutation$UpdateBlogMutation$update_blog;

  factory CopyWith$Mutation$UpdateBlogMutation$update_blog.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBlogMutation$update_blog;

  TRes call({
    List<Fragment$blogData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$blogData> Function(
              Iterable<CopyWith$Fragment$blogData<Fragment$blogData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateBlogMutation$update_blog<TRes>
    implements CopyWith$Mutation$UpdateBlogMutation$update_blog<TRes> {
  _CopyWithImpl$Mutation$UpdateBlogMutation$update_blog(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBlogMutation$update_blog _instance;

  final TRes Function(Mutation$UpdateBlogMutation$update_blog) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateBlogMutation$update_blog(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$blogData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$blogData> Function(
                  Iterable<CopyWith$Fragment$blogData<Fragment$blogData>>)
              _fn) =>
      call(
          returning:
              _fn(_instance.returning.map((e) => CopyWith$Fragment$blogData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateBlogMutation$update_blog<TRes>
    implements CopyWith$Mutation$UpdateBlogMutation$update_blog<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBlogMutation$update_blog(this._res);

  TRes _res;

  call({
    List<Fragment$blogData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetByPkBlogQuery {
  factory Variables$Query$GetByPkBlogQuery({required int blog_id}) =>
      Variables$Query$GetByPkBlogQuery._({
        r'blog_id': blog_id,
      });

  Variables$Query$GetByPkBlogQuery._(this._$data);

  factory Variables$Query$GetByPkBlogQuery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$blog_id = data['blog_id'];
    result$data['blog_id'] = (l$blog_id as int);
    return Variables$Query$GetByPkBlogQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  int get blog_id => (_$data['blog_id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$blog_id = blog_id;
    result$data['blog_id'] = l$blog_id;
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkBlogQuery<Variables$Query$GetByPkBlogQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkBlogQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkBlogQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$blog_id = blog_id;
    final lOther$blog_id = other.blog_id;
    if (l$blog_id != lOther$blog_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$blog_id = blog_id;
    return Object.hashAll([l$blog_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkBlogQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkBlogQuery(
    Variables$Query$GetByPkBlogQuery instance,
    TRes Function(Variables$Query$GetByPkBlogQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkBlogQuery;

  factory CopyWith$Variables$Query$GetByPkBlogQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkBlogQuery;

  TRes call({int? blog_id});
}

class _CopyWithImpl$Variables$Query$GetByPkBlogQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkBlogQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkBlogQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkBlogQuery _instance;

  final TRes Function(Variables$Query$GetByPkBlogQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? blog_id = _undefined}) =>
      _then(Variables$Query$GetByPkBlogQuery._({
        ..._instance._$data,
        if (blog_id != _undefined && blog_id != null)
          'blog_id': (blog_id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkBlogQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkBlogQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkBlogQuery(this._res);

  TRes _res;

  call({int? blog_id}) => _res;
}

class Query$GetByPkBlogQuery {
  Query$GetByPkBlogQuery({
    this.blog_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkBlogQuery.fromJson(Map<String, dynamic> json) {
    final l$blog_by_pk = json['blog_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkBlogQuery(
      blog_by_pk: l$blog_by_pk == null
          ? null
          : Fragment$blogData.fromJson((l$blog_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$blogData? blog_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$blog_by_pk = blog_by_pk;
    _resultData['blog_by_pk'] = l$blog_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$blog_by_pk = blog_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$blog_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkBlogQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$blog_by_pk = blog_by_pk;
    final lOther$blog_by_pk = other.blog_by_pk;
    if (l$blog_by_pk != lOther$blog_by_pk) {
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

extension UtilityExtension$Query$GetByPkBlogQuery on Query$GetByPkBlogQuery {
  CopyWith$Query$GetByPkBlogQuery<Query$GetByPkBlogQuery> get copyWith =>
      CopyWith$Query$GetByPkBlogQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetByPkBlogQuery<TRes> {
  factory CopyWith$Query$GetByPkBlogQuery(
    Query$GetByPkBlogQuery instance,
    TRes Function(Query$GetByPkBlogQuery) then,
  ) = _CopyWithImpl$Query$GetByPkBlogQuery;

  factory CopyWith$Query$GetByPkBlogQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkBlogQuery;

  TRes call({
    Fragment$blogData? blog_by_pk,
    String? $__typename,
  });
  CopyWith$Fragment$blogData<TRes> get blog_by_pk;
}

class _CopyWithImpl$Query$GetByPkBlogQuery<TRes>
    implements CopyWith$Query$GetByPkBlogQuery<TRes> {
  _CopyWithImpl$Query$GetByPkBlogQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkBlogQuery _instance;

  final TRes Function(Query$GetByPkBlogQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blog_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkBlogQuery(
        blog_by_pk: blog_by_pk == _undefined
            ? _instance.blog_by_pk
            : (blog_by_pk as Fragment$blogData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$blogData<TRes> get blog_by_pk {
    final local$blog_by_pk = _instance.blog_by_pk;
    return local$blog_by_pk == null
        ? CopyWith$Fragment$blogData.stub(_then(_instance))
        : CopyWith$Fragment$blogData(
            local$blog_by_pk, (e) => call(blog_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkBlogQuery<TRes>
    implements CopyWith$Query$GetByPkBlogQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkBlogQuery(this._res);

  TRes _res;

  call({
    Fragment$blogData? blog_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$blogData<TRes> get blog_by_pk =>
      CopyWith$Fragment$blogData.stub(_res);
}

const documentNodeQueryGetByPkBlogQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkBlogQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'blog_id')),
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
        name: NameNode(value: 'blog_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'blog_id'),
            value: VariableNode(name: NameNode(value: 'blog_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'blogData'),
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
  fragmentDefinitionblogData,
]);
Query$GetByPkBlogQuery _parserFn$Query$GetByPkBlogQuery(
        Map<String, dynamic> data) =>
    Query$GetByPkBlogQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkBlogQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetByPkBlogQuery?,
);

class Options$Query$GetByPkBlogQuery
    extends graphql.QueryOptions<Query$GetByPkBlogQuery> {
  Options$Query$GetByPkBlogQuery({
    String? operationName,
    required Variables$Query$GetByPkBlogQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkBlogQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkBlogQuery? onComplete,
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
                        : _parserFn$Query$GetByPkBlogQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkBlogQuery,
          parserFn: _parserFn$Query$GetByPkBlogQuery,
        );

  final OnQueryComplete$Query$GetByPkBlogQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkBlogQuery
    extends graphql.WatchQueryOptions<Query$GetByPkBlogQuery> {
  WatchOptions$Query$GetByPkBlogQuery({
    String? operationName,
    required Variables$Query$GetByPkBlogQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkBlogQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkBlogQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkBlogQuery,
        );
}

class FetchMoreOptions$Query$GetByPkBlogQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkBlogQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkBlogQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkBlogQuery,
        );
}

extension ClientExtension$Query$GetByPkBlogQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkBlogQuery>> query$GetByPkBlogQuery(
          Options$Query$GetByPkBlogQuery options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetByPkBlogQuery> watchQuery$GetByPkBlogQuery(
          WatchOptions$Query$GetByPkBlogQuery options) =>
      this.watchQuery(options);
  void writeQuery$GetByPkBlogQuery({
    required Query$GetByPkBlogQuery data,
    required Variables$Query$GetByPkBlogQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetByPkBlogQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkBlogQuery? readQuery$GetByPkBlogQuery({
    required Variables$Query$GetByPkBlogQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetByPkBlogQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetByPkBlogQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkBlogQuery>
    useQuery$GetByPkBlogQuery(Options$Query$GetByPkBlogQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkBlogQuery> useWatchQuery$GetByPkBlogQuery(
        WatchOptions$Query$GetByPkBlogQuery options) =>
    graphql_flutter.useWatchQuery(options);

class Query$GetByPkBlogQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkBlogQuery> {
  Query$GetByPkBlogQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkBlogQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkBlogQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetAllBlogQuery {
  factory Variables$Query$GetAllBlogQuery({
    Input$blog_bool_exp? where,
    int? limit,
    List<Enum$blog_select_column>? distinct_on,
    int? offset,
    List<Input$blog_order_by>? order_by,
  }) =>
      Variables$Query$GetAllBlogQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllBlogQuery._(this._$data);

  factory Variables$Query$GetAllBlogQuery.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$blog_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$blog_select_column((e as String)))
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
              (e) => Input$blog_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllBlogQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$blog_bool_exp? get where => (_$data['where'] as Input$blog_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$blog_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$blog_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$blog_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$blog_order_by>?);
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
          l$distinct_on?.map((e) => toJson$Enum$blog_select_column(e)).toList();
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

  CopyWith$Variables$Query$GetAllBlogQuery<Variables$Query$GetAllBlogQuery>
      get copyWith => CopyWith$Variables$Query$GetAllBlogQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllBlogQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllBlogQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllBlogQuery(
    Variables$Query$GetAllBlogQuery instance,
    TRes Function(Variables$Query$GetAllBlogQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllBlogQuery;

  factory CopyWith$Variables$Query$GetAllBlogQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllBlogQuery;

  TRes call({
    Input$blog_bool_exp? where,
    int? limit,
    List<Enum$blog_select_column>? distinct_on,
    int? offset,
    List<Input$blog_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllBlogQuery<TRes>
    implements CopyWith$Variables$Query$GetAllBlogQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllBlogQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllBlogQuery _instance;

  final TRes Function(Variables$Query$GetAllBlogQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllBlogQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$blog_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$blog_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$blog_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllBlogQuery<TRes>
    implements CopyWith$Variables$Query$GetAllBlogQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllBlogQuery(this._res);

  TRes _res;

  call({
    Input$blog_bool_exp? where,
    int? limit,
    List<Enum$blog_select_column>? distinct_on,
    int? offset,
    List<Input$blog_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllBlogQuery {
  Query$GetAllBlogQuery({
    required this.blog,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllBlogQuery.fromJson(Map<String, dynamic> json) {
    final l$blog = json['blog'];
    final l$$__typename = json['__typename'];
    return Query$GetAllBlogQuery(
      blog: (l$blog as List<dynamic>)
          .map((e) => Fragment$blogData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$blogData> blog;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$blog = blog;
    _resultData['blog'] = l$blog.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$blog = blog;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$blog.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllBlogQuery) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$blog = blog;
    final lOther$blog = other.blog;
    if (l$blog.length != lOther$blog.length) {
      return false;
    }
    for (int i = 0; i < l$blog.length; i++) {
      final l$blog$entry = l$blog[i];
      final lOther$blog$entry = lOther$blog[i];
      if (l$blog$entry != lOther$blog$entry) {
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

extension UtilityExtension$Query$GetAllBlogQuery on Query$GetAllBlogQuery {
  CopyWith$Query$GetAllBlogQuery<Query$GetAllBlogQuery> get copyWith =>
      CopyWith$Query$GetAllBlogQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllBlogQuery<TRes> {
  factory CopyWith$Query$GetAllBlogQuery(
    Query$GetAllBlogQuery instance,
    TRes Function(Query$GetAllBlogQuery) then,
  ) = _CopyWithImpl$Query$GetAllBlogQuery;

  factory CopyWith$Query$GetAllBlogQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllBlogQuery;

  TRes call({
    List<Fragment$blogData>? blog,
    String? $__typename,
  });
  TRes blog(
      Iterable<Fragment$blogData> Function(
              Iterable<CopyWith$Fragment$blogData<Fragment$blogData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllBlogQuery<TRes>
    implements CopyWith$Query$GetAllBlogQuery<TRes> {
  _CopyWithImpl$Query$GetAllBlogQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllBlogQuery _instance;

  final TRes Function(Query$GetAllBlogQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? blog = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllBlogQuery(
        blog: blog == _undefined || blog == null
            ? _instance.blog
            : (blog as List<Fragment$blogData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes blog(
          Iterable<Fragment$blogData> Function(
                  Iterable<CopyWith$Fragment$blogData<Fragment$blogData>>)
              _fn) =>
      call(
          blog: _fn(_instance.blog.map((e) => CopyWith$Fragment$blogData(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetAllBlogQuery<TRes>
    implements CopyWith$Query$GetAllBlogQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllBlogQuery(this._res);

  TRes _res;

  call({
    List<Fragment$blogData>? blog,
    String? $__typename,
  }) =>
      _res;
  blog(_fn) => _res;
}

const documentNodeQueryGetAllBlogQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllBlogQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'blog_bool_exp'),
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
            name: NameNode(value: 'blog_select_column'),
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
            name: NameNode(value: 'blog_order_by'),
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
        name: NameNode(value: 'blog'),
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
            name: NameNode(value: 'blogData'),
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
  fragmentDefinitionblogData,
]);
Query$GetAllBlogQuery _parserFn$Query$GetAllBlogQuery(
        Map<String, dynamic> data) =>
    Query$GetAllBlogQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllBlogQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllBlogQuery?,
);

class Options$Query$GetAllBlogQuery
    extends graphql.QueryOptions<Query$GetAllBlogQuery> {
  Options$Query$GetAllBlogQuery({
    String? operationName,
    Variables$Query$GetAllBlogQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllBlogQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllBlogQuery? onComplete,
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
                    data == null ? null : _parserFn$Query$GetAllBlogQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllBlogQuery,
          parserFn: _parserFn$Query$GetAllBlogQuery,
        );

  final OnQueryComplete$Query$GetAllBlogQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllBlogQuery
    extends graphql.WatchQueryOptions<Query$GetAllBlogQuery> {
  WatchOptions$Query$GetAllBlogQuery({
    String? operationName,
    Variables$Query$GetAllBlogQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllBlogQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllBlogQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllBlogQuery,
        );
}

class FetchMoreOptions$Query$GetAllBlogQuery extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllBlogQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllBlogQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllBlogQuery,
        );
}

extension ClientExtension$Query$GetAllBlogQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllBlogQuery>> query$GetAllBlogQuery(
          [Options$Query$GetAllBlogQuery? options]) async =>
      await this.query(options ?? Options$Query$GetAllBlogQuery());
  graphql.ObservableQuery<Query$GetAllBlogQuery> watchQuery$GetAllBlogQuery(
          [WatchOptions$Query$GetAllBlogQuery? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllBlogQuery());
  void writeQuery$GetAllBlogQuery({
    required Query$GetAllBlogQuery data,
    Variables$Query$GetAllBlogQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllBlogQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllBlogQuery? readQuery$GetAllBlogQuery({
    Variables$Query$GetAllBlogQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllBlogQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllBlogQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllBlogQuery> useQuery$GetAllBlogQuery(
        [Options$Query$GetAllBlogQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllBlogQuery());
graphql.ObservableQuery<Query$GetAllBlogQuery> useWatchQuery$GetAllBlogQuery(
        [WatchOptions$Query$GetAllBlogQuery? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$GetAllBlogQuery());

class Query$GetAllBlogQuery$Widget
    extends graphql_flutter.Query<Query$GetAllBlogQuery> {
  Query$GetAllBlogQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllBlogQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllBlogQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllBlogQuery(),
          builder: builder,
        );
}
