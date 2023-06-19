// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:tubes_promvis_kelompok_8/src/types/graphql/scalar.dart';
import 'schema.graphql.dart';

class Fragment$bankCardData {
  Fragment$bankCardData({
    required this.bank_card_id,
    required this.bank_card_name,
    required this.bank_card_number,
    required this.bank_card_cvc,
    required this.updated_at,
    required this.created_at,
    this.$__typename = 'bank_card',
  });

  factory Fragment$bankCardData.fromJson(Map<String, dynamic> json) {
    final l$bank_card_id = json['bank_card_id'];
    final l$bank_card_name = json['bank_card_name'];
    final l$bank_card_number = json['bank_card_number'];
    final l$bank_card_cvc = json['bank_card_cvc'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$$__typename = json['__typename'];
    return Fragment$bankCardData(
      bank_card_id: uuidFromJson(l$bank_card_id),
      bank_card_name: (l$bank_card_name as String),
      bank_card_number: (l$bank_card_number as String),
      bank_card_cvc: (l$bank_card_cvc as String),
      updated_at: DateTime.parse((l$updated_at as String)),
      created_at: DateTime.parse((l$created_at as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final UUID bank_card_id;

  final String bank_card_name;

  final String bank_card_number;

  final String bank_card_cvc;

  final DateTime updated_at;

  final DateTime created_at;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card_id = bank_card_id;
    _resultData['bank_card_id'] = uuidToJson(l$bank_card_id);
    final l$bank_card_name = bank_card_name;
    _resultData['bank_card_name'] = l$bank_card_name;
    final l$bank_card_number = bank_card_number;
    _resultData['bank_card_number'] = l$bank_card_number;
    final l$bank_card_cvc = bank_card_cvc;
    _resultData['bank_card_cvc'] = l$bank_card_cvc;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card_id = bank_card_id;
    final l$bank_card_name = bank_card_name;
    final l$bank_card_number = bank_card_number;
    final l$bank_card_cvc = bank_card_cvc;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_card_id,
      l$bank_card_name,
      l$bank_card_number,
      l$bank_card_cvc,
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
    if (!(other is Fragment$bankCardData) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_id = bank_card_id;
    final lOther$bank_card_id = other.bank_card_id;
    if (l$bank_card_id != lOther$bank_card_id) {
      return false;
    }
    final l$bank_card_name = bank_card_name;
    final lOther$bank_card_name = other.bank_card_name;
    if (l$bank_card_name != lOther$bank_card_name) {
      return false;
    }
    final l$bank_card_number = bank_card_number;
    final lOther$bank_card_number = other.bank_card_number;
    if (l$bank_card_number != lOther$bank_card_number) {
      return false;
    }
    final l$bank_card_cvc = bank_card_cvc;
    final lOther$bank_card_cvc = other.bank_card_cvc;
    if (l$bank_card_cvc != lOther$bank_card_cvc) {
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

extension UtilityExtension$Fragment$bankCardData on Fragment$bankCardData {
  CopyWith$Fragment$bankCardData<Fragment$bankCardData> get copyWith =>
      CopyWith$Fragment$bankCardData(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$bankCardData<TRes> {
  factory CopyWith$Fragment$bankCardData(
    Fragment$bankCardData instance,
    TRes Function(Fragment$bankCardData) then,
  ) = _CopyWithImpl$Fragment$bankCardData;

  factory CopyWith$Fragment$bankCardData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$bankCardData;

  TRes call({
    UUID? bank_card_id,
    String? bank_card_name,
    String? bank_card_number,
    String? bank_card_cvc,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$bankCardData<TRes>
    implements CopyWith$Fragment$bankCardData<TRes> {
  _CopyWithImpl$Fragment$bankCardData(
    this._instance,
    this._then,
  );

  final Fragment$bankCardData _instance;

  final TRes Function(Fragment$bankCardData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card_id = _undefined,
    Object? bank_card_name = _undefined,
    Object? bank_card_number = _undefined,
    Object? bank_card_cvc = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$bankCardData(
        bank_card_id: bank_card_id == _undefined || bank_card_id == null
            ? _instance.bank_card_id
            : (bank_card_id as UUID),
        bank_card_name: bank_card_name == _undefined || bank_card_name == null
            ? _instance.bank_card_name
            : (bank_card_name as String),
        bank_card_number:
            bank_card_number == _undefined || bank_card_number == null
                ? _instance.bank_card_number
                : (bank_card_number as String),
        bank_card_cvc: bank_card_cvc == _undefined || bank_card_cvc == null
            ? _instance.bank_card_cvc
            : (bank_card_cvc as String),
        updated_at: updated_at == _undefined || updated_at == null
            ? _instance.updated_at
            : (updated_at as DateTime),
        created_at: created_at == _undefined || created_at == null
            ? _instance.created_at
            : (created_at as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$bankCardData<TRes>
    implements CopyWith$Fragment$bankCardData<TRes> {
  _CopyWithStubImpl$Fragment$bankCardData(this._res);

  TRes _res;

  call({
    UUID? bank_card_id,
    String? bank_card_name,
    String? bank_card_number,
    String? bank_card_cvc,
    DateTime? updated_at,
    DateTime? created_at,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionbankCardData = FragmentDefinitionNode(
  name: NameNode(value: 'bankCardData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'bank_card'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'bank_card_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bank_card_name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bank_card_number'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bank_card_cvc'),
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
const documentNodeFragmentbankCardData = DocumentNode(definitions: [
  fragmentDefinitionbankCardData,
]);

extension ClientExtension$Fragment$bankCardData on graphql.GraphQLClient {
  void writeFragment$bankCardData({
    required Fragment$bankCardData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'bankCardData',
            document: documentNodeFragmentbankCardData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$bankCardData? readFragment$bankCardData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'bankCardData',
          document: documentNodeFragmentbankCardData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$bankCardData.fromJson(result);
  }
}

class Fragment$bankCardAggregate {
  Fragment$bankCardAggregate({
    this.aggregate,
    this.$__typename = 'bank_card_aggregate',
  });

  factory Fragment$bankCardAggregate.fromJson(Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment$bankCardAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$bankCardAggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$bankCardAggregate$aggregate? aggregate;

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
    if (!(other is Fragment$bankCardAggregate) ||
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

extension UtilityExtension$Fragment$bankCardAggregate
    on Fragment$bankCardAggregate {
  CopyWith$Fragment$bankCardAggregate<Fragment$bankCardAggregate>
      get copyWith => CopyWith$Fragment$bankCardAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$bankCardAggregate<TRes> {
  factory CopyWith$Fragment$bankCardAggregate(
    Fragment$bankCardAggregate instance,
    TRes Function(Fragment$bankCardAggregate) then,
  ) = _CopyWithImpl$Fragment$bankCardAggregate;

  factory CopyWith$Fragment$bankCardAggregate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$bankCardAggregate;

  TRes call({
    Fragment$bankCardAggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$bankCardAggregate$aggregate<TRes> get aggregate;
}

class _CopyWithImpl$Fragment$bankCardAggregate<TRes>
    implements CopyWith$Fragment$bankCardAggregate<TRes> {
  _CopyWithImpl$Fragment$bankCardAggregate(
    this._instance,
    this._then,
  );

  final Fragment$bankCardAggregate _instance;

  final TRes Function(Fragment$bankCardAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$bankCardAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate as Fragment$bankCardAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$bankCardAggregate$aggregate<TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$bankCardAggregate$aggregate.stub(_then(_instance))
        : CopyWith$Fragment$bankCardAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$bankCardAggregate<TRes>
    implements CopyWith$Fragment$bankCardAggregate<TRes> {
  _CopyWithStubImpl$Fragment$bankCardAggregate(this._res);

  TRes _res;

  call({
    Fragment$bankCardAggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$bankCardAggregate$aggregate<TRes> get aggregate =>
      CopyWith$Fragment$bankCardAggregate$aggregate.stub(_res);
}

const fragmentDefinitionbankCardAggregate = FragmentDefinitionNode(
  name: NameNode(value: 'bankCardAggregate'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'bank_card_aggregate'),
    isNonNull: false,
  )),
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
const documentNodeFragmentbankCardAggregate = DocumentNode(definitions: [
  fragmentDefinitionbankCardAggregate,
]);

extension ClientExtension$Fragment$bankCardAggregate on graphql.GraphQLClient {
  void writeFragment$bankCardAggregate({
    required Fragment$bankCardAggregate data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'bankCardAggregate',
            document: documentNodeFragmentbankCardAggregate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$bankCardAggregate? readFragment$bankCardAggregate({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'bankCardAggregate',
          document: documentNodeFragmentbankCardAggregate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$bankCardAggregate.fromJson(result);
  }
}

class Fragment$bankCardAggregate$aggregate {
  Fragment$bankCardAggregate$aggregate({
    required this.count,
    this.$__typename = 'bank_card_aggregate_fields',
  });

  factory Fragment$bankCardAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment$bankCardAggregate$aggregate(
      count: (l$count as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int count;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$bankCardAggregate$aggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
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

extension UtilityExtension$Fragment$bankCardAggregate$aggregate
    on Fragment$bankCardAggregate$aggregate {
  CopyWith$Fragment$bankCardAggregate$aggregate<
          Fragment$bankCardAggregate$aggregate>
      get copyWith => CopyWith$Fragment$bankCardAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$bankCardAggregate$aggregate<TRes> {
  factory CopyWith$Fragment$bankCardAggregate$aggregate(
    Fragment$bankCardAggregate$aggregate instance,
    TRes Function(Fragment$bankCardAggregate$aggregate) then,
  ) = _CopyWithImpl$Fragment$bankCardAggregate$aggregate;

  factory CopyWith$Fragment$bankCardAggregate$aggregate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$bankCardAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$bankCardAggregate$aggregate<TRes>
    implements CopyWith$Fragment$bankCardAggregate$aggregate<TRes> {
  _CopyWithImpl$Fragment$bankCardAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$bankCardAggregate$aggregate _instance;

  final TRes Function(Fragment$bankCardAggregate$aggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$bankCardAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$bankCardAggregate$aggregate<TRes>
    implements CopyWith$Fragment$bankCardAggregate$aggregate<TRes> {
  _CopyWithStubImpl$Fragment$bankCardAggregate$aggregate(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$InsertBankCardMutation {
  factory Variables$Mutation$InsertBankCardMutation(
          {required Input$bank_card_insert_input data}) =>
      Variables$Mutation$InsertBankCardMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertBankCardMutation._(this._$data);

  factory Variables$Mutation$InsertBankCardMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$bank_card_insert_input.fromJson((l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertBankCardMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bank_card_insert_input get data =>
      (_$data['data'] as Input$bank_card_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertBankCardMutation<
          Variables$Mutation$InsertBankCardMutation>
      get copyWith => CopyWith$Variables$Mutation$InsertBankCardMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertBankCardMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertBankCardMutation<TRes> {
  factory CopyWith$Variables$Mutation$InsertBankCardMutation(
    Variables$Mutation$InsertBankCardMutation instance,
    TRes Function(Variables$Mutation$InsertBankCardMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertBankCardMutation;

  factory CopyWith$Variables$Mutation$InsertBankCardMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertBankCardMutation;

  TRes call({Input$bank_card_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertBankCardMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertBankCardMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertBankCardMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertBankCardMutation _instance;

  final TRes Function(Variables$Mutation$InsertBankCardMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertBankCardMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$bank_card_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertBankCardMutation<TRes>
    implements CopyWith$Variables$Mutation$InsertBankCardMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertBankCardMutation(this._res);

  TRes _res;

  call({Input$bank_card_insert_input? data}) => _res;
}

class Mutation$InsertBankCardMutation {
  Mutation$InsertBankCardMutation({
    this.insert_bank_card_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertBankCardMutation.fromJson(Map<String, dynamic> json) {
    final l$insert_bank_card_one = json['insert_bank_card_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertBankCardMutation(
      insert_bank_card_one: l$insert_bank_card_one == null
          ? null
          : Fragment$bankCardData.fromJson(
              (l$insert_bank_card_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$bankCardData? insert_bank_card_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_bank_card_one = insert_bank_card_one;
    _resultData['insert_bank_card_one'] = l$insert_bank_card_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_bank_card_one = insert_bank_card_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_bank_card_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertBankCardMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_bank_card_one = insert_bank_card_one;
    final lOther$insert_bank_card_one = other.insert_bank_card_one;
    if (l$insert_bank_card_one != lOther$insert_bank_card_one) {
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

extension UtilityExtension$Mutation$InsertBankCardMutation
    on Mutation$InsertBankCardMutation {
  CopyWith$Mutation$InsertBankCardMutation<Mutation$InsertBankCardMutation>
      get copyWith => CopyWith$Mutation$InsertBankCardMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertBankCardMutation<TRes> {
  factory CopyWith$Mutation$InsertBankCardMutation(
    Mutation$InsertBankCardMutation instance,
    TRes Function(Mutation$InsertBankCardMutation) then,
  ) = _CopyWithImpl$Mutation$InsertBankCardMutation;

  factory CopyWith$Mutation$InsertBankCardMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertBankCardMutation;

  TRes call({
    Fragment$bankCardData? insert_bank_card_one,
    String? $__typename,
  });
  CopyWith$Fragment$bankCardData<TRes> get insert_bank_card_one;
}

class _CopyWithImpl$Mutation$InsertBankCardMutation<TRes>
    implements CopyWith$Mutation$InsertBankCardMutation<TRes> {
  _CopyWithImpl$Mutation$InsertBankCardMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertBankCardMutation _instance;

  final TRes Function(Mutation$InsertBankCardMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_bank_card_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertBankCardMutation(
        insert_bank_card_one: insert_bank_card_one == _undefined
            ? _instance.insert_bank_card_one
            : (insert_bank_card_one as Fragment$bankCardData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$bankCardData<TRes> get insert_bank_card_one {
    final local$insert_bank_card_one = _instance.insert_bank_card_one;
    return local$insert_bank_card_one == null
        ? CopyWith$Fragment$bankCardData.stub(_then(_instance))
        : CopyWith$Fragment$bankCardData(
            local$insert_bank_card_one, (e) => call(insert_bank_card_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertBankCardMutation<TRes>
    implements CopyWith$Mutation$InsertBankCardMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertBankCardMutation(this._res);

  TRes _res;

  call({
    Fragment$bankCardData? insert_bank_card_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$bankCardData<TRes> get insert_bank_card_one =>
      CopyWith$Fragment$bankCardData.stub(_res);
}

const documentNodeMutationInsertBankCardMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertBankCardMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'bank_card_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_bank_card_one'),
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
            name: NameNode(value: 'bankCardData'),
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
  fragmentDefinitionbankCardData,
]);
Mutation$InsertBankCardMutation _parserFn$Mutation$InsertBankCardMutation(
        Map<String, dynamic> data) =>
    Mutation$InsertBankCardMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertBankCardMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$InsertBankCardMutation?,
);

class Options$Mutation$InsertBankCardMutation
    extends graphql.MutationOptions<Mutation$InsertBankCardMutation> {
  Options$Mutation$InsertBankCardMutation({
    String? operationName,
    required Variables$Mutation$InsertBankCardMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertBankCardMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertBankCardMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertBankCardMutation>? update,
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
                        : _parserFn$Mutation$InsertBankCardMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertBankCardMutation,
          parserFn: _parserFn$Mutation$InsertBankCardMutation,
        );

  final OnMutationCompleted$Mutation$InsertBankCardMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertBankCardMutation
    extends graphql.WatchQueryOptions<Mutation$InsertBankCardMutation> {
  WatchOptions$Mutation$InsertBankCardMutation({
    String? operationName,
    required Variables$Mutation$InsertBankCardMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertBankCardMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertBankCardMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertBankCardMutation,
        );
}

extension ClientExtension$Mutation$InsertBankCardMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertBankCardMutation>>
      mutate$InsertBankCardMutation(
              Options$Mutation$InsertBankCardMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertBankCardMutation>
      watchMutation$InsertBankCardMutation(
              WatchOptions$Mutation$InsertBankCardMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertBankCardMutation$HookResult {
  Mutation$InsertBankCardMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertBankCardMutation runMutation;

  final graphql.QueryResult<Mutation$InsertBankCardMutation> result;
}

Mutation$InsertBankCardMutation$HookResult useMutation$InsertBankCardMutation(
    [WidgetOptions$Mutation$InsertBankCardMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$InsertBankCardMutation());
  return Mutation$InsertBankCardMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertBankCardMutation>
    useWatchMutation$InsertBankCardMutation(
            WatchOptions$Mutation$InsertBankCardMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertBankCardMutation
    extends graphql.MutationOptions<Mutation$InsertBankCardMutation> {
  WidgetOptions$Mutation$InsertBankCardMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertBankCardMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertBankCardMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertBankCardMutation>? update,
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
                        : _parserFn$Mutation$InsertBankCardMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertBankCardMutation,
          parserFn: _parserFn$Mutation$InsertBankCardMutation,
        );

  final OnMutationCompleted$Mutation$InsertBankCardMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertBankCardMutation
    = graphql.MultiSourceResult<Mutation$InsertBankCardMutation> Function(
  Variables$Mutation$InsertBankCardMutation, {
  Object? optimisticResult,
  Mutation$InsertBankCardMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertBankCardMutation = widgets.Widget Function(
  RunMutation$Mutation$InsertBankCardMutation,
  graphql.QueryResult<Mutation$InsertBankCardMutation>?,
);

class Mutation$InsertBankCardMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertBankCardMutation> {
  Mutation$InsertBankCardMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertBankCardMutation? options,
    required Builder$Mutation$InsertBankCardMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$InsertBankCardMutation(),
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

class Variables$Mutation$UpdateBankCardMutation {
  factory Variables$Mutation$UpdateBankCardMutation({
    required Input$bank_card_set_input data,
    required UUID bank_card_id,
  }) =>
      Variables$Mutation$UpdateBankCardMutation._({
        r'data': data,
        r'bank_card_id': bank_card_id,
      });

  Variables$Mutation$UpdateBankCardMutation._(this._$data);

  factory Variables$Mutation$UpdateBankCardMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] =
        Input$bank_card_set_input.fromJson((l$data as Map<String, dynamic>));
    final l$bank_card_id = data['bank_card_id'];
    result$data['bank_card_id'] = uuidFromJson(l$bank_card_id);
    return Variables$Mutation$UpdateBankCardMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bank_card_set_input get data =>
      (_$data['data'] as Input$bank_card_set_input);
  UUID get bank_card_id => (_$data['bank_card_id'] as UUID);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$bank_card_id = bank_card_id;
    result$data['bank_card_id'] = uuidToJson(l$bank_card_id);
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateBankCardMutation<
          Variables$Mutation$UpdateBankCardMutation>
      get copyWith => CopyWith$Variables$Mutation$UpdateBankCardMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateBankCardMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$bank_card_id = bank_card_id;
    final lOther$bank_card_id = other.bank_card_id;
    if (l$bank_card_id != lOther$bank_card_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$bank_card_id = bank_card_id;
    return Object.hashAll([
      l$data,
      l$bank_card_id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateBankCardMutation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateBankCardMutation(
    Variables$Mutation$UpdateBankCardMutation instance,
    TRes Function(Variables$Mutation$UpdateBankCardMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateBankCardMutation;

  factory CopyWith$Variables$Mutation$UpdateBankCardMutation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateBankCardMutation;

  TRes call({
    Input$bank_card_set_input? data,
    UUID? bank_card_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateBankCardMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateBankCardMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateBankCardMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateBankCardMutation _instance;

  final TRes Function(Variables$Mutation$UpdateBankCardMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? bank_card_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateBankCardMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$bank_card_set_input),
        if (bank_card_id != _undefined && bank_card_id != null)
          'bank_card_id': (bank_card_id as UUID),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateBankCardMutation<TRes>
    implements CopyWith$Variables$Mutation$UpdateBankCardMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateBankCardMutation(this._res);

  TRes _res;

  call({
    Input$bank_card_set_input? data,
    UUID? bank_card_id,
  }) =>
      _res;
}

class Mutation$UpdateBankCardMutation {
  Mutation$UpdateBankCardMutation({
    this.update_bank_card,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdateBankCardMutation.fromJson(Map<String, dynamic> json) {
    final l$update_bank_card = json['update_bank_card'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBankCardMutation(
      update_bank_card: l$update_bank_card == null
          ? null
          : Mutation$UpdateBankCardMutation$update_bank_card.fromJson(
              (l$update_bank_card as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateBankCardMutation$update_bank_card? update_bank_card;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_bank_card = update_bank_card;
    _resultData['update_bank_card'] = l$update_bank_card?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_bank_card = update_bank_card;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_bank_card,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateBankCardMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_bank_card = update_bank_card;
    final lOther$update_bank_card = other.update_bank_card;
    if (l$update_bank_card != lOther$update_bank_card) {
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

extension UtilityExtension$Mutation$UpdateBankCardMutation
    on Mutation$UpdateBankCardMutation {
  CopyWith$Mutation$UpdateBankCardMutation<Mutation$UpdateBankCardMutation>
      get copyWith => CopyWith$Mutation$UpdateBankCardMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateBankCardMutation<TRes> {
  factory CopyWith$Mutation$UpdateBankCardMutation(
    Mutation$UpdateBankCardMutation instance,
    TRes Function(Mutation$UpdateBankCardMutation) then,
  ) = _CopyWithImpl$Mutation$UpdateBankCardMutation;

  factory CopyWith$Mutation$UpdateBankCardMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBankCardMutation;

  TRes call({
    Mutation$UpdateBankCardMutation$update_bank_card? update_bank_card,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateBankCardMutation$update_bank_card<TRes>
      get update_bank_card;
}

class _CopyWithImpl$Mutation$UpdateBankCardMutation<TRes>
    implements CopyWith$Mutation$UpdateBankCardMutation<TRes> {
  _CopyWithImpl$Mutation$UpdateBankCardMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBankCardMutation _instance;

  final TRes Function(Mutation$UpdateBankCardMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_bank_card = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateBankCardMutation(
        update_bank_card: update_bank_card == _undefined
            ? _instance.update_bank_card
            : (update_bank_card
                as Mutation$UpdateBankCardMutation$update_bank_card?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdateBankCardMutation$update_bank_card<TRes>
      get update_bank_card {
    final local$update_bank_card = _instance.update_bank_card;
    return local$update_bank_card == null
        ? CopyWith$Mutation$UpdateBankCardMutation$update_bank_card.stub(
            _then(_instance))
        : CopyWith$Mutation$UpdateBankCardMutation$update_bank_card(
            local$update_bank_card, (e) => call(update_bank_card: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateBankCardMutation<TRes>
    implements CopyWith$Mutation$UpdateBankCardMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBankCardMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdateBankCardMutation$update_bank_card? update_bank_card,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdateBankCardMutation$update_bank_card<TRes>
      get update_bank_card =>
          CopyWith$Mutation$UpdateBankCardMutation$update_bank_card.stub(_res);
}

const documentNodeMutationUpdateBankCardMutation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateBankCardMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'bank_card_set_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bank_card_id')),
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
        name: NameNode(value: 'update_bank_card'),
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
                name: NameNode(value: 'bank_card_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'bank_card_id')),
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
                name: NameNode(value: 'bankCardData'),
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
  fragmentDefinitionbankCardData,
]);
Mutation$UpdateBankCardMutation _parserFn$Mutation$UpdateBankCardMutation(
        Map<String, dynamic> data) =>
    Mutation$UpdateBankCardMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateBankCardMutation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateBankCardMutation?,
);

class Options$Mutation$UpdateBankCardMutation
    extends graphql.MutationOptions<Mutation$UpdateBankCardMutation> {
  Options$Mutation$UpdateBankCardMutation({
    String? operationName,
    required Variables$Mutation$UpdateBankCardMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateBankCardMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateBankCardMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateBankCardMutation>? update,
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
                        : _parserFn$Mutation$UpdateBankCardMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateBankCardMutation,
          parserFn: _parserFn$Mutation$UpdateBankCardMutation,
        );

  final OnMutationCompleted$Mutation$UpdateBankCardMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateBankCardMutation
    extends graphql.WatchQueryOptions<Mutation$UpdateBankCardMutation> {
  WatchOptions$Mutation$UpdateBankCardMutation({
    String? operationName,
    required Variables$Mutation$UpdateBankCardMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateBankCardMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateBankCardMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateBankCardMutation,
        );
}

extension ClientExtension$Mutation$UpdateBankCardMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateBankCardMutation>>
      mutate$UpdateBankCardMutation(
              Options$Mutation$UpdateBankCardMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateBankCardMutation>
      watchMutation$UpdateBankCardMutation(
              WatchOptions$Mutation$UpdateBankCardMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdateBankCardMutation$HookResult {
  Mutation$UpdateBankCardMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateBankCardMutation runMutation;

  final graphql.QueryResult<Mutation$UpdateBankCardMutation> result;
}

Mutation$UpdateBankCardMutation$HookResult useMutation$UpdateBankCardMutation(
    [WidgetOptions$Mutation$UpdateBankCardMutation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateBankCardMutation());
  return Mutation$UpdateBankCardMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateBankCardMutation>
    useWatchMutation$UpdateBankCardMutation(
            WatchOptions$Mutation$UpdateBankCardMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateBankCardMutation
    extends graphql.MutationOptions<Mutation$UpdateBankCardMutation> {
  WidgetOptions$Mutation$UpdateBankCardMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateBankCardMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateBankCardMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateBankCardMutation>? update,
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
                        : _parserFn$Mutation$UpdateBankCardMutation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateBankCardMutation,
          parserFn: _parserFn$Mutation$UpdateBankCardMutation,
        );

  final OnMutationCompleted$Mutation$UpdateBankCardMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateBankCardMutation
    = graphql.MultiSourceResult<Mutation$UpdateBankCardMutation> Function(
  Variables$Mutation$UpdateBankCardMutation, {
  Object? optimisticResult,
  Mutation$UpdateBankCardMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateBankCardMutation = widgets.Widget Function(
  RunMutation$Mutation$UpdateBankCardMutation,
  graphql.QueryResult<Mutation$UpdateBankCardMutation>?,
);

class Mutation$UpdateBankCardMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateBankCardMutation> {
  Mutation$UpdateBankCardMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateBankCardMutation? options,
    required Builder$Mutation$UpdateBankCardMutation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateBankCardMutation(),
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

class Mutation$UpdateBankCardMutation$update_bank_card {
  Mutation$UpdateBankCardMutation$update_bank_card({
    required this.returning,
    this.$__typename = 'bank_card_mutation_response',
  });

  factory Mutation$UpdateBankCardMutation$update_bank_card.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateBankCardMutation$update_bank_card(
      returning: (l$returning as List<dynamic>)
          .map((e) =>
              Fragment$bankCardData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$bankCardData> returning;

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
    if (!(other is Mutation$UpdateBankCardMutation$update_bank_card) ||
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

extension UtilityExtension$Mutation$UpdateBankCardMutation$update_bank_card
    on Mutation$UpdateBankCardMutation$update_bank_card {
  CopyWith$Mutation$UpdateBankCardMutation$update_bank_card<
          Mutation$UpdateBankCardMutation$update_bank_card>
      get copyWith => CopyWith$Mutation$UpdateBankCardMutation$update_bank_card(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateBankCardMutation$update_bank_card<TRes> {
  factory CopyWith$Mutation$UpdateBankCardMutation$update_bank_card(
    Mutation$UpdateBankCardMutation$update_bank_card instance,
    TRes Function(Mutation$UpdateBankCardMutation$update_bank_card) then,
  ) = _CopyWithImpl$Mutation$UpdateBankCardMutation$update_bank_card;

  factory CopyWith$Mutation$UpdateBankCardMutation$update_bank_card.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateBankCardMutation$update_bank_card;

  TRes call({
    List<Fragment$bankCardData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$bankCardData> Function(
              Iterable<CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateBankCardMutation$update_bank_card<TRes>
    implements CopyWith$Mutation$UpdateBankCardMutation$update_bank_card<TRes> {
  _CopyWithImpl$Mutation$UpdateBankCardMutation$update_bank_card(
    this._instance,
    this._then,
  );

  final Mutation$UpdateBankCardMutation$update_bank_card _instance;

  final TRes Function(Mutation$UpdateBankCardMutation$update_bank_card) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateBankCardMutation$update_bank_card(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$bankCardData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$bankCardData> Function(
                  Iterable<
                      CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
              _fn) =>
      call(
          returning:
              _fn(_instance.returning.map((e) => CopyWith$Fragment$bankCardData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateBankCardMutation$update_bank_card<TRes>
    implements CopyWith$Mutation$UpdateBankCardMutation$update_bank_card<TRes> {
  _CopyWithStubImpl$Mutation$UpdateBankCardMutation$update_bank_card(this._res);

  TRes _res;

  call({
    List<Fragment$bankCardData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetUserInvestorBankCardQuery {
  factory Variables$Query$GetUserInvestorBankCardQuery({
    required UUID user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      Variables$Query$GetUserInvestorBankCardQuery._({
        r'user_id': user_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetUserInvestorBankCardQuery._(this._$data);

  factory Variables$Query$GetUserInvestorBankCardQuery.fromJson(
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
          ?.map((e) => fromJson$Enum$bank_card_select_column((e as String)))
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
              Input$bank_card_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetUserInvestorBankCardQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get user_id => (_$data['user_id'] as UUID);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$bank_card_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$bank_card_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$bank_card_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$bank_card_order_by>?);
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
          ?.map((e) => toJson$Enum$bank_card_select_column(e))
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

  CopyWith$Variables$Query$GetUserInvestorBankCardQuery<
          Variables$Query$GetUserInvestorBankCardQuery>
      get copyWith => CopyWith$Variables$Query$GetUserInvestorBankCardQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserInvestorBankCardQuery) ||
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

abstract class CopyWith$Variables$Query$GetUserInvestorBankCardQuery<TRes> {
  factory CopyWith$Variables$Query$GetUserInvestorBankCardQuery(
    Variables$Query$GetUserInvestorBankCardQuery instance,
    TRes Function(Variables$Query$GetUserInvestorBankCardQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetUserInvestorBankCardQuery;

  factory CopyWith$Variables$Query$GetUserInvestorBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserInvestorBankCardQuery;

  TRes call({
    UUID? user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetUserInvestorBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetUserInvestorBankCardQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetUserInvestorBankCardQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserInvestorBankCardQuery _instance;

  final TRes Function(Variables$Query$GetUserInvestorBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetUserInvestorBankCardQuery._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$bank_card_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$bank_card_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserInvestorBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetUserInvestorBankCardQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserInvestorBankCardQuery(this._res);

  TRes _res;

  call({
    UUID? user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetUserInvestorBankCardQuery {
  Query$GetUserInvestorBankCardQuery({
    required this.bank_card,
    this.$__typename = 'query_root',
  });

  factory Query$GetUserInvestorBankCardQuery.fromJson(
      Map<String, dynamic> json) {
    final l$bank_card = json['bank_card'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInvestorBankCardQuery(
      bank_card: (l$bank_card as List<dynamic>)
          .map((e) =>
              Fragment$bankCardData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$bankCardData> bank_card;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card = bank_card;
    _resultData['bank_card'] = l$bank_card.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card = bank_card;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bank_card.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserInvestorBankCardQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card = bank_card;
    final lOther$bank_card = other.bank_card;
    if (l$bank_card.length != lOther$bank_card.length) {
      return false;
    }
    for (int i = 0; i < l$bank_card.length; i++) {
      final l$bank_card$entry = l$bank_card[i];
      final lOther$bank_card$entry = lOther$bank_card[i];
      if (l$bank_card$entry != lOther$bank_card$entry) {
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

extension UtilityExtension$Query$GetUserInvestorBankCardQuery
    on Query$GetUserInvestorBankCardQuery {
  CopyWith$Query$GetUserInvestorBankCardQuery<
          Query$GetUserInvestorBankCardQuery>
      get copyWith => CopyWith$Query$GetUserInvestorBankCardQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInvestorBankCardQuery<TRes> {
  factory CopyWith$Query$GetUserInvestorBankCardQuery(
    Query$GetUserInvestorBankCardQuery instance,
    TRes Function(Query$GetUserInvestorBankCardQuery) then,
  ) = _CopyWithImpl$Query$GetUserInvestorBankCardQuery;

  factory CopyWith$Query$GetUserInvestorBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInvestorBankCardQuery;

  TRes call({
    List<Fragment$bankCardData>? bank_card,
    String? $__typename,
  });
  TRes bank_card(
      Iterable<Fragment$bankCardData> Function(
              Iterable<CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserInvestorBankCardQuery<TRes>
    implements CopyWith$Query$GetUserInvestorBankCardQuery<TRes> {
  _CopyWithImpl$Query$GetUserInvestorBankCardQuery(
    this._instance,
    this._then,
  );

  final Query$GetUserInvestorBankCardQuery _instance;

  final TRes Function(Query$GetUserInvestorBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInvestorBankCardQuery(
        bank_card: bank_card == _undefined || bank_card == null
            ? _instance.bank_card
            : (bank_card as List<Fragment$bankCardData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bank_card(
          Iterable<Fragment$bankCardData> Function(
                  Iterable<
                      CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
              _fn) =>
      call(
          bank_card:
              _fn(_instance.bank_card.map((e) => CopyWith$Fragment$bankCardData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetUserInvestorBankCardQuery<TRes>
    implements CopyWith$Query$GetUserInvestorBankCardQuery<TRes> {
  _CopyWithStubImpl$Query$GetUserInvestorBankCardQuery(this._res);

  TRes _res;

  call({
    List<Fragment$bankCardData>? bank_card,
    String? $__typename,
  }) =>
      _res;
  bank_card(_fn) => _res;
}

const documentNodeQueryGetUserInvestorBankCardQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserInvestorBankCardQuery'),
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
            name: NameNode(value: 'bank_card_select_column'),
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
            name: NameNode(value: 'bank_card_order_by'),
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
        name: NameNode(value: 'bank_card'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'profile'),
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
            name: NameNode(value: 'bankCardData'),
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
  fragmentDefinitionbankCardData,
]);
Query$GetUserInvestorBankCardQuery _parserFn$Query$GetUserInvestorBankCardQuery(
        Map<String, dynamic> data) =>
    Query$GetUserInvestorBankCardQuery.fromJson(data);
typedef OnQueryComplete$Query$GetUserInvestorBankCardQuery = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetUserInvestorBankCardQuery?,
);

class Options$Query$GetUserInvestorBankCardQuery
    extends graphql.QueryOptions<Query$GetUserInvestorBankCardQuery> {
  Options$Query$GetUserInvestorBankCardQuery({
    String? operationName,
    required Variables$Query$GetUserInvestorBankCardQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserInvestorBankCardQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserInvestorBankCardQuery? onComplete,
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
                        : _parserFn$Query$GetUserInvestorBankCardQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserInvestorBankCardQuery,
          parserFn: _parserFn$Query$GetUserInvestorBankCardQuery,
        );

  final OnQueryComplete$Query$GetUserInvestorBankCardQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserInvestorBankCardQuery
    extends graphql.WatchQueryOptions<Query$GetUserInvestorBankCardQuery> {
  WatchOptions$Query$GetUserInvestorBankCardQuery({
    String? operationName,
    required Variables$Query$GetUserInvestorBankCardQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserInvestorBankCardQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetUserInvestorBankCardQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserInvestorBankCardQuery,
        );
}

class FetchMoreOptions$Query$GetUserInvestorBankCardQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserInvestorBankCardQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserInvestorBankCardQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserInvestorBankCardQuery,
        );
}

extension ClientExtension$Query$GetUserInvestorBankCardQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserInvestorBankCardQuery>>
      query$GetUserInvestorBankCardQuery(
              Options$Query$GetUserInvestorBankCardQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetUserInvestorBankCardQuery>
      watchQuery$GetUserInvestorBankCardQuery(
              WatchOptions$Query$GetUserInvestorBankCardQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetUserInvestorBankCardQuery({
    required Query$GetUserInvestorBankCardQuery data,
    required Variables$Query$GetUserInvestorBankCardQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetUserInvestorBankCardQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserInvestorBankCardQuery? readQuery$GetUserInvestorBankCardQuery({
    required Variables$Query$GetUserInvestorBankCardQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetUserInvestorBankCardQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetUserInvestorBankCardQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserInvestorBankCardQuery>
    useQuery$GetUserInvestorBankCardQuery(
            Options$Query$GetUserInvestorBankCardQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserInvestorBankCardQuery>
    useWatchQuery$GetUserInvestorBankCardQuery(
            WatchOptions$Query$GetUserInvestorBankCardQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetUserInvestorBankCardQuery$Widget
    extends graphql_flutter.Query<Query$GetUserInvestorBankCardQuery> {
  Query$GetUserInvestorBankCardQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetUserInvestorBankCardQuery options,
    required graphql_flutter.QueryBuilder<Query$GetUserInvestorBankCardQuery>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetByPkBankCardQuery {
  factory Variables$Query$GetByPkBankCardQuery({required UUID bank_card_id}) =>
      Variables$Query$GetByPkBankCardQuery._({
        r'bank_card_id': bank_card_id,
      });

  Variables$Query$GetByPkBankCardQuery._(this._$data);

  factory Variables$Query$GetByPkBankCardQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$bank_card_id = data['bank_card_id'];
    result$data['bank_card_id'] = uuidFromJson(l$bank_card_id);
    return Variables$Query$GetByPkBankCardQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get bank_card_id => (_$data['bank_card_id'] as UUID);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$bank_card_id = bank_card_id;
    result$data['bank_card_id'] = uuidToJson(l$bank_card_id);
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkBankCardQuery<
          Variables$Query$GetByPkBankCardQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkBankCardQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkBankCardQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_id = bank_card_id;
    final lOther$bank_card_id = other.bank_card_id;
    if (l$bank_card_id != lOther$bank_card_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$bank_card_id = bank_card_id;
    return Object.hashAll([l$bank_card_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkBankCardQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkBankCardQuery(
    Variables$Query$GetByPkBankCardQuery instance,
    TRes Function(Variables$Query$GetByPkBankCardQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkBankCardQuery;

  factory CopyWith$Variables$Query$GetByPkBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkBankCardQuery;

  TRes call({UUID? bank_card_id});
}

class _CopyWithImpl$Variables$Query$GetByPkBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkBankCardQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkBankCardQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkBankCardQuery _instance;

  final TRes Function(Variables$Query$GetByPkBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? bank_card_id = _undefined}) =>
      _then(Variables$Query$GetByPkBankCardQuery._({
        ..._instance._$data,
        if (bank_card_id != _undefined && bank_card_id != null)
          'bank_card_id': (bank_card_id as UUID),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkBankCardQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkBankCardQuery(this._res);

  TRes _res;

  call({UUID? bank_card_id}) => _res;
}

class Query$GetByPkBankCardQuery {
  Query$GetByPkBankCardQuery({
    this.bank_card_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkBankCardQuery.fromJson(Map<String, dynamic> json) {
    final l$bank_card_by_pk = json['bank_card_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkBankCardQuery(
      bank_card_by_pk: l$bank_card_by_pk == null
          ? null
          : Fragment$bankCardData.fromJson(
              (l$bank_card_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$bankCardData? bank_card_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card_by_pk = bank_card_by_pk;
    _resultData['bank_card_by_pk'] = l$bank_card_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card_by_pk = bank_card_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_card_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkBankCardQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_by_pk = bank_card_by_pk;
    final lOther$bank_card_by_pk = other.bank_card_by_pk;
    if (l$bank_card_by_pk != lOther$bank_card_by_pk) {
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

extension UtilityExtension$Query$GetByPkBankCardQuery
    on Query$GetByPkBankCardQuery {
  CopyWith$Query$GetByPkBankCardQuery<Query$GetByPkBankCardQuery>
      get copyWith => CopyWith$Query$GetByPkBankCardQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkBankCardQuery<TRes> {
  factory CopyWith$Query$GetByPkBankCardQuery(
    Query$GetByPkBankCardQuery instance,
    TRes Function(Query$GetByPkBankCardQuery) then,
  ) = _CopyWithImpl$Query$GetByPkBankCardQuery;

  factory CopyWith$Query$GetByPkBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkBankCardQuery;

  TRes call({
    Fragment$bankCardData? bank_card_by_pk,
    String? $__typename,
  });
  CopyWith$Fragment$bankCardData<TRes> get bank_card_by_pk;
}

class _CopyWithImpl$Query$GetByPkBankCardQuery<TRes>
    implements CopyWith$Query$GetByPkBankCardQuery<TRes> {
  _CopyWithImpl$Query$GetByPkBankCardQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkBankCardQuery _instance;

  final TRes Function(Query$GetByPkBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkBankCardQuery(
        bank_card_by_pk: bank_card_by_pk == _undefined
            ? _instance.bank_card_by_pk
            : (bank_card_by_pk as Fragment$bankCardData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$bankCardData<TRes> get bank_card_by_pk {
    final local$bank_card_by_pk = _instance.bank_card_by_pk;
    return local$bank_card_by_pk == null
        ? CopyWith$Fragment$bankCardData.stub(_then(_instance))
        : CopyWith$Fragment$bankCardData(
            local$bank_card_by_pk, (e) => call(bank_card_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkBankCardQuery<TRes>
    implements CopyWith$Query$GetByPkBankCardQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkBankCardQuery(this._res);

  TRes _res;

  call({
    Fragment$bankCardData? bank_card_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$bankCardData<TRes> get bank_card_by_pk =>
      CopyWith$Fragment$bankCardData.stub(_res);
}

const documentNodeQueryGetByPkBankCardQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkBankCardQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bank_card_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'bank_card_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'bank_card_id'),
            value: VariableNode(name: NameNode(value: 'bank_card_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'bankCardData'),
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
  fragmentDefinitionbankCardData,
]);
Query$GetByPkBankCardQuery _parserFn$Query$GetByPkBankCardQuery(
        Map<String, dynamic> data) =>
    Query$GetByPkBankCardQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkBankCardQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetByPkBankCardQuery?,
);

class Options$Query$GetByPkBankCardQuery
    extends graphql.QueryOptions<Query$GetByPkBankCardQuery> {
  Options$Query$GetByPkBankCardQuery({
    String? operationName,
    required Variables$Query$GetByPkBankCardQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkBankCardQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkBankCardQuery? onComplete,
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
                        : _parserFn$Query$GetByPkBankCardQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkBankCardQuery,
          parserFn: _parserFn$Query$GetByPkBankCardQuery,
        );

  final OnQueryComplete$Query$GetByPkBankCardQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkBankCardQuery
    extends graphql.WatchQueryOptions<Query$GetByPkBankCardQuery> {
  WatchOptions$Query$GetByPkBankCardQuery({
    String? operationName,
    required Variables$Query$GetByPkBankCardQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkBankCardQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkBankCardQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkBankCardQuery,
        );
}

class FetchMoreOptions$Query$GetByPkBankCardQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkBankCardQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkBankCardQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkBankCardQuery,
        );
}

extension ClientExtension$Query$GetByPkBankCardQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkBankCardQuery>>
      query$GetByPkBankCardQuery(
              Options$Query$GetByPkBankCardQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetByPkBankCardQuery>
      watchQuery$GetByPkBankCardQuery(
              WatchOptions$Query$GetByPkBankCardQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetByPkBankCardQuery({
    required Query$GetByPkBankCardQuery data,
    required Variables$Query$GetByPkBankCardQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetByPkBankCardQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkBankCardQuery? readQuery$GetByPkBankCardQuery({
    required Variables$Query$GetByPkBankCardQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetByPkBankCardQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetByPkBankCardQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkBankCardQuery>
    useQuery$GetByPkBankCardQuery(Options$Query$GetByPkBankCardQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkBankCardQuery>
    useWatchQuery$GetByPkBankCardQuery(
            WatchOptions$Query$GetByPkBankCardQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetByPkBankCardQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkBankCardQuery> {
  Query$GetByPkBankCardQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkBankCardQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkBankCardQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetAllBankCardAggregate {
  factory Variables$Query$GetAllBankCardAggregate({
    Input$bank_card_bool_exp? where,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      Variables$Query$GetAllBankCardAggregate._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllBankCardAggregate._(this._$data);

  factory Variables$Query$GetAllBankCardAggregate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$bank_card_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$bank_card_select_column((e as String)))
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
              Input$bank_card_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllBankCardAggregate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bank_card_bool_exp? get where =>
      (_$data['where'] as Input$bank_card_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$bank_card_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$bank_card_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$bank_card_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$bank_card_order_by>?);
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
          ?.map((e) => toJson$Enum$bank_card_select_column(e))
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

  CopyWith$Variables$Query$GetAllBankCardAggregate<
          Variables$Query$GetAllBankCardAggregate>
      get copyWith => CopyWith$Variables$Query$GetAllBankCardAggregate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllBankCardAggregate) ||
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

abstract class CopyWith$Variables$Query$GetAllBankCardAggregate<TRes> {
  factory CopyWith$Variables$Query$GetAllBankCardAggregate(
    Variables$Query$GetAllBankCardAggregate instance,
    TRes Function(Variables$Query$GetAllBankCardAggregate) then,
  ) = _CopyWithImpl$Variables$Query$GetAllBankCardAggregate;

  factory CopyWith$Variables$Query$GetAllBankCardAggregate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllBankCardAggregate;

  TRes call({
    Input$bank_card_bool_exp? where,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllBankCardAggregate<TRes>
    implements CopyWith$Variables$Query$GetAllBankCardAggregate<TRes> {
  _CopyWithImpl$Variables$Query$GetAllBankCardAggregate(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllBankCardAggregate _instance;

  final TRes Function(Variables$Query$GetAllBankCardAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllBankCardAggregate._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$bank_card_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$bank_card_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$bank_card_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllBankCardAggregate<TRes>
    implements CopyWith$Variables$Query$GetAllBankCardAggregate<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllBankCardAggregate(this._res);

  TRes _res;

  call({
    Input$bank_card_bool_exp? where,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllBankCardAggregate {
  Query$GetAllBankCardAggregate({
    required this.bank_card_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllBankCardAggregate.fromJson(Map<String, dynamic> json) {
    final l$bank_card_aggregate = json['bank_card_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetAllBankCardAggregate(
      bank_card_aggregate: Fragment$bankCardAggregate.fromJson(
          (l$bank_card_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$bankCardAggregate bank_card_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card_aggregate = bank_card_aggregate;
    _resultData['bank_card_aggregate'] = l$bank_card_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card_aggregate = bank_card_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_card_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllBankCardAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_aggregate = bank_card_aggregate;
    final lOther$bank_card_aggregate = other.bank_card_aggregate;
    if (l$bank_card_aggregate != lOther$bank_card_aggregate) {
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

extension UtilityExtension$Query$GetAllBankCardAggregate
    on Query$GetAllBankCardAggregate {
  CopyWith$Query$GetAllBankCardAggregate<Query$GetAllBankCardAggregate>
      get copyWith => CopyWith$Query$GetAllBankCardAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllBankCardAggregate<TRes> {
  factory CopyWith$Query$GetAllBankCardAggregate(
    Query$GetAllBankCardAggregate instance,
    TRes Function(Query$GetAllBankCardAggregate) then,
  ) = _CopyWithImpl$Query$GetAllBankCardAggregate;

  factory CopyWith$Query$GetAllBankCardAggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllBankCardAggregate;

  TRes call({
    Fragment$bankCardAggregate? bank_card_aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$bankCardAggregate<TRes> get bank_card_aggregate;
}

class _CopyWithImpl$Query$GetAllBankCardAggregate<TRes>
    implements CopyWith$Query$GetAllBankCardAggregate<TRes> {
  _CopyWithImpl$Query$GetAllBankCardAggregate(
    this._instance,
    this._then,
  );

  final Query$GetAllBankCardAggregate _instance;

  final TRes Function(Query$GetAllBankCardAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllBankCardAggregate(
        bank_card_aggregate:
            bank_card_aggregate == _undefined || bank_card_aggregate == null
                ? _instance.bank_card_aggregate
                : (bank_card_aggregate as Fragment$bankCardAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$bankCardAggregate<TRes> get bank_card_aggregate {
    final local$bank_card_aggregate = _instance.bank_card_aggregate;
    return CopyWith$Fragment$bankCardAggregate(
        local$bank_card_aggregate, (e) => call(bank_card_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetAllBankCardAggregate<TRes>
    implements CopyWith$Query$GetAllBankCardAggregate<TRes> {
  _CopyWithStubImpl$Query$GetAllBankCardAggregate(this._res);

  TRes _res;

  call({
    Fragment$bankCardAggregate? bank_card_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$bankCardAggregate<TRes> get bank_card_aggregate =>
      CopyWith$Fragment$bankCardAggregate.stub(_res);
}

const documentNodeQueryGetAllBankCardAggregate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllBankCardAggregate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'bank_card_bool_exp'),
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
            name: NameNode(value: 'bank_card_select_column'),
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
            name: NameNode(value: 'bank_card_order_by'),
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
        name: NameNode(value: 'bank_card_aggregate'),
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
            name: NameNode(value: 'bankCardAggregate'),
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
  fragmentDefinitionbankCardAggregate,
]);
Query$GetAllBankCardAggregate _parserFn$Query$GetAllBankCardAggregate(
        Map<String, dynamic> data) =>
    Query$GetAllBankCardAggregate.fromJson(data);
typedef OnQueryComplete$Query$GetAllBankCardAggregate = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllBankCardAggregate?,
);

class Options$Query$GetAllBankCardAggregate
    extends graphql.QueryOptions<Query$GetAllBankCardAggregate> {
  Options$Query$GetAllBankCardAggregate({
    String? operationName,
    Variables$Query$GetAllBankCardAggregate? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllBankCardAggregate? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllBankCardAggregate? onComplete,
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
                        : _parserFn$Query$GetAllBankCardAggregate(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllBankCardAggregate,
          parserFn: _parserFn$Query$GetAllBankCardAggregate,
        );

  final OnQueryComplete$Query$GetAllBankCardAggregate? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllBankCardAggregate
    extends graphql.WatchQueryOptions<Query$GetAllBankCardAggregate> {
  WatchOptions$Query$GetAllBankCardAggregate({
    String? operationName,
    Variables$Query$GetAllBankCardAggregate? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllBankCardAggregate? typedOptimisticResult,
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
          document: documentNodeQueryGetAllBankCardAggregate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllBankCardAggregate,
        );
}

class FetchMoreOptions$Query$GetAllBankCardAggregate
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllBankCardAggregate({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllBankCardAggregate? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllBankCardAggregate,
        );
}

extension ClientExtension$Query$GetAllBankCardAggregate
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllBankCardAggregate>>
      query$GetAllBankCardAggregate(
              [Options$Query$GetAllBankCardAggregate? options]) async =>
          await this.query(options ?? Options$Query$GetAllBankCardAggregate());
  graphql.ObservableQuery<
      Query$GetAllBankCardAggregate> watchQuery$GetAllBankCardAggregate(
          [WatchOptions$Query$GetAllBankCardAggregate? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetAllBankCardAggregate());
  void writeQuery$GetAllBankCardAggregate({
    required Query$GetAllBankCardAggregate data,
    Variables$Query$GetAllBankCardAggregate? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllBankCardAggregate),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllBankCardAggregate? readQuery$GetAllBankCardAggregate({
    Variables$Query$GetAllBankCardAggregate? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllBankCardAggregate),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllBankCardAggregate.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllBankCardAggregate>
    useQuery$GetAllBankCardAggregate(
            [Options$Query$GetAllBankCardAggregate? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllBankCardAggregate());
graphql.ObservableQuery<Query$GetAllBankCardAggregate>
    useWatchQuery$GetAllBankCardAggregate(
            [WatchOptions$Query$GetAllBankCardAggregate? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllBankCardAggregate());

class Query$GetAllBankCardAggregate$Widget
    extends graphql_flutter.Query<Query$GetAllBankCardAggregate> {
  Query$GetAllBankCardAggregate$Widget({
    widgets.Key? key,
    Options$Query$GetAllBankCardAggregate? options,
    required graphql_flutter.QueryBuilder<Query$GetAllBankCardAggregate>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllBankCardAggregate(),
          builder: builder,
        );
}

class Variables$Query$GetUserBankCardAggregate {
  factory Variables$Query$GetUserBankCardAggregate({
    required UUID user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      Variables$Query$GetUserBankCardAggregate._({
        r'user_id': user_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetUserBankCardAggregate._(this._$data);

  factory Variables$Query$GetUserBankCardAggregate.fromJson(
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
          ?.map((e) => fromJson$Enum$bank_card_select_column((e as String)))
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
              Input$bank_card_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetUserBankCardAggregate._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get user_id => (_$data['user_id'] as UUID);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$bank_card_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$bank_card_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$bank_card_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$bank_card_order_by>?);
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
          ?.map((e) => toJson$Enum$bank_card_select_column(e))
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

  CopyWith$Variables$Query$GetUserBankCardAggregate<
          Variables$Query$GetUserBankCardAggregate>
      get copyWith => CopyWith$Variables$Query$GetUserBankCardAggregate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserBankCardAggregate) ||
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

abstract class CopyWith$Variables$Query$GetUserBankCardAggregate<TRes> {
  factory CopyWith$Variables$Query$GetUserBankCardAggregate(
    Variables$Query$GetUserBankCardAggregate instance,
    TRes Function(Variables$Query$GetUserBankCardAggregate) then,
  ) = _CopyWithImpl$Variables$Query$GetUserBankCardAggregate;

  factory CopyWith$Variables$Query$GetUserBankCardAggregate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserBankCardAggregate;

  TRes call({
    UUID? user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetUserBankCardAggregate<TRes>
    implements CopyWith$Variables$Query$GetUserBankCardAggregate<TRes> {
  _CopyWithImpl$Variables$Query$GetUserBankCardAggregate(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserBankCardAggregate _instance;

  final TRes Function(Variables$Query$GetUserBankCardAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetUserBankCardAggregate._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$bank_card_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$bank_card_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserBankCardAggregate<TRes>
    implements CopyWith$Variables$Query$GetUserBankCardAggregate<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserBankCardAggregate(this._res);

  TRes _res;

  call({
    UUID? user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetUserBankCardAggregate {
  Query$GetUserBankCardAggregate({
    required this.bank_card_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$GetUserBankCardAggregate.fromJson(Map<String, dynamic> json) {
    final l$bank_card_aggregate = json['bank_card_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetUserBankCardAggregate(
      bank_card_aggregate: Fragment$bankCardAggregate.fromJson(
          (l$bank_card_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$bankCardAggregate bank_card_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card_aggregate = bank_card_aggregate;
    _resultData['bank_card_aggregate'] = l$bank_card_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card_aggregate = bank_card_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_card_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserBankCardAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_aggregate = bank_card_aggregate;
    final lOther$bank_card_aggregate = other.bank_card_aggregate;
    if (l$bank_card_aggregate != lOther$bank_card_aggregate) {
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

extension UtilityExtension$Query$GetUserBankCardAggregate
    on Query$GetUserBankCardAggregate {
  CopyWith$Query$GetUserBankCardAggregate<Query$GetUserBankCardAggregate>
      get copyWith => CopyWith$Query$GetUserBankCardAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserBankCardAggregate<TRes> {
  factory CopyWith$Query$GetUserBankCardAggregate(
    Query$GetUserBankCardAggregate instance,
    TRes Function(Query$GetUserBankCardAggregate) then,
  ) = _CopyWithImpl$Query$GetUserBankCardAggregate;

  factory CopyWith$Query$GetUserBankCardAggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserBankCardAggregate;

  TRes call({
    Fragment$bankCardAggregate? bank_card_aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$bankCardAggregate<TRes> get bank_card_aggregate;
}

class _CopyWithImpl$Query$GetUserBankCardAggregate<TRes>
    implements CopyWith$Query$GetUserBankCardAggregate<TRes> {
  _CopyWithImpl$Query$GetUserBankCardAggregate(
    this._instance,
    this._then,
  );

  final Query$GetUserBankCardAggregate _instance;

  final TRes Function(Query$GetUserBankCardAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserBankCardAggregate(
        bank_card_aggregate:
            bank_card_aggregate == _undefined || bank_card_aggregate == null
                ? _instance.bank_card_aggregate
                : (bank_card_aggregate as Fragment$bankCardAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$bankCardAggregate<TRes> get bank_card_aggregate {
    final local$bank_card_aggregate = _instance.bank_card_aggregate;
    return CopyWith$Fragment$bankCardAggregate(
        local$bank_card_aggregate, (e) => call(bank_card_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetUserBankCardAggregate<TRes>
    implements CopyWith$Query$GetUserBankCardAggregate<TRes> {
  _CopyWithStubImpl$Query$GetUserBankCardAggregate(this._res);

  TRes _res;

  call({
    Fragment$bankCardAggregate? bank_card_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$bankCardAggregate<TRes> get bank_card_aggregate =>
      CopyWith$Fragment$bankCardAggregate.stub(_res);
}

const documentNodeQueryGetUserBankCardAggregate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserBankCardAggregate'),
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
            name: NameNode(value: 'bank_card_select_column'),
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
            name: NameNode(value: 'bank_card_order_by'),
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
        name: NameNode(value: 'bank_card_aggregate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'profile'),
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
            name: NameNode(value: 'bankCardAggregate'),
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
  fragmentDefinitionbankCardAggregate,
]);
Query$GetUserBankCardAggregate _parserFn$Query$GetUserBankCardAggregate(
        Map<String, dynamic> data) =>
    Query$GetUserBankCardAggregate.fromJson(data);
typedef OnQueryComplete$Query$GetUserBankCardAggregate = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetUserBankCardAggregate?,
);

class Options$Query$GetUserBankCardAggregate
    extends graphql.QueryOptions<Query$GetUserBankCardAggregate> {
  Options$Query$GetUserBankCardAggregate({
    String? operationName,
    required Variables$Query$GetUserBankCardAggregate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserBankCardAggregate? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserBankCardAggregate? onComplete,
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
                        : _parserFn$Query$GetUserBankCardAggregate(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserBankCardAggregate,
          parserFn: _parserFn$Query$GetUserBankCardAggregate,
        );

  final OnQueryComplete$Query$GetUserBankCardAggregate? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserBankCardAggregate
    extends graphql.WatchQueryOptions<Query$GetUserBankCardAggregate> {
  WatchOptions$Query$GetUserBankCardAggregate({
    String? operationName,
    required Variables$Query$GetUserBankCardAggregate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserBankCardAggregate? typedOptimisticResult,
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
          document: documentNodeQueryGetUserBankCardAggregate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserBankCardAggregate,
        );
}

class FetchMoreOptions$Query$GetUserBankCardAggregate
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserBankCardAggregate({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserBankCardAggregate variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserBankCardAggregate,
        );
}

extension ClientExtension$Query$GetUserBankCardAggregate
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserBankCardAggregate>>
      query$GetUserBankCardAggregate(
              Options$Query$GetUserBankCardAggregate options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetUserBankCardAggregate>
      watchQuery$GetUserBankCardAggregate(
              WatchOptions$Query$GetUserBankCardAggregate options) =>
          this.watchQuery(options);
  void writeQuery$GetUserBankCardAggregate({
    required Query$GetUserBankCardAggregate data,
    required Variables$Query$GetUserBankCardAggregate variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetUserBankCardAggregate),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserBankCardAggregate? readQuery$GetUserBankCardAggregate({
    required Variables$Query$GetUserBankCardAggregate variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetUserBankCardAggregate),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetUserBankCardAggregate.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserBankCardAggregate>
    useQuery$GetUserBankCardAggregate(
            Options$Query$GetUserBankCardAggregate options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserBankCardAggregate>
    useWatchQuery$GetUserBankCardAggregate(
            WatchOptions$Query$GetUserBankCardAggregate options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetUserBankCardAggregate$Widget
    extends graphql_flutter.Query<Query$GetUserBankCardAggregate> {
  Query$GetUserBankCardAggregate$Widget({
    widgets.Key? key,
    required Options$Query$GetUserBankCardAggregate options,
    required graphql_flutter.QueryBuilder<Query$GetUserBankCardAggregate>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetAllBankCardQuery {
  factory Variables$Query$GetAllBankCardQuery({
    Input$bank_card_bool_exp? where,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      Variables$Query$GetAllBankCardQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllBankCardQuery._(this._$data);

  factory Variables$Query$GetAllBankCardQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$bank_card_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) => fromJson$Enum$bank_card_select_column((e as String)))
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
              Input$bank_card_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllBankCardQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$bank_card_bool_exp? get where =>
      (_$data['where'] as Input$bank_card_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$bank_card_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$bank_card_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$bank_card_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$bank_card_order_by>?);
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
          ?.map((e) => toJson$Enum$bank_card_select_column(e))
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

  CopyWith$Variables$Query$GetAllBankCardQuery<
          Variables$Query$GetAllBankCardQuery>
      get copyWith => CopyWith$Variables$Query$GetAllBankCardQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllBankCardQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllBankCardQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllBankCardQuery(
    Variables$Query$GetAllBankCardQuery instance,
    TRes Function(Variables$Query$GetAllBankCardQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllBankCardQuery;

  factory CopyWith$Variables$Query$GetAllBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllBankCardQuery;

  TRes call({
    Input$bank_card_bool_exp? where,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetAllBankCardQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllBankCardQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllBankCardQuery _instance;

  final TRes Function(Variables$Query$GetAllBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllBankCardQuery._({
        ..._instance._$data,
        if (where != _undefined) 'where': (where as Input$bank_card_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$bank_card_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$bank_card_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetAllBankCardQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllBankCardQuery(this._res);

  TRes _res;

  call({
    Input$bank_card_bool_exp? where,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllBankCardQuery {
  Query$GetAllBankCardQuery({
    required this.bank_card,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllBankCardQuery.fromJson(Map<String, dynamic> json) {
    final l$bank_card = json['bank_card'];
    final l$$__typename = json['__typename'];
    return Query$GetAllBankCardQuery(
      bank_card: (l$bank_card as List<dynamic>)
          .map((e) =>
              Fragment$bankCardData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$bankCardData> bank_card;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card = bank_card;
    _resultData['bank_card'] = l$bank_card.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card = bank_card;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bank_card.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllBankCardQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card = bank_card;
    final lOther$bank_card = other.bank_card;
    if (l$bank_card.length != lOther$bank_card.length) {
      return false;
    }
    for (int i = 0; i < l$bank_card.length; i++) {
      final l$bank_card$entry = l$bank_card[i];
      final lOther$bank_card$entry = lOther$bank_card[i];
      if (l$bank_card$entry != lOther$bank_card$entry) {
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

extension UtilityExtension$Query$GetAllBankCardQuery
    on Query$GetAllBankCardQuery {
  CopyWith$Query$GetAllBankCardQuery<Query$GetAllBankCardQuery> get copyWith =>
      CopyWith$Query$GetAllBankCardQuery(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetAllBankCardQuery<TRes> {
  factory CopyWith$Query$GetAllBankCardQuery(
    Query$GetAllBankCardQuery instance,
    TRes Function(Query$GetAllBankCardQuery) then,
  ) = _CopyWithImpl$Query$GetAllBankCardQuery;

  factory CopyWith$Query$GetAllBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllBankCardQuery;

  TRes call({
    List<Fragment$bankCardData>? bank_card,
    String? $__typename,
  });
  TRes bank_card(
      Iterable<Fragment$bankCardData> Function(
              Iterable<CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllBankCardQuery<TRes>
    implements CopyWith$Query$GetAllBankCardQuery<TRes> {
  _CopyWithImpl$Query$GetAllBankCardQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllBankCardQuery _instance;

  final TRes Function(Query$GetAllBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllBankCardQuery(
        bank_card: bank_card == _undefined || bank_card == null
            ? _instance.bank_card
            : (bank_card as List<Fragment$bankCardData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bank_card(
          Iterable<Fragment$bankCardData> Function(
                  Iterable<
                      CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
              _fn) =>
      call(
          bank_card:
              _fn(_instance.bank_card.map((e) => CopyWith$Fragment$bankCardData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllBankCardQuery<TRes>
    implements CopyWith$Query$GetAllBankCardQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllBankCardQuery(this._res);

  TRes _res;

  call({
    List<Fragment$bankCardData>? bank_card,
    String? $__typename,
  }) =>
      _res;
  bank_card(_fn) => _res;
}

const documentNodeQueryGetAllBankCardQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllBankCardQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'bank_card_bool_exp'),
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
            name: NameNode(value: 'bank_card_select_column'),
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
            name: NameNode(value: 'bank_card_order_by'),
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
        name: NameNode(value: 'bank_card'),
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
            name: NameNode(value: 'bankCardData'),
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
  fragmentDefinitionbankCardData,
]);
Query$GetAllBankCardQuery _parserFn$Query$GetAllBankCardQuery(
        Map<String, dynamic> data) =>
    Query$GetAllBankCardQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllBankCardQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllBankCardQuery?,
);

class Options$Query$GetAllBankCardQuery
    extends graphql.QueryOptions<Query$GetAllBankCardQuery> {
  Options$Query$GetAllBankCardQuery({
    String? operationName,
    Variables$Query$GetAllBankCardQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllBankCardQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllBankCardQuery? onComplete,
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
                        : _parserFn$Query$GetAllBankCardQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllBankCardQuery,
          parserFn: _parserFn$Query$GetAllBankCardQuery,
        );

  final OnQueryComplete$Query$GetAllBankCardQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllBankCardQuery
    extends graphql.WatchQueryOptions<Query$GetAllBankCardQuery> {
  WatchOptions$Query$GetAllBankCardQuery({
    String? operationName,
    Variables$Query$GetAllBankCardQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllBankCardQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllBankCardQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllBankCardQuery,
        );
}

class FetchMoreOptions$Query$GetAllBankCardQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllBankCardQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllBankCardQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllBankCardQuery,
        );
}

extension ClientExtension$Query$GetAllBankCardQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllBankCardQuery>>
      query$GetAllBankCardQuery(
              [Options$Query$GetAllBankCardQuery? options]) async =>
          await this.query(options ?? Options$Query$GetAllBankCardQuery());
  graphql.ObservableQuery<Query$GetAllBankCardQuery>
      watchQuery$GetAllBankCardQuery(
              [WatchOptions$Query$GetAllBankCardQuery? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$GetAllBankCardQuery());
  void writeQuery$GetAllBankCardQuery({
    required Query$GetAllBankCardQuery data,
    Variables$Query$GetAllBankCardQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetAllBankCardQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllBankCardQuery? readQuery$GetAllBankCardQuery({
    Variables$Query$GetAllBankCardQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetAllBankCardQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetAllBankCardQuery.fromJson(result);
  }
}

graphql_flutter
    .QueryHookResult<Query$GetAllBankCardQuery> useQuery$GetAllBankCardQuery(
        [Options$Query$GetAllBankCardQuery? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetAllBankCardQuery());
graphql.ObservableQuery<Query$GetAllBankCardQuery>
    useWatchQuery$GetAllBankCardQuery(
            [WatchOptions$Query$GetAllBankCardQuery? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$GetAllBankCardQuery());

class Query$GetAllBankCardQuery$Widget
    extends graphql_flutter.Query<Query$GetAllBankCardQuery> {
  Query$GetAllBankCardQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllBankCardQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllBankCardQuery> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllBankCardQuery(),
          builder: builder,
        );
}

class Variables$Query$GetUserBankCardQuery {
  factory Variables$Query$GetUserBankCardQuery({
    required UUID user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      Variables$Query$GetUserBankCardQuery._({
        r'user_id': user_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetUserBankCardQuery._(this._$data);

  factory Variables$Query$GetUserBankCardQuery.fromJson(
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
          ?.map((e) => fromJson$Enum$bank_card_select_column((e as String)))
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
              Input$bank_card_order_by.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetUserBankCardQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get user_id => (_$data['user_id'] as UUID);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$bank_card_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$bank_card_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$bank_card_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$bank_card_order_by>?);
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
          ?.map((e) => toJson$Enum$bank_card_select_column(e))
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

  CopyWith$Variables$Query$GetUserBankCardQuery<
          Variables$Query$GetUserBankCardQuery>
      get copyWith => CopyWith$Variables$Query$GetUserBankCardQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserBankCardQuery) ||
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

abstract class CopyWith$Variables$Query$GetUserBankCardQuery<TRes> {
  factory CopyWith$Variables$Query$GetUserBankCardQuery(
    Variables$Query$GetUserBankCardQuery instance,
    TRes Function(Variables$Query$GetUserBankCardQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetUserBankCardQuery;

  factory CopyWith$Variables$Query$GetUserBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserBankCardQuery;

  TRes call({
    UUID? user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetUserBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetUserBankCardQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetUserBankCardQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserBankCardQuery _instance;

  final TRes Function(Variables$Query$GetUserBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetUserBankCardQuery._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on': (distinct_on as List<Enum$bank_card_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$bank_card_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserBankCardQuery<TRes>
    implements CopyWith$Variables$Query$GetUserBankCardQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserBankCardQuery(this._res);

  TRes _res;

  call({
    UUID? user_id,
    int? limit,
    List<Enum$bank_card_select_column>? distinct_on,
    int? offset,
    List<Input$bank_card_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetUserBankCardQuery {
  Query$GetUserBankCardQuery({
    required this.bank_card,
    this.$__typename = 'query_root',
  });

  factory Query$GetUserBankCardQuery.fromJson(Map<String, dynamic> json) {
    final l$bank_card = json['bank_card'];
    final l$$__typename = json['__typename'];
    return Query$GetUserBankCardQuery(
      bank_card: (l$bank_card as List<dynamic>)
          .map((e) =>
              Fragment$bankCardData.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$bankCardData> bank_card;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card = bank_card;
    _resultData['bank_card'] = l$bank_card.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card = bank_card;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$bank_card.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserBankCardQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card = bank_card;
    final lOther$bank_card = other.bank_card;
    if (l$bank_card.length != lOther$bank_card.length) {
      return false;
    }
    for (int i = 0; i < l$bank_card.length; i++) {
      final l$bank_card$entry = l$bank_card[i];
      final lOther$bank_card$entry = lOther$bank_card[i];
      if (l$bank_card$entry != lOther$bank_card$entry) {
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

extension UtilityExtension$Query$GetUserBankCardQuery
    on Query$GetUserBankCardQuery {
  CopyWith$Query$GetUserBankCardQuery<Query$GetUserBankCardQuery>
      get copyWith => CopyWith$Query$GetUserBankCardQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserBankCardQuery<TRes> {
  factory CopyWith$Query$GetUserBankCardQuery(
    Query$GetUserBankCardQuery instance,
    TRes Function(Query$GetUserBankCardQuery) then,
  ) = _CopyWithImpl$Query$GetUserBankCardQuery;

  factory CopyWith$Query$GetUserBankCardQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserBankCardQuery;

  TRes call({
    List<Fragment$bankCardData>? bank_card,
    String? $__typename,
  });
  TRes bank_card(
      Iterable<Fragment$bankCardData> Function(
              Iterable<CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserBankCardQuery<TRes>
    implements CopyWith$Query$GetUserBankCardQuery<TRes> {
  _CopyWithImpl$Query$GetUserBankCardQuery(
    this._instance,
    this._then,
  );

  final Query$GetUserBankCardQuery _instance;

  final TRes Function(Query$GetUserBankCardQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserBankCardQuery(
        bank_card: bank_card == _undefined || bank_card == null
            ? _instance.bank_card
            : (bank_card as List<Fragment$bankCardData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes bank_card(
          Iterable<Fragment$bankCardData> Function(
                  Iterable<
                      CopyWith$Fragment$bankCardData<Fragment$bankCardData>>)
              _fn) =>
      call(
          bank_card:
              _fn(_instance.bank_card.map((e) => CopyWith$Fragment$bankCardData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetUserBankCardQuery<TRes>
    implements CopyWith$Query$GetUserBankCardQuery<TRes> {
  _CopyWithStubImpl$Query$GetUserBankCardQuery(this._res);

  TRes _res;

  call({
    List<Fragment$bankCardData>? bank_card,
    String? $__typename,
  }) =>
      _res;
  bank_card(_fn) => _res;
}

const documentNodeQueryGetUserBankCardQuery = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserBankCardQuery'),
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
            name: NameNode(value: 'bank_card_select_column'),
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
            name: NameNode(value: 'bank_card_order_by'),
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
        name: NameNode(value: 'bank_card'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'profile'),
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
            name: NameNode(value: 'bankCardData'),
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
  fragmentDefinitionbankCardData,
]);
Query$GetUserBankCardQuery _parserFn$Query$GetUserBankCardQuery(
        Map<String, dynamic> data) =>
    Query$GetUserBankCardQuery.fromJson(data);
typedef OnQueryComplete$Query$GetUserBankCardQuery = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserBankCardQuery?,
);

class Options$Query$GetUserBankCardQuery
    extends graphql.QueryOptions<Query$GetUserBankCardQuery> {
  Options$Query$GetUserBankCardQuery({
    String? operationName,
    required Variables$Query$GetUserBankCardQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserBankCardQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserBankCardQuery? onComplete,
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
                        : _parserFn$Query$GetUserBankCardQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserBankCardQuery,
          parserFn: _parserFn$Query$GetUserBankCardQuery,
        );

  final OnQueryComplete$Query$GetUserBankCardQuery? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserBankCardQuery
    extends graphql.WatchQueryOptions<Query$GetUserBankCardQuery> {
  WatchOptions$Query$GetUserBankCardQuery({
    String? operationName,
    required Variables$Query$GetUserBankCardQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserBankCardQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetUserBankCardQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserBankCardQuery,
        );
}

class FetchMoreOptions$Query$GetUserBankCardQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserBankCardQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserBankCardQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserBankCardQuery,
        );
}

extension ClientExtension$Query$GetUserBankCardQuery on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserBankCardQuery>>
      query$GetUserBankCardQuery(
              Options$Query$GetUserBankCardQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetUserBankCardQuery>
      watchQuery$GetUserBankCardQuery(
              WatchOptions$Query$GetUserBankCardQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetUserBankCardQuery({
    required Query$GetUserBankCardQuery data,
    required Variables$Query$GetUserBankCardQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetUserBankCardQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserBankCardQuery? readQuery$GetUserBankCardQuery({
    required Variables$Query$GetUserBankCardQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetUserBankCardQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetUserBankCardQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserBankCardQuery>
    useQuery$GetUserBankCardQuery(Options$Query$GetUserBankCardQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserBankCardQuery>
    useWatchQuery$GetUserBankCardQuery(
            WatchOptions$Query$GetUserBankCardQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetUserBankCardQuery$Widget
    extends graphql_flutter.Query<Query$GetUserBankCardQuery> {
  Query$GetUserBankCardQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetUserBankCardQuery options,
    required graphql_flutter.QueryBuilder<Query$GetUserBankCardQuery> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
