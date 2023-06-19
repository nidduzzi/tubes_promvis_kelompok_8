// GENERATED FILE
// DO NOT MODIFY
import 'dart:async';
import 'investment.graphql.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'package:tubes_promvis_kelompok_8/src/types/graphql/scalar.dart';
import 'schema.graphql.dart';

class Fragment$paymentInvestmentData {
  Fragment$paymentInvestmentData({
    required this.payment_investment_id,
    required this.payment_investment_fulfilled,
    required this.updated_at,
    required this.created_at,
    this.bank_card_used,
    this.$__typename = 'payment_investment',
  });

  factory Fragment$paymentInvestmentData.fromJson(Map<String, dynamic> json) {
    final l$payment_investment_id = json['payment_investment_id'];
    final l$payment_investment_fulfilled = json['payment_investment_fulfilled'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$bank_card_used = json['bank_card_used'];
    final l$$__typename = json['__typename'];
    return Fragment$paymentInvestmentData(
      payment_investment_id: uuidFromJson(l$payment_investment_id),
      payment_investment_fulfilled: (l$payment_investment_fulfilled as bool),
      updated_at: DateTime.parse((l$updated_at as String)),
      created_at: DateTime.parse((l$created_at as String)),
      bank_card_used: l$bank_card_used == null
          ? null
          : Fragment$paymentInvestmentData$bank_card_used.fromJson(
              (l$bank_card_used as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final UUID payment_investment_id;

  final bool payment_investment_fulfilled;

  final DateTime updated_at;

  final DateTime created_at;

  final Fragment$paymentInvestmentData$bank_card_used? bank_card_used;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment_id = payment_investment_id;
    _resultData['payment_investment_id'] = uuidToJson(l$payment_investment_id);
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    _resultData['payment_investment_fulfilled'] =
        l$payment_investment_fulfilled;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at.toIso8601String();
    final l$bank_card_used = bank_card_used;
    _resultData['bank_card_used'] = l$bank_card_used?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment_id = payment_investment_id;
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$bank_card_used = bank_card_used;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$payment_investment_id,
      l$payment_investment_fulfilled,
      l$updated_at,
      l$created_at,
      l$bank_card_used,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$paymentInvestmentData) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_id = payment_investment_id;
    final lOther$payment_investment_id = other.payment_investment_id;
    if (l$payment_investment_id != lOther$payment_investment_id) {
      return false;
    }
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    final lOther$payment_investment_fulfilled =
        other.payment_investment_fulfilled;
    if (l$payment_investment_fulfilled != lOther$payment_investment_fulfilled) {
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
    final l$bank_card_used = bank_card_used;
    final lOther$bank_card_used = other.bank_card_used;
    if (l$bank_card_used != lOther$bank_card_used) {
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

extension UtilityExtension$Fragment$paymentInvestmentData
    on Fragment$paymentInvestmentData {
  CopyWith$Fragment$paymentInvestmentData<Fragment$paymentInvestmentData>
      get copyWith => CopyWith$Fragment$paymentInvestmentData(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$paymentInvestmentData<TRes> {
  factory CopyWith$Fragment$paymentInvestmentData(
    Fragment$paymentInvestmentData instance,
    TRes Function(Fragment$paymentInvestmentData) then,
  ) = _CopyWithImpl$Fragment$paymentInvestmentData;

  factory CopyWith$Fragment$paymentInvestmentData.stub(TRes res) =
      _CopyWithStubImpl$Fragment$paymentInvestmentData;

  TRes call({
    UUID? payment_investment_id,
    bool? payment_investment_fulfilled,
    DateTime? updated_at,
    DateTime? created_at,
    Fragment$paymentInvestmentData$bank_card_used? bank_card_used,
    String? $__typename,
  });
  CopyWith$Fragment$paymentInvestmentData$bank_card_used<TRes>
      get bank_card_used;
}

class _CopyWithImpl$Fragment$paymentInvestmentData<TRes>
    implements CopyWith$Fragment$paymentInvestmentData<TRes> {
  _CopyWithImpl$Fragment$paymentInvestmentData(
    this._instance,
    this._then,
  );

  final Fragment$paymentInvestmentData _instance;

  final TRes Function(Fragment$paymentInvestmentData) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment_id = _undefined,
    Object? payment_investment_fulfilled = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? bank_card_used = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$paymentInvestmentData(
        payment_investment_id:
            payment_investment_id == _undefined || payment_investment_id == null
                ? _instance.payment_investment_id
                : (payment_investment_id as UUID),
        payment_investment_fulfilled:
            payment_investment_fulfilled == _undefined ||
                    payment_investment_fulfilled == null
                ? _instance.payment_investment_fulfilled
                : (payment_investment_fulfilled as bool),
        updated_at: updated_at == _undefined || updated_at == null
            ? _instance.updated_at
            : (updated_at as DateTime),
        created_at: created_at == _undefined || created_at == null
            ? _instance.created_at
            : (created_at as DateTime),
        bank_card_used: bank_card_used == _undefined
            ? _instance.bank_card_used
            : (bank_card_used
                as Fragment$paymentInvestmentData$bank_card_used?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$paymentInvestmentData$bank_card_used<TRes>
      get bank_card_used {
    final local$bank_card_used = _instance.bank_card_used;
    return local$bank_card_used == null
        ? CopyWith$Fragment$paymentInvestmentData$bank_card_used.stub(
            _then(_instance))
        : CopyWith$Fragment$paymentInvestmentData$bank_card_used(
            local$bank_card_used, (e) => call(bank_card_used: e));
  }
}

class _CopyWithStubImpl$Fragment$paymentInvestmentData<TRes>
    implements CopyWith$Fragment$paymentInvestmentData<TRes> {
  _CopyWithStubImpl$Fragment$paymentInvestmentData(this._res);

  TRes _res;

  call({
    UUID? payment_investment_id,
    bool? payment_investment_fulfilled,
    DateTime? updated_at,
    DateTime? created_at,
    Fragment$paymentInvestmentData$bank_card_used? bank_card_used,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$paymentInvestmentData$bank_card_used<TRes>
      get bank_card_used =>
          CopyWith$Fragment$paymentInvestmentData$bank_card_used.stub(_res);
}

const fragmentDefinitionpaymentInvestmentData = FragmentDefinitionNode(
  name: NameNode(value: 'paymentInvestmentData'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'payment_investment'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'payment_investment_id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'payment_investment_fulfilled'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'payment_investment_id'),
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
      name: NameNode(value: 'bank_card_used'),
      alias: null,
      arguments: [],
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
const documentNodeFragmentpaymentInvestmentData = DocumentNode(definitions: [
  fragmentDefinitionpaymentInvestmentData,
]);

extension ClientExtension$Fragment$paymentInvestmentData
    on graphql.GraphQLClient {
  void writeFragment$paymentInvestmentData({
    required Fragment$paymentInvestmentData data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'paymentInvestmentData',
            document: documentNodeFragmentpaymentInvestmentData,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$paymentInvestmentData? readFragment$paymentInvestmentData({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'paymentInvestmentData',
          document: documentNodeFragmentpaymentInvestmentData,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$paymentInvestmentData.fromJson(result);
  }
}

class Fragment$paymentInvestmentData$bank_card_used {
  Fragment$paymentInvestmentData$bank_card_used({
    required this.bank_card_id,
    this.$__typename = 'bank_card',
  });

  factory Fragment$paymentInvestmentData$bank_card_used.fromJson(
      Map<String, dynamic> json) {
    final l$bank_card_id = json['bank_card_id'];
    final l$$__typename = json['__typename'];
    return Fragment$paymentInvestmentData$bank_card_used(
      bank_card_id: uuidFromJson(l$bank_card_id),
      $__typename: (l$$__typename as String),
    );
  }

  final UUID bank_card_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card_id = bank_card_id;
    _resultData['bank_card_id'] = uuidToJson(l$bank_card_id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card_id = bank_card_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_card_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$paymentInvestmentData$bank_card_used) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_id = bank_card_id;
    final lOther$bank_card_id = other.bank_card_id;
    if (l$bank_card_id != lOther$bank_card_id) {
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

extension UtilityExtension$Fragment$paymentInvestmentData$bank_card_used
    on Fragment$paymentInvestmentData$bank_card_used {
  CopyWith$Fragment$paymentInvestmentData$bank_card_used<
          Fragment$paymentInvestmentData$bank_card_used>
      get copyWith => CopyWith$Fragment$paymentInvestmentData$bank_card_used(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$paymentInvestmentData$bank_card_used<TRes> {
  factory CopyWith$Fragment$paymentInvestmentData$bank_card_used(
    Fragment$paymentInvestmentData$bank_card_used instance,
    TRes Function(Fragment$paymentInvestmentData$bank_card_used) then,
  ) = _CopyWithImpl$Fragment$paymentInvestmentData$bank_card_used;

  factory CopyWith$Fragment$paymentInvestmentData$bank_card_used.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$paymentInvestmentData$bank_card_used;

  TRes call({
    UUID? bank_card_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$paymentInvestmentData$bank_card_used<TRes>
    implements CopyWith$Fragment$paymentInvestmentData$bank_card_used<TRes> {
  _CopyWithImpl$Fragment$paymentInvestmentData$bank_card_used(
    this._instance,
    this._then,
  );

  final Fragment$paymentInvestmentData$bank_card_used _instance;

  final TRes Function(Fragment$paymentInvestmentData$bank_card_used) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$paymentInvestmentData$bank_card_used(
        bank_card_id: bank_card_id == _undefined || bank_card_id == null
            ? _instance.bank_card_id
            : (bank_card_id as UUID),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$paymentInvestmentData$bank_card_used<TRes>
    implements CopyWith$Fragment$paymentInvestmentData$bank_card_used<TRes> {
  _CopyWithStubImpl$Fragment$paymentInvestmentData$bank_card_used(this._res);

  TRes _res;

  call({
    UUID? bank_card_id,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$paymentInvestmentAggregate {
  Fragment$paymentInvestmentAggregate({
    this.aggregate,
    this.$__typename = 'payment_investment_aggregate',
  });

  factory Fragment$paymentInvestmentAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$aggregate = json['aggregate'];
    final l$$__typename = json['__typename'];
    return Fragment$paymentInvestmentAggregate(
      aggregate: l$aggregate == null
          ? null
          : Fragment$paymentInvestmentAggregate$aggregate.fromJson(
              (l$aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$paymentInvestmentAggregate$aggregate? aggregate;

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
    if (!(other is Fragment$paymentInvestmentAggregate) ||
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

extension UtilityExtension$Fragment$paymentInvestmentAggregate
    on Fragment$paymentInvestmentAggregate {
  CopyWith$Fragment$paymentInvestmentAggregate<
          Fragment$paymentInvestmentAggregate>
      get copyWith => CopyWith$Fragment$paymentInvestmentAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$paymentInvestmentAggregate<TRes> {
  factory CopyWith$Fragment$paymentInvestmentAggregate(
    Fragment$paymentInvestmentAggregate instance,
    TRes Function(Fragment$paymentInvestmentAggregate) then,
  ) = _CopyWithImpl$Fragment$paymentInvestmentAggregate;

  factory CopyWith$Fragment$paymentInvestmentAggregate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$paymentInvestmentAggregate;

  TRes call({
    Fragment$paymentInvestmentAggregate$aggregate? aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$paymentInvestmentAggregate$aggregate<TRes> get aggregate;
}

class _CopyWithImpl$Fragment$paymentInvestmentAggregate<TRes>
    implements CopyWith$Fragment$paymentInvestmentAggregate<TRes> {
  _CopyWithImpl$Fragment$paymentInvestmentAggregate(
    this._instance,
    this._then,
  );

  final Fragment$paymentInvestmentAggregate _instance;

  final TRes Function(Fragment$paymentInvestmentAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$paymentInvestmentAggregate(
        aggregate: aggregate == _undefined
            ? _instance.aggregate
            : (aggregate as Fragment$paymentInvestmentAggregate$aggregate?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$paymentInvestmentAggregate$aggregate<TRes> get aggregate {
    final local$aggregate = _instance.aggregate;
    return local$aggregate == null
        ? CopyWith$Fragment$paymentInvestmentAggregate$aggregate.stub(
            _then(_instance))
        : CopyWith$Fragment$paymentInvestmentAggregate$aggregate(
            local$aggregate, (e) => call(aggregate: e));
  }
}

class _CopyWithStubImpl$Fragment$paymentInvestmentAggregate<TRes>
    implements CopyWith$Fragment$paymentInvestmentAggregate<TRes> {
  _CopyWithStubImpl$Fragment$paymentInvestmentAggregate(this._res);

  TRes _res;

  call({
    Fragment$paymentInvestmentAggregate$aggregate? aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$paymentInvestmentAggregate$aggregate<TRes> get aggregate =>
      CopyWith$Fragment$paymentInvestmentAggregate$aggregate.stub(_res);
}

const fragmentDefinitionpaymentInvestmentAggregate = FragmentDefinitionNode(
  name: NameNode(value: 'paymentInvestmentAggregate'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'payment_investment_aggregate'),
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
const documentNodeFragmentpaymentInvestmentAggregate =
    DocumentNode(definitions: [
  fragmentDefinitionpaymentInvestmentAggregate,
]);

extension ClientExtension$Fragment$paymentInvestmentAggregate
    on graphql.GraphQLClient {
  void writeFragment$paymentInvestmentAggregate({
    required Fragment$paymentInvestmentAggregate data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'paymentInvestmentAggregate',
            document: documentNodeFragmentpaymentInvestmentAggregate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$paymentInvestmentAggregate? readFragment$paymentInvestmentAggregate({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'paymentInvestmentAggregate',
          document: documentNodeFragmentpaymentInvestmentAggregate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$paymentInvestmentAggregate.fromJson(result);
  }
}

class Fragment$paymentInvestmentAggregate$aggregate {
  Fragment$paymentInvestmentAggregate$aggregate({
    required this.count,
    this.$__typename = 'payment_investment_aggregate_fields',
  });

  factory Fragment$paymentInvestmentAggregate$aggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$$__typename = json['__typename'];
    return Fragment$paymentInvestmentAggregate$aggregate(
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
    if (!(other is Fragment$paymentInvestmentAggregate$aggregate) ||
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

extension UtilityExtension$Fragment$paymentInvestmentAggregate$aggregate
    on Fragment$paymentInvestmentAggregate$aggregate {
  CopyWith$Fragment$paymentInvestmentAggregate$aggregate<
          Fragment$paymentInvestmentAggregate$aggregate>
      get copyWith => CopyWith$Fragment$paymentInvestmentAggregate$aggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$paymentInvestmentAggregate$aggregate<TRes> {
  factory CopyWith$Fragment$paymentInvestmentAggregate$aggregate(
    Fragment$paymentInvestmentAggregate$aggregate instance,
    TRes Function(Fragment$paymentInvestmentAggregate$aggregate) then,
  ) = _CopyWithImpl$Fragment$paymentInvestmentAggregate$aggregate;

  factory CopyWith$Fragment$paymentInvestmentAggregate$aggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$paymentInvestmentAggregate$aggregate;

  TRes call({
    int? count,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$paymentInvestmentAggregate$aggregate<TRes>
    implements CopyWith$Fragment$paymentInvestmentAggregate$aggregate<TRes> {
  _CopyWithImpl$Fragment$paymentInvestmentAggregate$aggregate(
    this._instance,
    this._then,
  );

  final Fragment$paymentInvestmentAggregate$aggregate _instance;

  final TRes Function(Fragment$paymentInvestmentAggregate$aggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$paymentInvestmentAggregate$aggregate(
        count: count == _undefined || count == null
            ? _instance.count
            : (count as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$paymentInvestmentAggregate$aggregate<TRes>
    implements CopyWith$Fragment$paymentInvestmentAggregate$aggregate<TRes> {
  _CopyWithStubImpl$Fragment$paymentInvestmentAggregate$aggregate(this._res);

  TRes _res;

  call({
    int? count,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$InsertPaymentInvestmentMutation {
  factory Variables$Mutation$InsertPaymentInvestmentMutation(
          {required Input$payment_investment_insert_input data}) =>
      Variables$Mutation$InsertPaymentInvestmentMutation._({
        r'data': data,
      });

  Variables$Mutation$InsertPaymentInvestmentMutation._(this._$data);

  factory Variables$Mutation$InsertPaymentInvestmentMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$payment_investment_insert_input.fromJson(
        (l$data as Map<String, dynamic>));
    return Variables$Mutation$InsertPaymentInvestmentMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$payment_investment_insert_input get data =>
      (_$data['data'] as Input$payment_investment_insert_input);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$InsertPaymentInvestmentMutation<
          Variables$Mutation$InsertPaymentInvestmentMutation>
      get copyWith =>
          CopyWith$Variables$Mutation$InsertPaymentInvestmentMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$InsertPaymentInvestmentMutation) ||
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

abstract class CopyWith$Variables$Mutation$InsertPaymentInvestmentMutation<
    TRes> {
  factory CopyWith$Variables$Mutation$InsertPaymentInvestmentMutation(
    Variables$Mutation$InsertPaymentInvestmentMutation instance,
    TRes Function(Variables$Mutation$InsertPaymentInvestmentMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$InsertPaymentInvestmentMutation;

  factory CopyWith$Variables$Mutation$InsertPaymentInvestmentMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$InsertPaymentInvestmentMutation;

  TRes call({Input$payment_investment_insert_input? data});
}

class _CopyWithImpl$Variables$Mutation$InsertPaymentInvestmentMutation<TRes>
    implements
        CopyWith$Variables$Mutation$InsertPaymentInvestmentMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$InsertPaymentInvestmentMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$InsertPaymentInvestmentMutation _instance;

  final TRes Function(Variables$Mutation$InsertPaymentInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? data = _undefined}) =>
      _then(Variables$Mutation$InsertPaymentInvestmentMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$payment_investment_insert_input),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$InsertPaymentInvestmentMutation<TRes>
    implements
        CopyWith$Variables$Mutation$InsertPaymentInvestmentMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$InsertPaymentInvestmentMutation(
      this._res);

  TRes _res;

  call({Input$payment_investment_insert_input? data}) => _res;
}

class Mutation$InsertPaymentInvestmentMutation {
  Mutation$InsertPaymentInvestmentMutation({
    this.insert_payment_investment_one,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$InsertPaymentInvestmentMutation.fromJson(
      Map<String, dynamic> json) {
    final l$insert_payment_investment_one =
        json['insert_payment_investment_one'];
    final l$$__typename = json['__typename'];
    return Mutation$InsertPaymentInvestmentMutation(
      insert_payment_investment_one: l$insert_payment_investment_one == null
          ? null
          : Fragment$paymentInvestmentData.fromJson(
              (l$insert_payment_investment_one as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$paymentInvestmentData? insert_payment_investment_one;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_payment_investment_one = insert_payment_investment_one;
    _resultData['insert_payment_investment_one'] =
        l$insert_payment_investment_one?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_payment_investment_one = insert_payment_investment_one;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_payment_investment_one,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$InsertPaymentInvestmentMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_payment_investment_one = insert_payment_investment_one;
    final lOther$insert_payment_investment_one =
        other.insert_payment_investment_one;
    if (l$insert_payment_investment_one !=
        lOther$insert_payment_investment_one) {
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

extension UtilityExtension$Mutation$InsertPaymentInvestmentMutation
    on Mutation$InsertPaymentInvestmentMutation {
  CopyWith$Mutation$InsertPaymentInvestmentMutation<
          Mutation$InsertPaymentInvestmentMutation>
      get copyWith => CopyWith$Mutation$InsertPaymentInvestmentMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$InsertPaymentInvestmentMutation<TRes> {
  factory CopyWith$Mutation$InsertPaymentInvestmentMutation(
    Mutation$InsertPaymentInvestmentMutation instance,
    TRes Function(Mutation$InsertPaymentInvestmentMutation) then,
  ) = _CopyWithImpl$Mutation$InsertPaymentInvestmentMutation;

  factory CopyWith$Mutation$InsertPaymentInvestmentMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$InsertPaymentInvestmentMutation;

  TRes call({
    Fragment$paymentInvestmentData? insert_payment_investment_one,
    String? $__typename,
  });
  CopyWith$Fragment$paymentInvestmentData<TRes>
      get insert_payment_investment_one;
}

class _CopyWithImpl$Mutation$InsertPaymentInvestmentMutation<TRes>
    implements CopyWith$Mutation$InsertPaymentInvestmentMutation<TRes> {
  _CopyWithImpl$Mutation$InsertPaymentInvestmentMutation(
    this._instance,
    this._then,
  );

  final Mutation$InsertPaymentInvestmentMutation _instance;

  final TRes Function(Mutation$InsertPaymentInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_payment_investment_one = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$InsertPaymentInvestmentMutation(
        insert_payment_investment_one:
            insert_payment_investment_one == _undefined
                ? _instance.insert_payment_investment_one
                : (insert_payment_investment_one
                    as Fragment$paymentInvestmentData?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$paymentInvestmentData<TRes>
      get insert_payment_investment_one {
    final local$insert_payment_investment_one =
        _instance.insert_payment_investment_one;
    return local$insert_payment_investment_one == null
        ? CopyWith$Fragment$paymentInvestmentData.stub(_then(_instance))
        : CopyWith$Fragment$paymentInvestmentData(
            local$insert_payment_investment_one,
            (e) => call(insert_payment_investment_one: e));
  }
}

class _CopyWithStubImpl$Mutation$InsertPaymentInvestmentMutation<TRes>
    implements CopyWith$Mutation$InsertPaymentInvestmentMutation<TRes> {
  _CopyWithStubImpl$Mutation$InsertPaymentInvestmentMutation(this._res);

  TRes _res;

  call({
    Fragment$paymentInvestmentData? insert_payment_investment_one,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$paymentInvestmentData<TRes>
      get insert_payment_investment_one =>
          CopyWith$Fragment$paymentInvestmentData.stub(_res);
}

const documentNodeMutationInsertPaymentInvestmentMutation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'InsertPaymentInvestmentMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'payment_investment_insert_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_payment_investment_one'),
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
            name: NameNode(value: 'paymentInvestmentData'),
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
  fragmentDefinitionpaymentInvestmentData,
]);
Mutation$InsertPaymentInvestmentMutation
    _parserFn$Mutation$InsertPaymentInvestmentMutation(
            Map<String, dynamic> data) =>
        Mutation$InsertPaymentInvestmentMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$InsertPaymentInvestmentMutation
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$InsertPaymentInvestmentMutation?,
);

class Options$Mutation$InsertPaymentInvestmentMutation
    extends graphql.MutationOptions<Mutation$InsertPaymentInvestmentMutation> {
  Options$Mutation$InsertPaymentInvestmentMutation({
    String? operationName,
    required Variables$Mutation$InsertPaymentInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertPaymentInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertPaymentInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertPaymentInvestmentMutation>? update,
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
                        : _parserFn$Mutation$InsertPaymentInvestmentMutation(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertPaymentInvestmentMutation,
          parserFn: _parserFn$Mutation$InsertPaymentInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$InsertPaymentInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$InsertPaymentInvestmentMutation extends graphql
    .WatchQueryOptions<Mutation$InsertPaymentInvestmentMutation> {
  WatchOptions$Mutation$InsertPaymentInvestmentMutation({
    String? operationName,
    required Variables$Mutation$InsertPaymentInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertPaymentInvestmentMutation? typedOptimisticResult,
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
          document: documentNodeMutationInsertPaymentInvestmentMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$InsertPaymentInvestmentMutation,
        );
}

extension ClientExtension$Mutation$InsertPaymentInvestmentMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$InsertPaymentInvestmentMutation>>
      mutate$InsertPaymentInvestmentMutation(
              Options$Mutation$InsertPaymentInvestmentMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$InsertPaymentInvestmentMutation>
      watchMutation$InsertPaymentInvestmentMutation(
              WatchOptions$Mutation$InsertPaymentInvestmentMutation options) =>
          this.watchMutation(options);
}

class Mutation$InsertPaymentInvestmentMutation$HookResult {
  Mutation$InsertPaymentInvestmentMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$InsertPaymentInvestmentMutation runMutation;

  final graphql.QueryResult<Mutation$InsertPaymentInvestmentMutation> result;
}

Mutation$InsertPaymentInvestmentMutation$HookResult
    useMutation$InsertPaymentInvestmentMutation(
        [WidgetOptions$Mutation$InsertPaymentInvestmentMutation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$InsertPaymentInvestmentMutation());
  return Mutation$InsertPaymentInvestmentMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$InsertPaymentInvestmentMutation>
    useWatchMutation$InsertPaymentInvestmentMutation(
            WatchOptions$Mutation$InsertPaymentInvestmentMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$InsertPaymentInvestmentMutation
    extends graphql.MutationOptions<Mutation$InsertPaymentInvestmentMutation> {
  WidgetOptions$Mutation$InsertPaymentInvestmentMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$InsertPaymentInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$InsertPaymentInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$InsertPaymentInvestmentMutation>? update,
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
                        : _parserFn$Mutation$InsertPaymentInvestmentMutation(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationInsertPaymentInvestmentMutation,
          parserFn: _parserFn$Mutation$InsertPaymentInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$InsertPaymentInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$InsertPaymentInvestmentMutation
    = graphql.MultiSourceResult<Mutation$InsertPaymentInvestmentMutation>
        Function(
  Variables$Mutation$InsertPaymentInvestmentMutation, {
  Object? optimisticResult,
  Mutation$InsertPaymentInvestmentMutation? typedOptimisticResult,
});
typedef Builder$Mutation$InsertPaymentInvestmentMutation = widgets.Widget
    Function(
  RunMutation$Mutation$InsertPaymentInvestmentMutation,
  graphql.QueryResult<Mutation$InsertPaymentInvestmentMutation>?,
);

class Mutation$InsertPaymentInvestmentMutation$Widget
    extends graphql_flutter.Mutation<Mutation$InsertPaymentInvestmentMutation> {
  Mutation$InsertPaymentInvestmentMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$InsertPaymentInvestmentMutation? options,
    required Builder$Mutation$InsertPaymentInvestmentMutation builder,
  }) : super(
          key: key,
          options: options ??
              WidgetOptions$Mutation$InsertPaymentInvestmentMutation(),
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

class Variables$Mutation$UpdatePaymentInvestmentMutation {
  factory Variables$Mutation$UpdatePaymentInvestmentMutation({
    required Input$payment_investment_set_input data,
    required UUID payment_investment_id,
  }) =>
      Variables$Mutation$UpdatePaymentInvestmentMutation._({
        r'data': data,
        r'payment_investment_id': payment_investment_id,
      });

  Variables$Mutation$UpdatePaymentInvestmentMutation._(this._$data);

  factory Variables$Mutation$UpdatePaymentInvestmentMutation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$data = data['data'];
    result$data['data'] = Input$payment_investment_set_input.fromJson(
        (l$data as Map<String, dynamic>));
    final l$payment_investment_id = data['payment_investment_id'];
    result$data['payment_investment_id'] =
        uuidFromJson(l$payment_investment_id);
    return Variables$Mutation$UpdatePaymentInvestmentMutation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$payment_investment_set_input get data =>
      (_$data['data'] as Input$payment_investment_set_input);
  UUID get payment_investment_id => (_$data['payment_investment_id'] as UUID);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$data = data;
    result$data['data'] = l$data.toJson();
    final l$payment_investment_id = payment_investment_id;
    result$data['payment_investment_id'] = uuidToJson(l$payment_investment_id);
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdatePaymentInvestmentMutation<
          Variables$Mutation$UpdatePaymentInvestmentMutation>
      get copyWith =>
          CopyWith$Variables$Mutation$UpdatePaymentInvestmentMutation(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdatePaymentInvestmentMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$payment_investment_id = payment_investment_id;
    final lOther$payment_investment_id = other.payment_investment_id;
    if (l$payment_investment_id != lOther$payment_investment_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$data = data;
    final l$payment_investment_id = payment_investment_id;
    return Object.hashAll([
      l$data,
      l$payment_investment_id,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdatePaymentInvestmentMutation<
    TRes> {
  factory CopyWith$Variables$Mutation$UpdatePaymentInvestmentMutation(
    Variables$Mutation$UpdatePaymentInvestmentMutation instance,
    TRes Function(Variables$Mutation$UpdatePaymentInvestmentMutation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePaymentInvestmentMutation;

  factory CopyWith$Variables$Mutation$UpdatePaymentInvestmentMutation.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePaymentInvestmentMutation;

  TRes call({
    Input$payment_investment_set_input? data,
    UUID? payment_investment_id,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdatePaymentInvestmentMutation<TRes>
    implements
        CopyWith$Variables$Mutation$UpdatePaymentInvestmentMutation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePaymentInvestmentMutation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePaymentInvestmentMutation _instance;

  final TRes Function(Variables$Mutation$UpdatePaymentInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? data = _undefined,
    Object? payment_investment_id = _undefined,
  }) =>
      _then(Variables$Mutation$UpdatePaymentInvestmentMutation._({
        ..._instance._$data,
        if (data != _undefined && data != null)
          'data': (data as Input$payment_investment_set_input),
        if (payment_investment_id != _undefined &&
            payment_investment_id != null)
          'payment_investment_id': (payment_investment_id as UUID),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePaymentInvestmentMutation<TRes>
    implements
        CopyWith$Variables$Mutation$UpdatePaymentInvestmentMutation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePaymentInvestmentMutation(
      this._res);

  TRes _res;

  call({
    Input$payment_investment_set_input? data,
    UUID? payment_investment_id,
  }) =>
      _res;
}

class Mutation$UpdatePaymentInvestmentMutation {
  Mutation$UpdatePaymentInvestmentMutation({
    this.update_payment_investment,
    this.$__typename = 'mutation_root',
  });

  factory Mutation$UpdatePaymentInvestmentMutation.fromJson(
      Map<String, dynamic> json) {
    final l$update_payment_investment = json['update_payment_investment'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentInvestmentMutation(
      update_payment_investment: l$update_payment_investment == null
          ? null
          : Mutation$UpdatePaymentInvestmentMutation$update_payment_investment
              .fromJson((l$update_payment_investment as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdatePaymentInvestmentMutation$update_payment_investment?
      update_payment_investment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_payment_investment = update_payment_investment;
    _resultData['update_payment_investment'] =
        l$update_payment_investment?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_payment_investment = update_payment_investment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_payment_investment,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdatePaymentInvestmentMutation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_payment_investment = update_payment_investment;
    final lOther$update_payment_investment = other.update_payment_investment;
    if (l$update_payment_investment != lOther$update_payment_investment) {
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

extension UtilityExtension$Mutation$UpdatePaymentInvestmentMutation
    on Mutation$UpdatePaymentInvestmentMutation {
  CopyWith$Mutation$UpdatePaymentInvestmentMutation<
          Mutation$UpdatePaymentInvestmentMutation>
      get copyWith => CopyWith$Mutation$UpdatePaymentInvestmentMutation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePaymentInvestmentMutation<TRes> {
  factory CopyWith$Mutation$UpdatePaymentInvestmentMutation(
    Mutation$UpdatePaymentInvestmentMutation instance,
    TRes Function(Mutation$UpdatePaymentInvestmentMutation) then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentInvestmentMutation;

  factory CopyWith$Mutation$UpdatePaymentInvestmentMutation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePaymentInvestmentMutation;

  TRes call({
    Mutation$UpdatePaymentInvestmentMutation$update_payment_investment?
        update_payment_investment,
    String? $__typename,
  });
  CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
      TRes> get update_payment_investment;
}

class _CopyWithImpl$Mutation$UpdatePaymentInvestmentMutation<TRes>
    implements CopyWith$Mutation$UpdatePaymentInvestmentMutation<TRes> {
  _CopyWithImpl$Mutation$UpdatePaymentInvestmentMutation(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePaymentInvestmentMutation _instance;

  final TRes Function(Mutation$UpdatePaymentInvestmentMutation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_payment_investment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePaymentInvestmentMutation(
        update_payment_investment: update_payment_investment == _undefined
            ? _instance.update_payment_investment
            : (update_payment_investment
                as Mutation$UpdatePaymentInvestmentMutation$update_payment_investment?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
      TRes> get update_payment_investment {
    final local$update_payment_investment = _instance.update_payment_investment;
    return local$update_payment_investment == null
        ? CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment
            .stub(_then(_instance))
        : CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment(
            local$update_payment_investment,
            (e) => call(update_payment_investment: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdatePaymentInvestmentMutation<TRes>
    implements CopyWith$Mutation$UpdatePaymentInvestmentMutation<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePaymentInvestmentMutation(this._res);

  TRes _res;

  call({
    Mutation$UpdatePaymentInvestmentMutation$update_payment_investment?
        update_payment_investment,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
          TRes>
      get update_payment_investment =>
          CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment
              .stub(_res);
}

const documentNodeMutationUpdatePaymentInvestmentMutation =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePaymentInvestmentMutation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'data')),
        type: NamedTypeNode(
          name: NameNode(value: 'payment_investment_set_input'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payment_investment_id')),
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
        name: NameNode(value: 'update_payment_investment'),
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
                name: NameNode(value: 'payment_investment_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(
                        name: NameNode(value: 'payment_investment_id')),
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
                name: NameNode(value: 'paymentInvestmentData'),
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
  fragmentDefinitionpaymentInvestmentData,
]);
Mutation$UpdatePaymentInvestmentMutation
    _parserFn$Mutation$UpdatePaymentInvestmentMutation(
            Map<String, dynamic> data) =>
        Mutation$UpdatePaymentInvestmentMutation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePaymentInvestmentMutation
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdatePaymentInvestmentMutation?,
);

class Options$Mutation$UpdatePaymentInvestmentMutation
    extends graphql.MutationOptions<Mutation$UpdatePaymentInvestmentMutation> {
  Options$Mutation$UpdatePaymentInvestmentMutation({
    String? operationName,
    required Variables$Mutation$UpdatePaymentInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePaymentInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePaymentInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePaymentInvestmentMutation>? update,
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
                        : _parserFn$Mutation$UpdatePaymentInvestmentMutation(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePaymentInvestmentMutation,
          parserFn: _parserFn$Mutation$UpdatePaymentInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$UpdatePaymentInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdatePaymentInvestmentMutation extends graphql
    .WatchQueryOptions<Mutation$UpdatePaymentInvestmentMutation> {
  WatchOptions$Mutation$UpdatePaymentInvestmentMutation({
    String? operationName,
    required Variables$Mutation$UpdatePaymentInvestmentMutation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePaymentInvestmentMutation? typedOptimisticResult,
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
          document: documentNodeMutationUpdatePaymentInvestmentMutation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdatePaymentInvestmentMutation,
        );
}

extension ClientExtension$Mutation$UpdatePaymentInvestmentMutation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdatePaymentInvestmentMutation>>
      mutate$UpdatePaymentInvestmentMutation(
              Options$Mutation$UpdatePaymentInvestmentMutation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdatePaymentInvestmentMutation>
      watchMutation$UpdatePaymentInvestmentMutation(
              WatchOptions$Mutation$UpdatePaymentInvestmentMutation options) =>
          this.watchMutation(options);
}

class Mutation$UpdatePaymentInvestmentMutation$HookResult {
  Mutation$UpdatePaymentInvestmentMutation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdatePaymentInvestmentMutation runMutation;

  final graphql.QueryResult<Mutation$UpdatePaymentInvestmentMutation> result;
}

Mutation$UpdatePaymentInvestmentMutation$HookResult
    useMutation$UpdatePaymentInvestmentMutation(
        [WidgetOptions$Mutation$UpdatePaymentInvestmentMutation? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$UpdatePaymentInvestmentMutation());
  return Mutation$UpdatePaymentInvestmentMutation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdatePaymentInvestmentMutation>
    useWatchMutation$UpdatePaymentInvestmentMutation(
            WatchOptions$Mutation$UpdatePaymentInvestmentMutation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdatePaymentInvestmentMutation
    extends graphql.MutationOptions<Mutation$UpdatePaymentInvestmentMutation> {
  WidgetOptions$Mutation$UpdatePaymentInvestmentMutation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePaymentInvestmentMutation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePaymentInvestmentMutation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePaymentInvestmentMutation>? update,
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
                        : _parserFn$Mutation$UpdatePaymentInvestmentMutation(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePaymentInvestmentMutation,
          parserFn: _parserFn$Mutation$UpdatePaymentInvestmentMutation,
        );

  final OnMutationCompleted$Mutation$UpdatePaymentInvestmentMutation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdatePaymentInvestmentMutation
    = graphql.MultiSourceResult<Mutation$UpdatePaymentInvestmentMutation>
        Function(
  Variables$Mutation$UpdatePaymentInvestmentMutation, {
  Object? optimisticResult,
  Mutation$UpdatePaymentInvestmentMutation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdatePaymentInvestmentMutation = widgets.Widget
    Function(
  RunMutation$Mutation$UpdatePaymentInvestmentMutation,
  graphql.QueryResult<Mutation$UpdatePaymentInvestmentMutation>?,
);

class Mutation$UpdatePaymentInvestmentMutation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdatePaymentInvestmentMutation> {
  Mutation$UpdatePaymentInvestmentMutation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdatePaymentInvestmentMutation? options,
    required Builder$Mutation$UpdatePaymentInvestmentMutation builder,
  }) : super(
          key: key,
          options: options ??
              WidgetOptions$Mutation$UpdatePaymentInvestmentMutation(),
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

class Mutation$UpdatePaymentInvestmentMutation$update_payment_investment {
  Mutation$UpdatePaymentInvestmentMutation$update_payment_investment({
    required this.returning,
    this.$__typename = 'payment_investment_mutation_response',
  });

  factory Mutation$UpdatePaymentInvestmentMutation$update_payment_investment.fromJson(
      Map<String, dynamic> json) {
    final l$returning = json['returning'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePaymentInvestmentMutation$update_payment_investment(
      returning: (l$returning as List<dynamic>)
          .map((e) => Fragment$paymentInvestmentData.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$paymentInvestmentData> returning;

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
    if (!(other
            is Mutation$UpdatePaymentInvestmentMutation$update_payment_investment) ||
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

extension UtilityExtension$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment
    on Mutation$UpdatePaymentInvestmentMutation$update_payment_investment {
  CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
          Mutation$UpdatePaymentInvestmentMutation$update_payment_investment>
      get copyWith =>
          CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
    TRes> {
  factory CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment(
    Mutation$UpdatePaymentInvestmentMutation$update_payment_investment instance,
    TRes Function(
            Mutation$UpdatePaymentInvestmentMutation$update_payment_investment)
        then,
  ) = _CopyWithImpl$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment;

  factory CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment;

  TRes call({
    List<Fragment$paymentInvestmentData>? returning,
    String? $__typename,
  });
  TRes returning(
      Iterable<Fragment$paymentInvestmentData> Function(
              Iterable<
                  CopyWith$Fragment$paymentInvestmentData<
                      Fragment$paymentInvestmentData>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
        TRes>
    implements
        CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
            TRes> {
  _CopyWithImpl$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePaymentInvestmentMutation$update_payment_investment
      _instance;

  final TRes Function(
      Mutation$UpdatePaymentInvestmentMutation$update_payment_investment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? returning = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePaymentInvestmentMutation$update_payment_investment(
        returning: returning == _undefined || returning == null
            ? _instance.returning
            : (returning as List<Fragment$paymentInvestmentData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes returning(
          Iterable<Fragment$paymentInvestmentData> Function(
                  Iterable<
                      CopyWith$Fragment$paymentInvestmentData<
                          Fragment$paymentInvestmentData>>)
              _fn) =>
      call(
          returning: _fn(_instance.returning
              .map((e) => CopyWith$Fragment$paymentInvestmentData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
        TRes>
    implements
        CopyWith$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdatePaymentInvestmentMutation$update_payment_investment(
      this._res);

  TRes _res;

  call({
    List<Fragment$paymentInvestmentData>? returning,
    String? $__typename,
  }) =>
      _res;
  returning(_fn) => _res;
}

class Variables$Query$GetUserInvestorPaymentInvestmentQuery {
  factory Variables$Query$GetUserInvestorPaymentInvestmentQuery({
    required UUID user_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      Variables$Query$GetUserInvestorPaymentInvestmentQuery._({
        r'user_id': user_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetUserInvestorPaymentInvestmentQuery._(this._$data);

  factory Variables$Query$GetUserInvestorPaymentInvestmentQuery.fromJson(
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
          ?.map((e) =>
              fromJson$Enum$payment_investment_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) => Input$payment_investment_order_by.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetUserInvestorPaymentInvestmentQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get user_id => (_$data['user_id'] as UUID);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$payment_investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$payment_investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$payment_investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$payment_investment_order_by>?);
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
          ?.map((e) => toJson$Enum$payment_investment_select_column(e))
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

  CopyWith$Variables$Query$GetUserInvestorPaymentInvestmentQuery<
          Variables$Query$GetUserInvestorPaymentInvestmentQuery>
      get copyWith =>
          CopyWith$Variables$Query$GetUserInvestorPaymentInvestmentQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserInvestorPaymentInvestmentQuery) ||
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

abstract class CopyWith$Variables$Query$GetUserInvestorPaymentInvestmentQuery<
    TRes> {
  factory CopyWith$Variables$Query$GetUserInvestorPaymentInvestmentQuery(
    Variables$Query$GetUserInvestorPaymentInvestmentQuery instance,
    TRes Function(Variables$Query$GetUserInvestorPaymentInvestmentQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetUserInvestorPaymentInvestmentQuery;

  factory CopyWith$Variables$Query$GetUserInvestorPaymentInvestmentQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserInvestorPaymentInvestmentQuery;

  TRes call({
    UUID? user_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetUserInvestorPaymentInvestmentQuery<TRes>
    implements
        CopyWith$Variables$Query$GetUserInvestorPaymentInvestmentQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetUserInvestorPaymentInvestmentQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserInvestorPaymentInvestmentQuery _instance;

  final TRes Function(Variables$Query$GetUserInvestorPaymentInvestmentQuery)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetUserInvestorPaymentInvestmentQuery._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on':
              (distinct_on as List<Enum$payment_investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$payment_investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserInvestorPaymentInvestmentQuery<
        TRes>
    implements
        CopyWith$Variables$Query$GetUserInvestorPaymentInvestmentQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserInvestorPaymentInvestmentQuery(
      this._res);

  TRes _res;

  call({
    UUID? user_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetUserInvestorPaymentInvestmentQuery {
  Query$GetUserInvestorPaymentInvestmentQuery({
    required this.payment_investment,
    this.$__typename = 'query_root',
  });

  factory Query$GetUserInvestorPaymentInvestmentQuery.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment = json['payment_investment'];
    final l$$__typename = json['__typename'];
    return Query$GetUserInvestorPaymentInvestmentQuery(
      payment_investment: (l$payment_investment as List<dynamic>)
          .map((e) => Fragment$paymentInvestmentData.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$paymentInvestmentData> payment_investment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment = payment_investment;
    _resultData['payment_investment'] =
        l$payment_investment.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment = payment_investment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$payment_investment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserInvestorPaymentInvestmentQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment = payment_investment;
    final lOther$payment_investment = other.payment_investment;
    if (l$payment_investment.length != lOther$payment_investment.length) {
      return false;
    }
    for (int i = 0; i < l$payment_investment.length; i++) {
      final l$payment_investment$entry = l$payment_investment[i];
      final lOther$payment_investment$entry = lOther$payment_investment[i];
      if (l$payment_investment$entry != lOther$payment_investment$entry) {
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

extension UtilityExtension$Query$GetUserInvestorPaymentInvestmentQuery
    on Query$GetUserInvestorPaymentInvestmentQuery {
  CopyWith$Query$GetUserInvestorPaymentInvestmentQuery<
          Query$GetUserInvestorPaymentInvestmentQuery>
      get copyWith => CopyWith$Query$GetUserInvestorPaymentInvestmentQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserInvestorPaymentInvestmentQuery<TRes> {
  factory CopyWith$Query$GetUserInvestorPaymentInvestmentQuery(
    Query$GetUserInvestorPaymentInvestmentQuery instance,
    TRes Function(Query$GetUserInvestorPaymentInvestmentQuery) then,
  ) = _CopyWithImpl$Query$GetUserInvestorPaymentInvestmentQuery;

  factory CopyWith$Query$GetUserInvestorPaymentInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserInvestorPaymentInvestmentQuery;

  TRes call({
    List<Fragment$paymentInvestmentData>? payment_investment,
    String? $__typename,
  });
  TRes payment_investment(
      Iterable<Fragment$paymentInvestmentData> Function(
              Iterable<
                  CopyWith$Fragment$paymentInvestmentData<
                      Fragment$paymentInvestmentData>>)
          _fn);
}

class _CopyWithImpl$Query$GetUserInvestorPaymentInvestmentQuery<TRes>
    implements CopyWith$Query$GetUserInvestorPaymentInvestmentQuery<TRes> {
  _CopyWithImpl$Query$GetUserInvestorPaymentInvestmentQuery(
    this._instance,
    this._then,
  );

  final Query$GetUserInvestorPaymentInvestmentQuery _instance;

  final TRes Function(Query$GetUserInvestorPaymentInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserInvestorPaymentInvestmentQuery(
        payment_investment:
            payment_investment == _undefined || payment_investment == null
                ? _instance.payment_investment
                : (payment_investment as List<Fragment$paymentInvestmentData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes payment_investment(
          Iterable<Fragment$paymentInvestmentData> Function(
                  Iterable<
                      CopyWith$Fragment$paymentInvestmentData<
                          Fragment$paymentInvestmentData>>)
              _fn) =>
      call(
          payment_investment: _fn(_instance.payment_investment
              .map((e) => CopyWith$Fragment$paymentInvestmentData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetUserInvestorPaymentInvestmentQuery<TRes>
    implements CopyWith$Query$GetUserInvestorPaymentInvestmentQuery<TRes> {
  _CopyWithStubImpl$Query$GetUserInvestorPaymentInvestmentQuery(this._res);

  TRes _res;

  call({
    List<Fragment$paymentInvestmentData>? payment_investment,
    String? $__typename,
  }) =>
      _res;
  payment_investment(_fn) => _res;
}

const documentNodeQueryGetUserInvestorPaymentInvestmentQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserInvestorPaymentInvestmentQuery'),
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
            name: NameNode(value: 'payment_investment_select_column'),
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
            name: NameNode(value: 'payment_investment_order_by'),
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
        name: NameNode(value: 'payment_investment'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'investment'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'investor'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'user_id'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value:
                                VariableNode(name: NameNode(value: 'user_id')),
                          )
                        ]),
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
            name: NameNode(value: 'paymentInvestmentData'),
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
  fragmentDefinitionpaymentInvestmentData,
]);
Query$GetUserInvestorPaymentInvestmentQuery
    _parserFn$Query$GetUserInvestorPaymentInvestmentQuery(
            Map<String, dynamic> data) =>
        Query$GetUserInvestorPaymentInvestmentQuery.fromJson(data);
typedef OnQueryComplete$Query$GetUserInvestorPaymentInvestmentQuery
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetUserInvestorPaymentInvestmentQuery?,
);

class Options$Query$GetUserInvestorPaymentInvestmentQuery
    extends graphql.QueryOptions<Query$GetUserInvestorPaymentInvestmentQuery> {
  Options$Query$GetUserInvestorPaymentInvestmentQuery({
    String? operationName,
    required Variables$Query$GetUserInvestorPaymentInvestmentQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserInvestorPaymentInvestmentQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserInvestorPaymentInvestmentQuery? onComplete,
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
                        : _parserFn$Query$GetUserInvestorPaymentInvestmentQuery(
                            data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserInvestorPaymentInvestmentQuery,
          parserFn: _parserFn$Query$GetUserInvestorPaymentInvestmentQuery,
        );

  final OnQueryComplete$Query$GetUserInvestorPaymentInvestmentQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserInvestorPaymentInvestmentQuery extends graphql
    .WatchQueryOptions<Query$GetUserInvestorPaymentInvestmentQuery> {
  WatchOptions$Query$GetUserInvestorPaymentInvestmentQuery({
    String? operationName,
    required Variables$Query$GetUserInvestorPaymentInvestmentQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserInvestorPaymentInvestmentQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetUserInvestorPaymentInvestmentQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserInvestorPaymentInvestmentQuery,
        );
}

class FetchMoreOptions$Query$GetUserInvestorPaymentInvestmentQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserInvestorPaymentInvestmentQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserInvestorPaymentInvestmentQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserInvestorPaymentInvestmentQuery,
        );
}

extension ClientExtension$Query$GetUserInvestorPaymentInvestmentQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserInvestorPaymentInvestmentQuery>>
      query$GetUserInvestorPaymentInvestmentQuery(
              Options$Query$GetUserInvestorPaymentInvestmentQuery
                  options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetUserInvestorPaymentInvestmentQuery>
      watchQuery$GetUserInvestorPaymentInvestmentQuery(
              WatchOptions$Query$GetUserInvestorPaymentInvestmentQuery
                  options) =>
          this.watchQuery(options);
  void writeQuery$GetUserInvestorPaymentInvestmentQuery({
    required Query$GetUserInvestorPaymentInvestmentQuery data,
    required Variables$Query$GetUserInvestorPaymentInvestmentQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetUserInvestorPaymentInvestmentQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserInvestorPaymentInvestmentQuery?
      readQuery$GetUserInvestorPaymentInvestmentQuery({
    required Variables$Query$GetUserInvestorPaymentInvestmentQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetUserInvestorPaymentInvestmentQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetUserInvestorPaymentInvestmentQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserInvestorPaymentInvestmentQuery>
    useQuery$GetUserInvestorPaymentInvestmentQuery(
            Options$Query$GetUserInvestorPaymentInvestmentQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserInvestorPaymentInvestmentQuery>
    useWatchQuery$GetUserInvestorPaymentInvestmentQuery(
            WatchOptions$Query$GetUserInvestorPaymentInvestmentQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetUserInvestorPaymentInvestmentQuery$Widget
    extends graphql_flutter.Query<Query$GetUserInvestorPaymentInvestmentQuery> {
  Query$GetUserInvestorPaymentInvestmentQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetUserInvestorPaymentInvestmentQuery options,
    required graphql_flutter
            .QueryBuilder<Query$GetUserInvestorPaymentInvestmentQuery>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetByPkPaymentInvestmentQuery {
  factory Variables$Query$GetByPkPaymentInvestmentQuery(
          {required UUID payment_investment_id}) =>
      Variables$Query$GetByPkPaymentInvestmentQuery._({
        r'payment_investment_id': payment_investment_id,
      });

  Variables$Query$GetByPkPaymentInvestmentQuery._(this._$data);

  factory Variables$Query$GetByPkPaymentInvestmentQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$payment_investment_id = data['payment_investment_id'];
    result$data['payment_investment_id'] =
        uuidFromJson(l$payment_investment_id);
    return Variables$Query$GetByPkPaymentInvestmentQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get payment_investment_id => (_$data['payment_investment_id'] as UUID);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$payment_investment_id = payment_investment_id;
    result$data['payment_investment_id'] = uuidToJson(l$payment_investment_id);
    return result$data;
  }

  CopyWith$Variables$Query$GetByPkPaymentInvestmentQuery<
          Variables$Query$GetByPkPaymentInvestmentQuery>
      get copyWith => CopyWith$Variables$Query$GetByPkPaymentInvestmentQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetByPkPaymentInvestmentQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_id = payment_investment_id;
    final lOther$payment_investment_id = other.payment_investment_id;
    if (l$payment_investment_id != lOther$payment_investment_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payment_investment_id = payment_investment_id;
    return Object.hashAll([l$payment_investment_id]);
  }
}

abstract class CopyWith$Variables$Query$GetByPkPaymentInvestmentQuery<TRes> {
  factory CopyWith$Variables$Query$GetByPkPaymentInvestmentQuery(
    Variables$Query$GetByPkPaymentInvestmentQuery instance,
    TRes Function(Variables$Query$GetByPkPaymentInvestmentQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetByPkPaymentInvestmentQuery;

  factory CopyWith$Variables$Query$GetByPkPaymentInvestmentQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetByPkPaymentInvestmentQuery;

  TRes call({UUID? payment_investment_id});
}

class _CopyWithImpl$Variables$Query$GetByPkPaymentInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkPaymentInvestmentQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetByPkPaymentInvestmentQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetByPkPaymentInvestmentQuery _instance;

  final TRes Function(Variables$Query$GetByPkPaymentInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? payment_investment_id = _undefined}) =>
      _then(Variables$Query$GetByPkPaymentInvestmentQuery._({
        ..._instance._$data,
        if (payment_investment_id != _undefined &&
            payment_investment_id != null)
          'payment_investment_id': (payment_investment_id as UUID),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetByPkPaymentInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetByPkPaymentInvestmentQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetByPkPaymentInvestmentQuery(this._res);

  TRes _res;

  call({UUID? payment_investment_id}) => _res;
}

class Query$GetByPkPaymentInvestmentQuery {
  Query$GetByPkPaymentInvestmentQuery({
    this.payment_investment_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$GetByPkPaymentInvestmentQuery.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment_by_pk = json['payment_investment_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkPaymentInvestmentQuery(
      payment_investment_by_pk: l$payment_investment_by_pk == null
          ? null
          : Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk
              .fromJson((l$payment_investment_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk?
      payment_investment_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment_by_pk = payment_investment_by_pk;
    _resultData['payment_investment_by_pk'] =
        l$payment_investment_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment_by_pk = payment_investment_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$payment_investment_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetByPkPaymentInvestmentQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_by_pk = payment_investment_by_pk;
    final lOther$payment_investment_by_pk = other.payment_investment_by_pk;
    if (l$payment_investment_by_pk != lOther$payment_investment_by_pk) {
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

extension UtilityExtension$Query$GetByPkPaymentInvestmentQuery
    on Query$GetByPkPaymentInvestmentQuery {
  CopyWith$Query$GetByPkPaymentInvestmentQuery<
          Query$GetByPkPaymentInvestmentQuery>
      get copyWith => CopyWith$Query$GetByPkPaymentInvestmentQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkPaymentInvestmentQuery<TRes> {
  factory CopyWith$Query$GetByPkPaymentInvestmentQuery(
    Query$GetByPkPaymentInvestmentQuery instance,
    TRes Function(Query$GetByPkPaymentInvestmentQuery) then,
  ) = _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery;

  factory CopyWith$Query$GetByPkPaymentInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery;

  TRes call({
    Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk?
        payment_investment_by_pk,
    String? $__typename,
  });
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<TRes>
      get payment_investment_by_pk;
}

class _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery<TRes>
    implements CopyWith$Query$GetByPkPaymentInvestmentQuery<TRes> {
  _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery(
    this._instance,
    this._then,
  );

  final Query$GetByPkPaymentInvestmentQuery _instance;

  final TRes Function(Query$GetByPkPaymentInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetByPkPaymentInvestmentQuery(
        payment_investment_by_pk: payment_investment_by_pk == _undefined
            ? _instance.payment_investment_by_pk
            : (payment_investment_by_pk
                as Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<TRes>
      get payment_investment_by_pk {
    final local$payment_investment_by_pk = _instance.payment_investment_by_pk;
    return local$payment_investment_by_pk == null
        ? CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk
            .stub(_then(_instance))
        : CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk(
            local$payment_investment_by_pk,
            (e) => call(payment_investment_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery<TRes>
    implements CopyWith$Query$GetByPkPaymentInvestmentQuery<TRes> {
  _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery(this._res);

  TRes _res;

  call({
    Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk?
        payment_investment_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<TRes>
      get payment_investment_by_pk =>
          CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk
              .stub(_res);
}

const documentNodeQueryGetByPkPaymentInvestmentQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetByPkPaymentInvestmentQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payment_investment_id')),
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
        name: NameNode(value: 'payment_investment_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'payment_investment_id'),
            value: VariableNode(name: NameNode(value: 'payment_investment_id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'paymentInvestmentData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'investment'),
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
  fragmentDefinitionpaymentInvestmentData,
  fragmentDefinitioninvestmentData,
]);
Query$GetByPkPaymentInvestmentQuery
    _parserFn$Query$GetByPkPaymentInvestmentQuery(Map<String, dynamic> data) =>
        Query$GetByPkPaymentInvestmentQuery.fromJson(data);
typedef OnQueryComplete$Query$GetByPkPaymentInvestmentQuery = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetByPkPaymentInvestmentQuery?,
);

class Options$Query$GetByPkPaymentInvestmentQuery
    extends graphql.QueryOptions<Query$GetByPkPaymentInvestmentQuery> {
  Options$Query$GetByPkPaymentInvestmentQuery({
    String? operationName,
    required Variables$Query$GetByPkPaymentInvestmentQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkPaymentInvestmentQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetByPkPaymentInvestmentQuery? onComplete,
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
                        : _parserFn$Query$GetByPkPaymentInvestmentQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetByPkPaymentInvestmentQuery,
          parserFn: _parserFn$Query$GetByPkPaymentInvestmentQuery,
        );

  final OnQueryComplete$Query$GetByPkPaymentInvestmentQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetByPkPaymentInvestmentQuery
    extends graphql.WatchQueryOptions<Query$GetByPkPaymentInvestmentQuery> {
  WatchOptions$Query$GetByPkPaymentInvestmentQuery({
    String? operationName,
    required Variables$Query$GetByPkPaymentInvestmentQuery variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetByPkPaymentInvestmentQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetByPkPaymentInvestmentQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetByPkPaymentInvestmentQuery,
        );
}

class FetchMoreOptions$Query$GetByPkPaymentInvestmentQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetByPkPaymentInvestmentQuery({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetByPkPaymentInvestmentQuery variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetByPkPaymentInvestmentQuery,
        );
}

extension ClientExtension$Query$GetByPkPaymentInvestmentQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetByPkPaymentInvestmentQuery>>
      query$GetByPkPaymentInvestmentQuery(
              Options$Query$GetByPkPaymentInvestmentQuery options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetByPkPaymentInvestmentQuery>
      watchQuery$GetByPkPaymentInvestmentQuery(
              WatchOptions$Query$GetByPkPaymentInvestmentQuery options) =>
          this.watchQuery(options);
  void writeQuery$GetByPkPaymentInvestmentQuery({
    required Query$GetByPkPaymentInvestmentQuery data,
    required Variables$Query$GetByPkPaymentInvestmentQuery variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetByPkPaymentInvestmentQuery),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetByPkPaymentInvestmentQuery? readQuery$GetByPkPaymentInvestmentQuery({
    required Variables$Query$GetByPkPaymentInvestmentQuery variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetByPkPaymentInvestmentQuery),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetByPkPaymentInvestmentQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetByPkPaymentInvestmentQuery>
    useQuery$GetByPkPaymentInvestmentQuery(
            Options$Query$GetByPkPaymentInvestmentQuery options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetByPkPaymentInvestmentQuery>
    useWatchQuery$GetByPkPaymentInvestmentQuery(
            WatchOptions$Query$GetByPkPaymentInvestmentQuery options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetByPkPaymentInvestmentQuery$Widget
    extends graphql_flutter.Query<Query$GetByPkPaymentInvestmentQuery> {
  Query$GetByPkPaymentInvestmentQuery$Widget({
    widgets.Key? key,
    required Options$Query$GetByPkPaymentInvestmentQuery options,
    required graphql_flutter.QueryBuilder<Query$GetByPkPaymentInvestmentQuery>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk
    implements Fragment$paymentInvestmentData {
  Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk({
    required this.payment_investment_id,
    required this.payment_investment_fulfilled,
    required this.updated_at,
    required this.created_at,
    this.bank_card_used,
    this.$__typename = 'payment_investment',
    required this.investment,
  });

  factory Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment_id = json['payment_investment_id'];
    final l$payment_investment_fulfilled = json['payment_investment_fulfilled'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$bank_card_used = json['bank_card_used'];
    final l$$__typename = json['__typename'];
    final l$investment = json['investment'];
    return Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk(
      payment_investment_id: uuidFromJson(l$payment_investment_id),
      payment_investment_fulfilled: (l$payment_investment_fulfilled as bool),
      updated_at: DateTime.parse((l$updated_at as String)),
      created_at: DateTime.parse((l$created_at as String)),
      bank_card_used: l$bank_card_used == null
          ? null
          : Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used
              .fromJson((l$bank_card_used as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      investment: Fragment$investmentData.fromJson(
          (l$investment as Map<String, dynamic>)),
    );
  }

  final UUID payment_investment_id;

  final bool payment_investment_fulfilled;

  final DateTime updated_at;

  final DateTime created_at;

  final Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used?
      bank_card_used;

  final String $__typename;

  final Fragment$investmentData investment;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment_id = payment_investment_id;
    _resultData['payment_investment_id'] = uuidToJson(l$payment_investment_id);
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    _resultData['payment_investment_fulfilled'] =
        l$payment_investment_fulfilled;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at.toIso8601String();
    final l$bank_card_used = bank_card_used;
    _resultData['bank_card_used'] = l$bank_card_used?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$investment = investment;
    _resultData['investment'] = l$investment.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment_id = payment_investment_id;
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$bank_card_used = bank_card_used;
    final l$$__typename = $__typename;
    final l$investment = investment;
    return Object.hashAll([
      l$payment_investment_id,
      l$payment_investment_fulfilled,
      l$updated_at,
      l$created_at,
      l$bank_card_used,
      l$$__typename,
      l$investment,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_id = payment_investment_id;
    final lOther$payment_investment_id = other.payment_investment_id;
    if (l$payment_investment_id != lOther$payment_investment_id) {
      return false;
    }
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    final lOther$payment_investment_fulfilled =
        other.payment_investment_fulfilled;
    if (l$payment_investment_fulfilled != lOther$payment_investment_fulfilled) {
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
    final l$bank_card_used = bank_card_used;
    final lOther$bank_card_used = other.bank_card_used;
    if (l$bank_card_used != lOther$bank_card_used) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$investment = investment;
    final lOther$investment = other.investment;
    if (l$investment != lOther$investment) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk
    on Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk {
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<
          Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk>
      get copyWith =>
          CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<
    TRes> {
  factory CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk(
    Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk instance,
    TRes Function(Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk)
        then,
  ) = _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk;

  factory CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk;

  TRes call({
    UUID? payment_investment_id,
    bool? payment_investment_fulfilled,
    DateTime? updated_at,
    DateTime? created_at,
    Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used?
        bank_card_used,
    String? $__typename,
    Fragment$investmentData? investment,
  });
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
      TRes> get bank_card_used;
  CopyWith$Fragment$investmentData<TRes> get investment;
}

class _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<
        TRes>
    implements
        CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<
            TRes> {
  _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk(
    this._instance,
    this._then,
  );

  final Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk _instance;

  final TRes Function(
      Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment_id = _undefined,
    Object? payment_investment_fulfilled = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? bank_card_used = _undefined,
    Object? $__typename = _undefined,
    Object? investment = _undefined,
  }) =>
      _then(Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk(
        payment_investment_id:
            payment_investment_id == _undefined || payment_investment_id == null
                ? _instance.payment_investment_id
                : (payment_investment_id as UUID),
        payment_investment_fulfilled:
            payment_investment_fulfilled == _undefined ||
                    payment_investment_fulfilled == null
                ? _instance.payment_investment_fulfilled
                : (payment_investment_fulfilled as bool),
        updated_at: updated_at == _undefined || updated_at == null
            ? _instance.updated_at
            : (updated_at as DateTime),
        created_at: created_at == _undefined || created_at == null
            ? _instance.created_at
            : (created_at as DateTime),
        bank_card_used: bank_card_used == _undefined
            ? _instance.bank_card_used
            : (bank_card_used
                as Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        investment: investment == _undefined || investment == null
            ? _instance.investment
            : (investment as Fragment$investmentData),
      ));
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
      TRes> get bank_card_used {
    final local$bank_card_used = _instance.bank_card_used;
    return local$bank_card_used == null
        ? CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used
            .stub(_then(_instance))
        : CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used(
            local$bank_card_used, (e) => call(bank_card_used: e));
  }

  CopyWith$Fragment$investmentData<TRes> get investment {
    final local$investment = _instance.investment;
    return CopyWith$Fragment$investmentData(
        local$investment, (e) => call(investment: e));
  }
}

class _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<
        TRes>
    implements
        CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk<
            TRes> {
  _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk(
      this._res);

  TRes _res;

  call({
    UUID? payment_investment_id,
    bool? payment_investment_fulfilled,
    DateTime? updated_at,
    DateTime? created_at,
    Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used?
        bank_card_used,
    String? $__typename,
    Fragment$investmentData? investment,
  }) =>
      _res;
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
          TRes>
      get bank_card_used =>
          CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used
              .stub(_res);
  CopyWith$Fragment$investmentData<TRes> get investment =>
      CopyWith$Fragment$investmentData.stub(_res);
}

class Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used
    implements Fragment$paymentInvestmentData$bank_card_used {
  Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used({
    required this.bank_card_id,
    this.$__typename = 'bank_card',
  });

  factory Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used.fromJson(
      Map<String, dynamic> json) {
    final l$bank_card_id = json['bank_card_id'];
    final l$$__typename = json['__typename'];
    return Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used(
      bank_card_id: uuidFromJson(l$bank_card_id),
      $__typename: (l$$__typename as String),
    );
  }

  final UUID bank_card_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card_id = bank_card_id;
    _resultData['bank_card_id'] = uuidToJson(l$bank_card_id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card_id = bank_card_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_card_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_id = bank_card_id;
    final lOther$bank_card_id = other.bank_card_id;
    if (l$bank_card_id != lOther$bank_card_id) {
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

extension UtilityExtension$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used
    on Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used {
  CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
          Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used>
      get copyWith =>
          CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
    TRes> {
  factory CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used(
    Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used
        instance,
    TRes Function(
            Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used)
        then,
  ) = _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used;

  factory CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used;

  TRes call({
    UUID? bank_card_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
        TRes>
    implements
        CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
            TRes> {
  _CopyWithImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used(
    this._instance,
    this._then,
  );

  final Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used
      _instance;

  final TRes Function(
          Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used(
        bank_card_id: bank_card_id == _undefined || bank_card_id == null
            ? _instance.bank_card_id
            : (bank_card_id as UUID),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
        TRes>
    implements
        CopyWith$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used<
            TRes> {
  _CopyWithStubImpl$Query$GetByPkPaymentInvestmentQuery$payment_investment_by_pk$bank_card_used(
      this._res);

  TRes _res;

  call({
    UUID? bank_card_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetAllPaymentInvestmentAggregate {
  factory Variables$Query$GetAllPaymentInvestmentAggregate({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      Variables$Query$GetAllPaymentInvestmentAggregate._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllPaymentInvestmentAggregate._(this._$data);

  factory Variables$Query$GetAllPaymentInvestmentAggregate.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$payment_investment_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) =>
              fromJson$Enum$payment_investment_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) => Input$payment_investment_order_by.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllPaymentInvestmentAggregate._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$payment_investment_bool_exp? get where =>
      (_$data['where'] as Input$payment_investment_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$payment_investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$payment_investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$payment_investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$payment_investment_order_by>?);
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
          ?.map((e) => toJson$Enum$payment_investment_select_column(e))
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

  CopyWith$Variables$Query$GetAllPaymentInvestmentAggregate<
          Variables$Query$GetAllPaymentInvestmentAggregate>
      get copyWith => CopyWith$Variables$Query$GetAllPaymentInvestmentAggregate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllPaymentInvestmentAggregate) ||
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

abstract class CopyWith$Variables$Query$GetAllPaymentInvestmentAggregate<TRes> {
  factory CopyWith$Variables$Query$GetAllPaymentInvestmentAggregate(
    Variables$Query$GetAllPaymentInvestmentAggregate instance,
    TRes Function(Variables$Query$GetAllPaymentInvestmentAggregate) then,
  ) = _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentAggregate;

  factory CopyWith$Variables$Query$GetAllPaymentInvestmentAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentAggregate;

  TRes call({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentAggregate<TRes>
    implements CopyWith$Variables$Query$GetAllPaymentInvestmentAggregate<TRes> {
  _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentAggregate(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllPaymentInvestmentAggregate _instance;

  final TRes Function(Variables$Query$GetAllPaymentInvestmentAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllPaymentInvestmentAggregate._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$payment_investment_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on':
              (distinct_on as List<Enum$payment_investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$payment_investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentAggregate<TRes>
    implements CopyWith$Variables$Query$GetAllPaymentInvestmentAggregate<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentAggregate(this._res);

  TRes _res;

  call({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllPaymentInvestmentAggregate {
  Query$GetAllPaymentInvestmentAggregate({
    required this.payment_investment_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllPaymentInvestmentAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment_aggregate = json['payment_investment_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentInvestmentAggregate(
      payment_investment_aggregate:
          Fragment$paymentInvestmentAggregate.fromJson(
              (l$payment_investment_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$paymentInvestmentAggregate payment_investment_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment_aggregate = payment_investment_aggregate;
    _resultData['payment_investment_aggregate'] =
        l$payment_investment_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment_aggregate = payment_investment_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$payment_investment_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllPaymentInvestmentAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_aggregate = payment_investment_aggregate;
    final lOther$payment_investment_aggregate =
        other.payment_investment_aggregate;
    if (l$payment_investment_aggregate != lOther$payment_investment_aggregate) {
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

extension UtilityExtension$Query$GetAllPaymentInvestmentAggregate
    on Query$GetAllPaymentInvestmentAggregate {
  CopyWith$Query$GetAllPaymentInvestmentAggregate<
          Query$GetAllPaymentInvestmentAggregate>
      get copyWith => CopyWith$Query$GetAllPaymentInvestmentAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllPaymentInvestmentAggregate<TRes> {
  factory CopyWith$Query$GetAllPaymentInvestmentAggregate(
    Query$GetAllPaymentInvestmentAggregate instance,
    TRes Function(Query$GetAllPaymentInvestmentAggregate) then,
  ) = _CopyWithImpl$Query$GetAllPaymentInvestmentAggregate;

  factory CopyWith$Query$GetAllPaymentInvestmentAggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentInvestmentAggregate;

  TRes call({
    Fragment$paymentInvestmentAggregate? payment_investment_aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate;
}

class _CopyWithImpl$Query$GetAllPaymentInvestmentAggregate<TRes>
    implements CopyWith$Query$GetAllPaymentInvestmentAggregate<TRes> {
  _CopyWithImpl$Query$GetAllPaymentInvestmentAggregate(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentInvestmentAggregate _instance;

  final TRes Function(Query$GetAllPaymentInvestmentAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllPaymentInvestmentAggregate(
        payment_investment_aggregate:
            payment_investment_aggregate == _undefined ||
                    payment_investment_aggregate == null
                ? _instance.payment_investment_aggregate
                : (payment_investment_aggregate
                    as Fragment$paymentInvestmentAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate {
    final local$payment_investment_aggregate =
        _instance.payment_investment_aggregate;
    return CopyWith$Fragment$paymentInvestmentAggregate(
        local$payment_investment_aggregate,
        (e) => call(payment_investment_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetAllPaymentInvestmentAggregate<TRes>
    implements CopyWith$Query$GetAllPaymentInvestmentAggregate<TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentInvestmentAggregate(this._res);

  TRes _res;

  call({
    Fragment$paymentInvestmentAggregate? payment_investment_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate =>
          CopyWith$Fragment$paymentInvestmentAggregate.stub(_res);
}

const documentNodeQueryGetAllPaymentInvestmentAggregate =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllPaymentInvestmentAggregate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'payment_investment_bool_exp'),
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
            name: NameNode(value: 'payment_investment_select_column'),
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
            name: NameNode(value: 'payment_investment_order_by'),
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
        name: NameNode(value: 'payment_investment_aggregate'),
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
            name: NameNode(value: 'paymentInvestmentAggregate'),
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
  fragmentDefinitionpaymentInvestmentAggregate,
]);
Query$GetAllPaymentInvestmentAggregate
    _parserFn$Query$GetAllPaymentInvestmentAggregate(
            Map<String, dynamic> data) =>
        Query$GetAllPaymentInvestmentAggregate.fromJson(data);
typedef OnQueryComplete$Query$GetAllPaymentInvestmentAggregate = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetAllPaymentInvestmentAggregate?,
);

class Options$Query$GetAllPaymentInvestmentAggregate
    extends graphql.QueryOptions<Query$GetAllPaymentInvestmentAggregate> {
  Options$Query$GetAllPaymentInvestmentAggregate({
    String? operationName,
    Variables$Query$GetAllPaymentInvestmentAggregate? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPaymentInvestmentAggregate? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllPaymentInvestmentAggregate? onComplete,
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
                        : _parserFn$Query$GetAllPaymentInvestmentAggregate(
                            data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllPaymentInvestmentAggregate,
          parserFn: _parserFn$Query$GetAllPaymentInvestmentAggregate,
        );

  final OnQueryComplete$Query$GetAllPaymentInvestmentAggregate?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllPaymentInvestmentAggregate
    extends graphql.WatchQueryOptions<Query$GetAllPaymentInvestmentAggregate> {
  WatchOptions$Query$GetAllPaymentInvestmentAggregate({
    String? operationName,
    Variables$Query$GetAllPaymentInvestmentAggregate? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPaymentInvestmentAggregate? typedOptimisticResult,
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
          document: documentNodeQueryGetAllPaymentInvestmentAggregate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllPaymentInvestmentAggregate,
        );
}

class FetchMoreOptions$Query$GetAllPaymentInvestmentAggregate
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllPaymentInvestmentAggregate({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllPaymentInvestmentAggregate? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllPaymentInvestmentAggregate,
        );
}

extension ClientExtension$Query$GetAllPaymentInvestmentAggregate
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllPaymentInvestmentAggregate>>
      query$GetAllPaymentInvestmentAggregate(
              [Options$Query$GetAllPaymentInvestmentAggregate?
                  options]) async =>
          await this.query(
              options ?? Options$Query$GetAllPaymentInvestmentAggregate());
  graphql.ObservableQuery<Query$GetAllPaymentInvestmentAggregate>
      watchQuery$GetAllPaymentInvestmentAggregate(
              [WatchOptions$Query$GetAllPaymentInvestmentAggregate? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetAllPaymentInvestmentAggregate());
  void writeQuery$GetAllPaymentInvestmentAggregate({
    required Query$GetAllPaymentInvestmentAggregate data,
    Variables$Query$GetAllPaymentInvestmentAggregate? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllPaymentInvestmentAggregate),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllPaymentInvestmentAggregate?
      readQuery$GetAllPaymentInvestmentAggregate({
    Variables$Query$GetAllPaymentInvestmentAggregate? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllPaymentInvestmentAggregate),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllPaymentInvestmentAggregate.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllPaymentInvestmentAggregate>
    useQuery$GetAllPaymentInvestmentAggregate(
            [Options$Query$GetAllPaymentInvestmentAggregate? options]) =>
        graphql_flutter.useQuery(
            options ?? Options$Query$GetAllPaymentInvestmentAggregate());
graphql.ObservableQuery<Query$GetAllPaymentInvestmentAggregate>
    useWatchQuery$GetAllPaymentInvestmentAggregate(
            [WatchOptions$Query$GetAllPaymentInvestmentAggregate? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllPaymentInvestmentAggregate());

class Query$GetAllPaymentInvestmentAggregate$Widget
    extends graphql_flutter.Query<Query$GetAllPaymentInvestmentAggregate> {
  Query$GetAllPaymentInvestmentAggregate$Widget({
    widgets.Key? key,
    Options$Query$GetAllPaymentInvestmentAggregate? options,
    required graphql_flutter
            .QueryBuilder<Query$GetAllPaymentInvestmentAggregate>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllPaymentInvestmentAggregate(),
          builder: builder,
        );
}

class Variables$Query$GetInvestorPaymentInvestmentAggregate {
  factory Variables$Query$GetInvestorPaymentInvestmentAggregate({
    int? investor_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      Variables$Query$GetInvestorPaymentInvestmentAggregate._({
        if (investor_id != null) r'investor_id': investor_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetInvestorPaymentInvestmentAggregate._(this._$data);

  factory Variables$Query$GetInvestorPaymentInvestmentAggregate.fromJson(
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
          ?.map((e) =>
              fromJson$Enum$payment_investment_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) => Input$payment_investment_order_by.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetInvestorPaymentInvestmentAggregate._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get investor_id => (_$data['investor_id'] as int?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$payment_investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$payment_investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$payment_investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$payment_investment_order_by>?);
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
          ?.map((e) => toJson$Enum$payment_investment_select_column(e))
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

  CopyWith$Variables$Query$GetInvestorPaymentInvestmentAggregate<
          Variables$Query$GetInvestorPaymentInvestmentAggregate>
      get copyWith =>
          CopyWith$Variables$Query$GetInvestorPaymentInvestmentAggregate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetInvestorPaymentInvestmentAggregate) ||
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

abstract class CopyWith$Variables$Query$GetInvestorPaymentInvestmentAggregate<
    TRes> {
  factory CopyWith$Variables$Query$GetInvestorPaymentInvestmentAggregate(
    Variables$Query$GetInvestorPaymentInvestmentAggregate instance,
    TRes Function(Variables$Query$GetInvestorPaymentInvestmentAggregate) then,
  ) = _CopyWithImpl$Variables$Query$GetInvestorPaymentInvestmentAggregate;

  factory CopyWith$Variables$Query$GetInvestorPaymentInvestmentAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetInvestorPaymentInvestmentAggregate;

  TRes call({
    int? investor_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetInvestorPaymentInvestmentAggregate<TRes>
    implements
        CopyWith$Variables$Query$GetInvestorPaymentInvestmentAggregate<TRes> {
  _CopyWithImpl$Variables$Query$GetInvestorPaymentInvestmentAggregate(
    this._instance,
    this._then,
  );

  final Variables$Query$GetInvestorPaymentInvestmentAggregate _instance;

  final TRes Function(Variables$Query$GetInvestorPaymentInvestmentAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? investor_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetInvestorPaymentInvestmentAggregate._({
        ..._instance._$data,
        if (investor_id != _undefined) 'investor_id': (investor_id as int?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on':
              (distinct_on as List<Enum$payment_investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$payment_investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetInvestorPaymentInvestmentAggregate<
        TRes>
    implements
        CopyWith$Variables$Query$GetInvestorPaymentInvestmentAggregate<TRes> {
  _CopyWithStubImpl$Variables$Query$GetInvestorPaymentInvestmentAggregate(
      this._res);

  TRes _res;

  call({
    int? investor_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetInvestorPaymentInvestmentAggregate {
  Query$GetInvestorPaymentInvestmentAggregate({
    required this.payment_investment_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$GetInvestorPaymentInvestmentAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment_aggregate = json['payment_investment_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetInvestorPaymentInvestmentAggregate(
      payment_investment_aggregate:
          Fragment$paymentInvestmentAggregate.fromJson(
              (l$payment_investment_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$paymentInvestmentAggregate payment_investment_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment_aggregate = payment_investment_aggregate;
    _resultData['payment_investment_aggregate'] =
        l$payment_investment_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment_aggregate = payment_investment_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$payment_investment_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetInvestorPaymentInvestmentAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_aggregate = payment_investment_aggregate;
    final lOther$payment_investment_aggregate =
        other.payment_investment_aggregate;
    if (l$payment_investment_aggregate != lOther$payment_investment_aggregate) {
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

extension UtilityExtension$Query$GetInvestorPaymentInvestmentAggregate
    on Query$GetInvestorPaymentInvestmentAggregate {
  CopyWith$Query$GetInvestorPaymentInvestmentAggregate<
          Query$GetInvestorPaymentInvestmentAggregate>
      get copyWith => CopyWith$Query$GetInvestorPaymentInvestmentAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetInvestorPaymentInvestmentAggregate<TRes> {
  factory CopyWith$Query$GetInvestorPaymentInvestmentAggregate(
    Query$GetInvestorPaymentInvestmentAggregate instance,
    TRes Function(Query$GetInvestorPaymentInvestmentAggregate) then,
  ) = _CopyWithImpl$Query$GetInvestorPaymentInvestmentAggregate;

  factory CopyWith$Query$GetInvestorPaymentInvestmentAggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetInvestorPaymentInvestmentAggregate;

  TRes call({
    Fragment$paymentInvestmentAggregate? payment_investment_aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate;
}

class _CopyWithImpl$Query$GetInvestorPaymentInvestmentAggregate<TRes>
    implements CopyWith$Query$GetInvestorPaymentInvestmentAggregate<TRes> {
  _CopyWithImpl$Query$GetInvestorPaymentInvestmentAggregate(
    this._instance,
    this._then,
  );

  final Query$GetInvestorPaymentInvestmentAggregate _instance;

  final TRes Function(Query$GetInvestorPaymentInvestmentAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetInvestorPaymentInvestmentAggregate(
        payment_investment_aggregate:
            payment_investment_aggregate == _undefined ||
                    payment_investment_aggregate == null
                ? _instance.payment_investment_aggregate
                : (payment_investment_aggregate
                    as Fragment$paymentInvestmentAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate {
    final local$payment_investment_aggregate =
        _instance.payment_investment_aggregate;
    return CopyWith$Fragment$paymentInvestmentAggregate(
        local$payment_investment_aggregate,
        (e) => call(payment_investment_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetInvestorPaymentInvestmentAggregate<TRes>
    implements CopyWith$Query$GetInvestorPaymentInvestmentAggregate<TRes> {
  _CopyWithStubImpl$Query$GetInvestorPaymentInvestmentAggregate(this._res);

  TRes _res;

  call({
    Fragment$paymentInvestmentAggregate? payment_investment_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate =>
          CopyWith$Fragment$paymentInvestmentAggregate.stub(_res);
}

const documentNodeQueryGetInvestorPaymentInvestmentAggregate =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetInvestorPaymentInvestmentAggregate'),
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
            name: NameNode(value: 'payment_investment_select_column'),
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
            name: NameNode(value: 'payment_investment_order_by'),
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
        name: NameNode(value: 'payment_investment_aggregate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'investment'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'investor_id'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: '_eq'),
                        value:
                            VariableNode(name: NameNode(value: 'investor_id')),
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
            name: NameNode(value: 'paymentInvestmentAggregate'),
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
  fragmentDefinitionpaymentInvestmentAggregate,
]);
Query$GetInvestorPaymentInvestmentAggregate
    _parserFn$Query$GetInvestorPaymentInvestmentAggregate(
            Map<String, dynamic> data) =>
        Query$GetInvestorPaymentInvestmentAggregate.fromJson(data);
typedef OnQueryComplete$Query$GetInvestorPaymentInvestmentAggregate
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetInvestorPaymentInvestmentAggregate?,
);

class Options$Query$GetInvestorPaymentInvestmentAggregate
    extends graphql.QueryOptions<Query$GetInvestorPaymentInvestmentAggregate> {
  Options$Query$GetInvestorPaymentInvestmentAggregate({
    String? operationName,
    Variables$Query$GetInvestorPaymentInvestmentAggregate? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetInvestorPaymentInvestmentAggregate? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetInvestorPaymentInvestmentAggregate? onComplete,
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
                        : _parserFn$Query$GetInvestorPaymentInvestmentAggregate(
                            data),
                  ),
          onError: onError,
          document: documentNodeQueryGetInvestorPaymentInvestmentAggregate,
          parserFn: _parserFn$Query$GetInvestorPaymentInvestmentAggregate,
        );

  final OnQueryComplete$Query$GetInvestorPaymentInvestmentAggregate?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetInvestorPaymentInvestmentAggregate extends graphql
    .WatchQueryOptions<Query$GetInvestorPaymentInvestmentAggregate> {
  WatchOptions$Query$GetInvestorPaymentInvestmentAggregate({
    String? operationName,
    Variables$Query$GetInvestorPaymentInvestmentAggregate? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetInvestorPaymentInvestmentAggregate? typedOptimisticResult,
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
          document: documentNodeQueryGetInvestorPaymentInvestmentAggregate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetInvestorPaymentInvestmentAggregate,
        );
}

class FetchMoreOptions$Query$GetInvestorPaymentInvestmentAggregate
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetInvestorPaymentInvestmentAggregate({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetInvestorPaymentInvestmentAggregate? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetInvestorPaymentInvestmentAggregate,
        );
}

extension ClientExtension$Query$GetInvestorPaymentInvestmentAggregate
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetInvestorPaymentInvestmentAggregate>>
      query$GetInvestorPaymentInvestmentAggregate(
              [Options$Query$GetInvestorPaymentInvestmentAggregate?
                  options]) async =>
          await this.query(
              options ?? Options$Query$GetInvestorPaymentInvestmentAggregate());
  graphql.ObservableQuery<Query$GetInvestorPaymentInvestmentAggregate>
      watchQuery$GetInvestorPaymentInvestmentAggregate(
              [WatchOptions$Query$GetInvestorPaymentInvestmentAggregate?
                  options]) =>
          this.watchQuery(options ??
              WatchOptions$Query$GetInvestorPaymentInvestmentAggregate());
  void writeQuery$GetInvestorPaymentInvestmentAggregate({
    required Query$GetInvestorPaymentInvestmentAggregate data,
    Variables$Query$GetInvestorPaymentInvestmentAggregate? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetInvestorPaymentInvestmentAggregate),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetInvestorPaymentInvestmentAggregate?
      readQuery$GetInvestorPaymentInvestmentAggregate({
    Variables$Query$GetInvestorPaymentInvestmentAggregate? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetInvestorPaymentInvestmentAggregate),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetInvestorPaymentInvestmentAggregate.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetInvestorPaymentInvestmentAggregate>
    useQuery$GetInvestorPaymentInvestmentAggregate(
            [Options$Query$GetInvestorPaymentInvestmentAggregate? options]) =>
        graphql_flutter.useQuery(
            options ?? Options$Query$GetInvestorPaymentInvestmentAggregate());
graphql.ObservableQuery<Query$GetInvestorPaymentInvestmentAggregate>
    useWatchQuery$GetInvestorPaymentInvestmentAggregate(
            [WatchOptions$Query$GetInvestorPaymentInvestmentAggregate?
                options]) =>
        graphql_flutter.useWatchQuery(options ??
            WatchOptions$Query$GetInvestorPaymentInvestmentAggregate());

class Query$GetInvestorPaymentInvestmentAggregate$Widget
    extends graphql_flutter.Query<Query$GetInvestorPaymentInvestmentAggregate> {
  Query$GetInvestorPaymentInvestmentAggregate$Widget({
    widgets.Key? key,
    Options$Query$GetInvestorPaymentInvestmentAggregate? options,
    required graphql_flutter
            .QueryBuilder<Query$GetInvestorPaymentInvestmentAggregate>
        builder,
  }) : super(
          key: key,
          options:
              options ?? Options$Query$GetInvestorPaymentInvestmentAggregate(),
          builder: builder,
        );
}

class Variables$Query$GetUserPaymentInvestmentAggregate {
  factory Variables$Query$GetUserPaymentInvestmentAggregate({
    required UUID user_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      Variables$Query$GetUserPaymentInvestmentAggregate._({
        r'user_id': user_id,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetUserPaymentInvestmentAggregate._(this._$data);

  factory Variables$Query$GetUserPaymentInvestmentAggregate.fromJson(
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
          ?.map((e) =>
              fromJson$Enum$payment_investment_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) => Input$payment_investment_order_by.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetUserPaymentInvestmentAggregate._(result$data);
  }

  Map<String, dynamic> _$data;

  UUID get user_id => (_$data['user_id'] as UUID);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$payment_investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$payment_investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$payment_investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$payment_investment_order_by>?);
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
          ?.map((e) => toJson$Enum$payment_investment_select_column(e))
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

  CopyWith$Variables$Query$GetUserPaymentInvestmentAggregate<
          Variables$Query$GetUserPaymentInvestmentAggregate>
      get copyWith =>
          CopyWith$Variables$Query$GetUserPaymentInvestmentAggregate(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetUserPaymentInvestmentAggregate) ||
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

abstract class CopyWith$Variables$Query$GetUserPaymentInvestmentAggregate<
    TRes> {
  factory CopyWith$Variables$Query$GetUserPaymentInvestmentAggregate(
    Variables$Query$GetUserPaymentInvestmentAggregate instance,
    TRes Function(Variables$Query$GetUserPaymentInvestmentAggregate) then,
  ) = _CopyWithImpl$Variables$Query$GetUserPaymentInvestmentAggregate;

  factory CopyWith$Variables$Query$GetUserPaymentInvestmentAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetUserPaymentInvestmentAggregate;

  TRes call({
    UUID? user_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetUserPaymentInvestmentAggregate<TRes>
    implements
        CopyWith$Variables$Query$GetUserPaymentInvestmentAggregate<TRes> {
  _CopyWithImpl$Variables$Query$GetUserPaymentInvestmentAggregate(
    this._instance,
    this._then,
  );

  final Variables$Query$GetUserPaymentInvestmentAggregate _instance;

  final TRes Function(Variables$Query$GetUserPaymentInvestmentAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetUserPaymentInvestmentAggregate._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as UUID),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on':
              (distinct_on as List<Enum$payment_investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$payment_investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetUserPaymentInvestmentAggregate<TRes>
    implements
        CopyWith$Variables$Query$GetUserPaymentInvestmentAggregate<TRes> {
  _CopyWithStubImpl$Variables$Query$GetUserPaymentInvestmentAggregate(
      this._res);

  TRes _res;

  call({
    UUID? user_id,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetUserPaymentInvestmentAggregate {
  Query$GetUserPaymentInvestmentAggregate({
    required this.payment_investment_aggregate,
    this.$__typename = 'query_root',
  });

  factory Query$GetUserPaymentInvestmentAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment_aggregate = json['payment_investment_aggregate'];
    final l$$__typename = json['__typename'];
    return Query$GetUserPaymentInvestmentAggregate(
      payment_investment_aggregate:
          Fragment$paymentInvestmentAggregate.fromJson(
              (l$payment_investment_aggregate as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$paymentInvestmentAggregate payment_investment_aggregate;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment_aggregate = payment_investment_aggregate;
    _resultData['payment_investment_aggregate'] =
        l$payment_investment_aggregate.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment_aggregate = payment_investment_aggregate;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$payment_investment_aggregate,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetUserPaymentInvestmentAggregate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_aggregate = payment_investment_aggregate;
    final lOther$payment_investment_aggregate =
        other.payment_investment_aggregate;
    if (l$payment_investment_aggregate != lOther$payment_investment_aggregate) {
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

extension UtilityExtension$Query$GetUserPaymentInvestmentAggregate
    on Query$GetUserPaymentInvestmentAggregate {
  CopyWith$Query$GetUserPaymentInvestmentAggregate<
          Query$GetUserPaymentInvestmentAggregate>
      get copyWith => CopyWith$Query$GetUserPaymentInvestmentAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetUserPaymentInvestmentAggregate<TRes> {
  factory CopyWith$Query$GetUserPaymentInvestmentAggregate(
    Query$GetUserPaymentInvestmentAggregate instance,
    TRes Function(Query$GetUserPaymentInvestmentAggregate) then,
  ) = _CopyWithImpl$Query$GetUserPaymentInvestmentAggregate;

  factory CopyWith$Query$GetUserPaymentInvestmentAggregate.stub(TRes res) =
      _CopyWithStubImpl$Query$GetUserPaymentInvestmentAggregate;

  TRes call({
    Fragment$paymentInvestmentAggregate? payment_investment_aggregate,
    String? $__typename,
  });
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate;
}

class _CopyWithImpl$Query$GetUserPaymentInvestmentAggregate<TRes>
    implements CopyWith$Query$GetUserPaymentInvestmentAggregate<TRes> {
  _CopyWithImpl$Query$GetUserPaymentInvestmentAggregate(
    this._instance,
    this._then,
  );

  final Query$GetUserPaymentInvestmentAggregate _instance;

  final TRes Function(Query$GetUserPaymentInvestmentAggregate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment_aggregate = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetUserPaymentInvestmentAggregate(
        payment_investment_aggregate:
            payment_investment_aggregate == _undefined ||
                    payment_investment_aggregate == null
                ? _instance.payment_investment_aggregate
                : (payment_investment_aggregate
                    as Fragment$paymentInvestmentAggregate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate {
    final local$payment_investment_aggregate =
        _instance.payment_investment_aggregate;
    return CopyWith$Fragment$paymentInvestmentAggregate(
        local$payment_investment_aggregate,
        (e) => call(payment_investment_aggregate: e));
  }
}

class _CopyWithStubImpl$Query$GetUserPaymentInvestmentAggregate<TRes>
    implements CopyWith$Query$GetUserPaymentInvestmentAggregate<TRes> {
  _CopyWithStubImpl$Query$GetUserPaymentInvestmentAggregate(this._res);

  TRes _res;

  call({
    Fragment$paymentInvestmentAggregate? payment_investment_aggregate,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Fragment$paymentInvestmentAggregate<TRes>
      get payment_investment_aggregate =>
          CopyWith$Fragment$paymentInvestmentAggregate.stub(_res);
}

const documentNodeQueryGetUserPaymentInvestmentAggregate =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetUserPaymentInvestmentAggregate'),
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
            name: NameNode(value: 'payment_investment_select_column'),
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
            name: NameNode(value: 'payment_investment_order_by'),
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
        name: NameNode(value: 'payment_investment_aggregate'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'investment'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'investor'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'user_id'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: '_eq'),
                            value:
                                VariableNode(name: NameNode(value: 'user_id')),
                          )
                        ]),
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
            name: NameNode(value: 'paymentInvestmentAggregate'),
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
  fragmentDefinitionpaymentInvestmentAggregate,
]);
Query$GetUserPaymentInvestmentAggregate
    _parserFn$Query$GetUserPaymentInvestmentAggregate(
            Map<String, dynamic> data) =>
        Query$GetUserPaymentInvestmentAggregate.fromJson(data);
typedef OnQueryComplete$Query$GetUserPaymentInvestmentAggregate = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetUserPaymentInvestmentAggregate?,
);

class Options$Query$GetUserPaymentInvestmentAggregate
    extends graphql.QueryOptions<Query$GetUserPaymentInvestmentAggregate> {
  Options$Query$GetUserPaymentInvestmentAggregate({
    String? operationName,
    required Variables$Query$GetUserPaymentInvestmentAggregate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserPaymentInvestmentAggregate? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetUserPaymentInvestmentAggregate? onComplete,
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
                        : _parserFn$Query$GetUserPaymentInvestmentAggregate(
                            data),
                  ),
          onError: onError,
          document: documentNodeQueryGetUserPaymentInvestmentAggregate,
          parserFn: _parserFn$Query$GetUserPaymentInvestmentAggregate,
        );

  final OnQueryComplete$Query$GetUserPaymentInvestmentAggregate?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetUserPaymentInvestmentAggregate
    extends graphql.WatchQueryOptions<Query$GetUserPaymentInvestmentAggregate> {
  WatchOptions$Query$GetUserPaymentInvestmentAggregate({
    String? operationName,
    required Variables$Query$GetUserPaymentInvestmentAggregate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetUserPaymentInvestmentAggregate? typedOptimisticResult,
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
          document: documentNodeQueryGetUserPaymentInvestmentAggregate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetUserPaymentInvestmentAggregate,
        );
}

class FetchMoreOptions$Query$GetUserPaymentInvestmentAggregate
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetUserPaymentInvestmentAggregate({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetUserPaymentInvestmentAggregate variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetUserPaymentInvestmentAggregate,
        );
}

extension ClientExtension$Query$GetUserPaymentInvestmentAggregate
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetUserPaymentInvestmentAggregate>>
      query$GetUserPaymentInvestmentAggregate(
              Options$Query$GetUserPaymentInvestmentAggregate options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetUserPaymentInvestmentAggregate>
      watchQuery$GetUserPaymentInvestmentAggregate(
              WatchOptions$Query$GetUserPaymentInvestmentAggregate options) =>
          this.watchQuery(options);
  void writeQuery$GetUserPaymentInvestmentAggregate({
    required Query$GetUserPaymentInvestmentAggregate data,
    required Variables$Query$GetUserPaymentInvestmentAggregate variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetUserPaymentInvestmentAggregate),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetUserPaymentInvestmentAggregate?
      readQuery$GetUserPaymentInvestmentAggregate({
    required Variables$Query$GetUserPaymentInvestmentAggregate variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetUserPaymentInvestmentAggregate),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetUserPaymentInvestmentAggregate.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetUserPaymentInvestmentAggregate>
    useQuery$GetUserPaymentInvestmentAggregate(
            Options$Query$GetUserPaymentInvestmentAggregate options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetUserPaymentInvestmentAggregate>
    useWatchQuery$GetUserPaymentInvestmentAggregate(
            WatchOptions$Query$GetUserPaymentInvestmentAggregate options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetUserPaymentInvestmentAggregate$Widget
    extends graphql_flutter.Query<Query$GetUserPaymentInvestmentAggregate> {
  Query$GetUserPaymentInvestmentAggregate$Widget({
    widgets.Key? key,
    required Options$Query$GetUserPaymentInvestmentAggregate options,
    required graphql_flutter
            .QueryBuilder<Query$GetUserPaymentInvestmentAggregate>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Variables$Query$GetAllPaymentInvestmentQuery {
  factory Variables$Query$GetAllPaymentInvestmentQuery({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      Variables$Query$GetAllPaymentInvestmentQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllPaymentInvestmentQuery._(this._$data);

  factory Variables$Query$GetAllPaymentInvestmentQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$payment_investment_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) =>
              fromJson$Enum$payment_investment_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) => Input$payment_investment_order_by.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllPaymentInvestmentQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$payment_investment_bool_exp? get where =>
      (_$data['where'] as Input$payment_investment_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$payment_investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$payment_investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$payment_investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$payment_investment_order_by>?);
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
          ?.map((e) => toJson$Enum$payment_investment_select_column(e))
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

  CopyWith$Variables$Query$GetAllPaymentInvestmentQuery<
          Variables$Query$GetAllPaymentInvestmentQuery>
      get copyWith => CopyWith$Variables$Query$GetAllPaymentInvestmentQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllPaymentInvestmentQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllPaymentInvestmentQuery<TRes> {
  factory CopyWith$Variables$Query$GetAllPaymentInvestmentQuery(
    Variables$Query$GetAllPaymentInvestmentQuery instance,
    TRes Function(Variables$Query$GetAllPaymentInvestmentQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentQuery;

  factory CopyWith$Variables$Query$GetAllPaymentInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentQuery;

  TRes call({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetAllPaymentInvestmentQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllPaymentInvestmentQuery _instance;

  final TRes Function(Variables$Query$GetAllPaymentInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllPaymentInvestmentQuery._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$payment_investment_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on':
              (distinct_on as List<Enum$payment_investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$payment_investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentQuery<TRes>
    implements CopyWith$Variables$Query$GetAllPaymentInvestmentQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentQuery(this._res);

  TRes _res;

  call({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllPaymentInvestmentQuery {
  Query$GetAllPaymentInvestmentQuery({
    required this.payment_investment,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllPaymentInvestmentQuery.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment = json['payment_investment'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentInvestmentQuery(
      payment_investment: (l$payment_investment as List<dynamic>)
          .map((e) => Fragment$paymentInvestmentData.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$paymentInvestmentData> payment_investment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment = payment_investment;
    _resultData['payment_investment'] =
        l$payment_investment.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment = payment_investment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$payment_investment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllPaymentInvestmentQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment = payment_investment;
    final lOther$payment_investment = other.payment_investment;
    if (l$payment_investment.length != lOther$payment_investment.length) {
      return false;
    }
    for (int i = 0; i < l$payment_investment.length; i++) {
      final l$payment_investment$entry = l$payment_investment[i];
      final lOther$payment_investment$entry = lOther$payment_investment[i];
      if (l$payment_investment$entry != lOther$payment_investment$entry) {
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

extension UtilityExtension$Query$GetAllPaymentInvestmentQuery
    on Query$GetAllPaymentInvestmentQuery {
  CopyWith$Query$GetAllPaymentInvestmentQuery<
          Query$GetAllPaymentInvestmentQuery>
      get copyWith => CopyWith$Query$GetAllPaymentInvestmentQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllPaymentInvestmentQuery<TRes> {
  factory CopyWith$Query$GetAllPaymentInvestmentQuery(
    Query$GetAllPaymentInvestmentQuery instance,
    TRes Function(Query$GetAllPaymentInvestmentQuery) then,
  ) = _CopyWithImpl$Query$GetAllPaymentInvestmentQuery;

  factory CopyWith$Query$GetAllPaymentInvestmentQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentInvestmentQuery;

  TRes call({
    List<Fragment$paymentInvestmentData>? payment_investment,
    String? $__typename,
  });
  TRes payment_investment(
      Iterable<Fragment$paymentInvestmentData> Function(
              Iterable<
                  CopyWith$Fragment$paymentInvestmentData<
                      Fragment$paymentInvestmentData>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllPaymentInvestmentQuery<TRes>
    implements CopyWith$Query$GetAllPaymentInvestmentQuery<TRes> {
  _CopyWithImpl$Query$GetAllPaymentInvestmentQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentInvestmentQuery _instance;

  final TRes Function(Query$GetAllPaymentInvestmentQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllPaymentInvestmentQuery(
        payment_investment:
            payment_investment == _undefined || payment_investment == null
                ? _instance.payment_investment
                : (payment_investment as List<Fragment$paymentInvestmentData>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes payment_investment(
          Iterable<Fragment$paymentInvestmentData> Function(
                  Iterable<
                      CopyWith$Fragment$paymentInvestmentData<
                          Fragment$paymentInvestmentData>>)
              _fn) =>
      call(
          payment_investment: _fn(_instance.payment_investment
              .map((e) => CopyWith$Fragment$paymentInvestmentData(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$GetAllPaymentInvestmentQuery<TRes>
    implements CopyWith$Query$GetAllPaymentInvestmentQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentInvestmentQuery(this._res);

  TRes _res;

  call({
    List<Fragment$paymentInvestmentData>? payment_investment,
    String? $__typename,
  }) =>
      _res;
  payment_investment(_fn) => _res;
}

const documentNodeQueryGetAllPaymentInvestmentQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllPaymentInvestmentQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'payment_investment_bool_exp'),
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
            name: NameNode(value: 'payment_investment_select_column'),
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
            name: NameNode(value: 'payment_investment_order_by'),
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
        name: NameNode(value: 'payment_investment'),
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
            name: NameNode(value: 'paymentInvestmentData'),
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
  fragmentDefinitionpaymentInvestmentData,
]);
Query$GetAllPaymentInvestmentQuery _parserFn$Query$GetAllPaymentInvestmentQuery(
        Map<String, dynamic> data) =>
    Query$GetAllPaymentInvestmentQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllPaymentInvestmentQuery = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$GetAllPaymentInvestmentQuery?,
);

class Options$Query$GetAllPaymentInvestmentQuery
    extends graphql.QueryOptions<Query$GetAllPaymentInvestmentQuery> {
  Options$Query$GetAllPaymentInvestmentQuery({
    String? operationName,
    Variables$Query$GetAllPaymentInvestmentQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPaymentInvestmentQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllPaymentInvestmentQuery? onComplete,
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
                        : _parserFn$Query$GetAllPaymentInvestmentQuery(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllPaymentInvestmentQuery,
          parserFn: _parserFn$Query$GetAllPaymentInvestmentQuery,
        );

  final OnQueryComplete$Query$GetAllPaymentInvestmentQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllPaymentInvestmentQuery
    extends graphql.WatchQueryOptions<Query$GetAllPaymentInvestmentQuery> {
  WatchOptions$Query$GetAllPaymentInvestmentQuery({
    String? operationName,
    Variables$Query$GetAllPaymentInvestmentQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPaymentInvestmentQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllPaymentInvestmentQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllPaymentInvestmentQuery,
        );
}

class FetchMoreOptions$Query$GetAllPaymentInvestmentQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllPaymentInvestmentQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllPaymentInvestmentQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllPaymentInvestmentQuery,
        );
}

extension ClientExtension$Query$GetAllPaymentInvestmentQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllPaymentInvestmentQuery>>
      query$GetAllPaymentInvestmentQuery(
              [Options$Query$GetAllPaymentInvestmentQuery? options]) async =>
          await this
              .query(options ?? Options$Query$GetAllPaymentInvestmentQuery());
  graphql.ObservableQuery<Query$GetAllPaymentInvestmentQuery>
      watchQuery$GetAllPaymentInvestmentQuery(
              [WatchOptions$Query$GetAllPaymentInvestmentQuery? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$GetAllPaymentInvestmentQuery());
  void writeQuery$GetAllPaymentInvestmentQuery({
    required Query$GetAllPaymentInvestmentQuery data,
    Variables$Query$GetAllPaymentInvestmentQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllPaymentInvestmentQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllPaymentInvestmentQuery? readQuery$GetAllPaymentInvestmentQuery({
    Variables$Query$GetAllPaymentInvestmentQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllPaymentInvestmentQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllPaymentInvestmentQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllPaymentInvestmentQuery>
    useQuery$GetAllPaymentInvestmentQuery(
            [Options$Query$GetAllPaymentInvestmentQuery? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$GetAllPaymentInvestmentQuery());
graphql.ObservableQuery<Query$GetAllPaymentInvestmentQuery>
    useWatchQuery$GetAllPaymentInvestmentQuery(
            [WatchOptions$Query$GetAllPaymentInvestmentQuery? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$GetAllPaymentInvestmentQuery());

class Query$GetAllPaymentInvestmentQuery$Widget
    extends graphql_flutter.Query<Query$GetAllPaymentInvestmentQuery> {
  Query$GetAllPaymentInvestmentQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllPaymentInvestmentQuery? options,
    required graphql_flutter.QueryBuilder<Query$GetAllPaymentInvestmentQuery>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetAllPaymentInvestmentQuery(),
          builder: builder,
        );
}

class Variables$Query$GetAllPaymentInvestmentInvestorQuery {
  factory Variables$Query$GetAllPaymentInvestmentInvestorQuery({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      Variables$Query$GetAllPaymentInvestmentInvestorQuery._({
        if (where != null) r'where': where,
        if (limit != null) r'limit': limit,
        if (distinct_on != null) r'distinct_on': distinct_on,
        if (offset != null) r'offset': offset,
        if (order_by != null) r'order_by': order_by,
      });

  Variables$Query$GetAllPaymentInvestmentInvestorQuery._(this._$data);

  factory Variables$Query$GetAllPaymentInvestmentInvestorQuery.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$payment_investment_bool_exp.fromJson(
              (l$where as Map<String, dynamic>));
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('distinct_on')) {
      final l$distinct_on = data['distinct_on'];
      result$data['distinct_on'] = (l$distinct_on as List<dynamic>?)
          ?.map((e) =>
              fromJson$Enum$payment_investment_select_column((e as String)))
          .toList();
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('order_by')) {
      final l$order_by = data['order_by'];
      result$data['order_by'] = (l$order_by as List<dynamic>?)
          ?.map((e) => Input$payment_investment_order_by.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$GetAllPaymentInvestmentInvestorQuery._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$payment_investment_bool_exp? get where =>
      (_$data['where'] as Input$payment_investment_bool_exp?);
  int? get limit => (_$data['limit'] as int?);
  List<Enum$payment_investment_select_column>? get distinct_on =>
      (_$data['distinct_on'] as List<Enum$payment_investment_select_column>?);
  int? get offset => (_$data['offset'] as int?);
  List<Input$payment_investment_order_by>? get order_by =>
      (_$data['order_by'] as List<Input$payment_investment_order_by>?);
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
          ?.map((e) => toJson$Enum$payment_investment_select_column(e))
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

  CopyWith$Variables$Query$GetAllPaymentInvestmentInvestorQuery<
          Variables$Query$GetAllPaymentInvestmentInvestorQuery>
      get copyWith =>
          CopyWith$Variables$Query$GetAllPaymentInvestmentInvestorQuery(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$GetAllPaymentInvestmentInvestorQuery) ||
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

abstract class CopyWith$Variables$Query$GetAllPaymentInvestmentInvestorQuery<
    TRes> {
  factory CopyWith$Variables$Query$GetAllPaymentInvestmentInvestorQuery(
    Variables$Query$GetAllPaymentInvestmentInvestorQuery instance,
    TRes Function(Variables$Query$GetAllPaymentInvestmentInvestorQuery) then,
  ) = _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentInvestorQuery;

  factory CopyWith$Variables$Query$GetAllPaymentInvestmentInvestorQuery.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentInvestorQuery;

  TRes call({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  });
}

class _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentInvestorQuery<TRes>
    implements
        CopyWith$Variables$Query$GetAllPaymentInvestmentInvestorQuery<TRes> {
  _CopyWithImpl$Variables$Query$GetAllPaymentInvestmentInvestorQuery(
    this._instance,
    this._then,
  );

  final Variables$Query$GetAllPaymentInvestmentInvestorQuery _instance;

  final TRes Function(Variables$Query$GetAllPaymentInvestmentInvestorQuery)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? limit = _undefined,
    Object? distinct_on = _undefined,
    Object? offset = _undefined,
    Object? order_by = _undefined,
  }) =>
      _then(Variables$Query$GetAllPaymentInvestmentInvestorQuery._({
        ..._instance._$data,
        if (where != _undefined)
          'where': (where as Input$payment_investment_bool_exp?),
        if (limit != _undefined) 'limit': (limit as int?),
        if (distinct_on != _undefined)
          'distinct_on':
              (distinct_on as List<Enum$payment_investment_select_column>?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (order_by != _undefined)
          'order_by': (order_by as List<Input$payment_investment_order_by>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentInvestorQuery<
        TRes>
    implements
        CopyWith$Variables$Query$GetAllPaymentInvestmentInvestorQuery<TRes> {
  _CopyWithStubImpl$Variables$Query$GetAllPaymentInvestmentInvestorQuery(
      this._res);

  TRes _res;

  call({
    Input$payment_investment_bool_exp? where,
    int? limit,
    List<Enum$payment_investment_select_column>? distinct_on,
    int? offset,
    List<Input$payment_investment_order_by>? order_by,
  }) =>
      _res;
}

class Query$GetAllPaymentInvestmentInvestorQuery {
  Query$GetAllPaymentInvestmentInvestorQuery({
    required this.payment_investment,
    this.$__typename = 'query_root',
  });

  factory Query$GetAllPaymentInvestmentInvestorQuery.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment = json['payment_investment'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentInvestmentInvestorQuery(
      payment_investment: (l$payment_investment as List<dynamic>)
          .map((e) =>
              Query$GetAllPaymentInvestmentInvestorQuery$payment_investment
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetAllPaymentInvestmentInvestorQuery$payment_investment>
      payment_investment;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment = payment_investment;
    _resultData['payment_investment'] =
        l$payment_investment.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment = payment_investment;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$payment_investment.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetAllPaymentInvestmentInvestorQuery) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment = payment_investment;
    final lOther$payment_investment = other.payment_investment;
    if (l$payment_investment.length != lOther$payment_investment.length) {
      return false;
    }
    for (int i = 0; i < l$payment_investment.length; i++) {
      final l$payment_investment$entry = l$payment_investment[i];
      final lOther$payment_investment$entry = lOther$payment_investment[i];
      if (l$payment_investment$entry != lOther$payment_investment$entry) {
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

extension UtilityExtension$Query$GetAllPaymentInvestmentInvestorQuery
    on Query$GetAllPaymentInvestmentInvestorQuery {
  CopyWith$Query$GetAllPaymentInvestmentInvestorQuery<
          Query$GetAllPaymentInvestmentInvestorQuery>
      get copyWith => CopyWith$Query$GetAllPaymentInvestmentInvestorQuery(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllPaymentInvestmentInvestorQuery<TRes> {
  factory CopyWith$Query$GetAllPaymentInvestmentInvestorQuery(
    Query$GetAllPaymentInvestmentInvestorQuery instance,
    TRes Function(Query$GetAllPaymentInvestmentInvestorQuery) then,
  ) = _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery;

  factory CopyWith$Query$GetAllPaymentInvestmentInvestorQuery.stub(TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery;

  TRes call({
    List<Query$GetAllPaymentInvestmentInvestorQuery$payment_investment>?
        payment_investment,
    String? $__typename,
  });
  TRes payment_investment(
      Iterable<Query$GetAllPaymentInvestmentInvestorQuery$payment_investment> Function(
              Iterable<
                  CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
                      Query$GetAllPaymentInvestmentInvestorQuery$payment_investment>>)
          _fn);
}

class _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery<TRes>
    implements CopyWith$Query$GetAllPaymentInvestmentInvestorQuery<TRes> {
  _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentInvestmentInvestorQuery _instance;

  final TRes Function(Query$GetAllPaymentInvestmentInvestorQuery) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetAllPaymentInvestmentInvestorQuery(
        payment_investment: payment_investment == _undefined ||
                payment_investment == null
            ? _instance.payment_investment
            : (payment_investment as List<
                Query$GetAllPaymentInvestmentInvestorQuery$payment_investment>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes payment_investment(
          Iterable<Query$GetAllPaymentInvestmentInvestorQuery$payment_investment> Function(
                  Iterable<
                      CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
                          Query$GetAllPaymentInvestmentInvestorQuery$payment_investment>>)
              _fn) =>
      call(
          payment_investment: _fn(_instance.payment_investment.map((e) =>
              CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery<TRes>
    implements CopyWith$Query$GetAllPaymentInvestmentInvestorQuery<TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery(this._res);

  TRes _res;

  call({
    List<Query$GetAllPaymentInvestmentInvestorQuery$payment_investment>?
        payment_investment,
    String? $__typename,
  }) =>
      _res;
  payment_investment(_fn) => _res;
}

const documentNodeQueryGetAllPaymentInvestmentInvestorQuery =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetAllPaymentInvestmentInvestorQuery'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'payment_investment_bool_exp'),
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
            name: NameNode(value: 'payment_investment_select_column'),
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
            name: NameNode(value: 'payment_investment_order_by'),
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
        name: NameNode(value: 'payment_investment'),
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
            name: NameNode(value: 'paymentInvestmentData'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'investment'),
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
  fragmentDefinitionpaymentInvestmentData,
  fragmentDefinitioninvestmentData,
]);
Query$GetAllPaymentInvestmentInvestorQuery
    _parserFn$Query$GetAllPaymentInvestmentInvestorQuery(
            Map<String, dynamic> data) =>
        Query$GetAllPaymentInvestmentInvestorQuery.fromJson(data);
typedef OnQueryComplete$Query$GetAllPaymentInvestmentInvestorQuery
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetAllPaymentInvestmentInvestorQuery?,
);

class Options$Query$GetAllPaymentInvestmentInvestorQuery
    extends graphql.QueryOptions<Query$GetAllPaymentInvestmentInvestorQuery> {
  Options$Query$GetAllPaymentInvestmentInvestorQuery({
    String? operationName,
    Variables$Query$GetAllPaymentInvestmentInvestorQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPaymentInvestmentInvestorQuery? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetAllPaymentInvestmentInvestorQuery? onComplete,
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
                        : _parserFn$Query$GetAllPaymentInvestmentInvestorQuery(
                            data),
                  ),
          onError: onError,
          document: documentNodeQueryGetAllPaymentInvestmentInvestorQuery,
          parserFn: _parserFn$Query$GetAllPaymentInvestmentInvestorQuery,
        );

  final OnQueryComplete$Query$GetAllPaymentInvestmentInvestorQuery?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetAllPaymentInvestmentInvestorQuery extends graphql
    .WatchQueryOptions<Query$GetAllPaymentInvestmentInvestorQuery> {
  WatchOptions$Query$GetAllPaymentInvestmentInvestorQuery({
    String? operationName,
    Variables$Query$GetAllPaymentInvestmentInvestorQuery? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetAllPaymentInvestmentInvestorQuery? typedOptimisticResult,
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
          document: documentNodeQueryGetAllPaymentInvestmentInvestorQuery,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetAllPaymentInvestmentInvestorQuery,
        );
}

class FetchMoreOptions$Query$GetAllPaymentInvestmentInvestorQuery
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetAllPaymentInvestmentInvestorQuery({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$GetAllPaymentInvestmentInvestorQuery? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryGetAllPaymentInvestmentInvestorQuery,
        );
}

extension ClientExtension$Query$GetAllPaymentInvestmentInvestorQuery
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetAllPaymentInvestmentInvestorQuery>>
      query$GetAllPaymentInvestmentInvestorQuery(
              [Options$Query$GetAllPaymentInvestmentInvestorQuery?
                  options]) async =>
          await this.query(
              options ?? Options$Query$GetAllPaymentInvestmentInvestorQuery());
  graphql.ObservableQuery<Query$GetAllPaymentInvestmentInvestorQuery>
      watchQuery$GetAllPaymentInvestmentInvestorQuery(
              [WatchOptions$Query$GetAllPaymentInvestmentInvestorQuery?
                  options]) =>
          this.watchQuery(options ??
              WatchOptions$Query$GetAllPaymentInvestmentInvestorQuery());
  void writeQuery$GetAllPaymentInvestmentInvestorQuery({
    required Query$GetAllPaymentInvestmentInvestorQuery data,
    Variables$Query$GetAllPaymentInvestmentInvestorQuery? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryGetAllPaymentInvestmentInvestorQuery),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetAllPaymentInvestmentInvestorQuery?
      readQuery$GetAllPaymentInvestmentInvestorQuery({
    Variables$Query$GetAllPaymentInvestmentInvestorQuery? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryGetAllPaymentInvestmentInvestorQuery),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$GetAllPaymentInvestmentInvestorQuery.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetAllPaymentInvestmentInvestorQuery>
    useQuery$GetAllPaymentInvestmentInvestorQuery(
            [Options$Query$GetAllPaymentInvestmentInvestorQuery? options]) =>
        graphql_flutter.useQuery(
            options ?? Options$Query$GetAllPaymentInvestmentInvestorQuery());
graphql.ObservableQuery<Query$GetAllPaymentInvestmentInvestorQuery>
    useWatchQuery$GetAllPaymentInvestmentInvestorQuery(
            [WatchOptions$Query$GetAllPaymentInvestmentInvestorQuery?
                options]) =>
        graphql_flutter.useWatchQuery(options ??
            WatchOptions$Query$GetAllPaymentInvestmentInvestorQuery());

class Query$GetAllPaymentInvestmentInvestorQuery$Widget
    extends graphql_flutter.Query<Query$GetAllPaymentInvestmentInvestorQuery> {
  Query$GetAllPaymentInvestmentInvestorQuery$Widget({
    widgets.Key? key,
    Options$Query$GetAllPaymentInvestmentInvestorQuery? options,
    required graphql_flutter
            .QueryBuilder<Query$GetAllPaymentInvestmentInvestorQuery>
        builder,
  }) : super(
          key: key,
          options:
              options ?? Options$Query$GetAllPaymentInvestmentInvestorQuery(),
          builder: builder,
        );
}

class Query$GetAllPaymentInvestmentInvestorQuery$payment_investment
    implements Fragment$paymentInvestmentData {
  Query$GetAllPaymentInvestmentInvestorQuery$payment_investment({
    required this.payment_investment_id,
    required this.payment_investment_fulfilled,
    required this.updated_at,
    required this.created_at,
    this.bank_card_used,
    this.$__typename = 'payment_investment',
    required this.investment,
  });

  factory Query$GetAllPaymentInvestmentInvestorQuery$payment_investment.fromJson(
      Map<String, dynamic> json) {
    final l$payment_investment_id = json['payment_investment_id'];
    final l$payment_investment_fulfilled = json['payment_investment_fulfilled'];
    final l$updated_at = json['updated_at'];
    final l$created_at = json['created_at'];
    final l$bank_card_used = json['bank_card_used'];
    final l$$__typename = json['__typename'];
    final l$investment = json['investment'];
    return Query$GetAllPaymentInvestmentInvestorQuery$payment_investment(
      payment_investment_id: uuidFromJson(l$payment_investment_id),
      payment_investment_fulfilled: (l$payment_investment_fulfilled as bool),
      updated_at: DateTime.parse((l$updated_at as String)),
      created_at: DateTime.parse((l$created_at as String)),
      bank_card_used: l$bank_card_used == null
          ? null
          : Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used
              .fromJson((l$bank_card_used as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
      investment: Fragment$investmentData.fromJson(
          (l$investment as Map<String, dynamic>)),
    );
  }

  final UUID payment_investment_id;

  final bool payment_investment_fulfilled;

  final DateTime updated_at;

  final DateTime created_at;

  final Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used?
      bank_card_used;

  final String $__typename;

  final Fragment$investmentData investment;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payment_investment_id = payment_investment_id;
    _resultData['payment_investment_id'] = uuidToJson(l$payment_investment_id);
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    _resultData['payment_investment_fulfilled'] =
        l$payment_investment_fulfilled;
    final l$updated_at = updated_at;
    _resultData['updated_at'] = l$updated_at.toIso8601String();
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at.toIso8601String();
    final l$bank_card_used = bank_card_used;
    _resultData['bank_card_used'] = l$bank_card_used?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    final l$investment = investment;
    _resultData['investment'] = l$investment.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payment_investment_id = payment_investment_id;
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    final l$updated_at = updated_at;
    final l$created_at = created_at;
    final l$bank_card_used = bank_card_used;
    final l$$__typename = $__typename;
    final l$investment = investment;
    return Object.hashAll([
      l$payment_investment_id,
      l$payment_investment_fulfilled,
      l$updated_at,
      l$created_at,
      l$bank_card_used,
      l$$__typename,
      l$investment,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAllPaymentInvestmentInvestorQuery$payment_investment) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payment_investment_id = payment_investment_id;
    final lOther$payment_investment_id = other.payment_investment_id;
    if (l$payment_investment_id != lOther$payment_investment_id) {
      return false;
    }
    final l$payment_investment_fulfilled = payment_investment_fulfilled;
    final lOther$payment_investment_fulfilled =
        other.payment_investment_fulfilled;
    if (l$payment_investment_fulfilled != lOther$payment_investment_fulfilled) {
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
    final l$bank_card_used = bank_card_used;
    final lOther$bank_card_used = other.bank_card_used;
    if (l$bank_card_used != lOther$bank_card_used) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    final l$investment = investment;
    final lOther$investment = other.investment;
    if (l$investment != lOther$investment) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment
    on Query$GetAllPaymentInvestmentInvestorQuery$payment_investment {
  CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
          Query$GetAllPaymentInvestmentInvestorQuery$payment_investment>
      get copyWith =>
          CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
    TRes> {
  factory CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment(
    Query$GetAllPaymentInvestmentInvestorQuery$payment_investment instance,
    TRes Function(Query$GetAllPaymentInvestmentInvestorQuery$payment_investment)
        then,
  ) = _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment;

  factory CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment;

  TRes call({
    UUID? payment_investment_id,
    bool? payment_investment_fulfilled,
    DateTime? updated_at,
    DateTime? created_at,
    Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used?
        bank_card_used,
    String? $__typename,
    Fragment$investmentData? investment,
  });
  CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
      TRes> get bank_card_used;
  CopyWith$Fragment$investmentData<TRes> get investment;
}

class _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
        TRes>
    implements
        CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
            TRes> {
  _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentInvestmentInvestorQuery$payment_investment _instance;

  final TRes Function(
      Query$GetAllPaymentInvestmentInvestorQuery$payment_investment) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payment_investment_id = _undefined,
    Object? payment_investment_fulfilled = _undefined,
    Object? updated_at = _undefined,
    Object? created_at = _undefined,
    Object? bank_card_used = _undefined,
    Object? $__typename = _undefined,
    Object? investment = _undefined,
  }) =>
      _then(Query$GetAllPaymentInvestmentInvestorQuery$payment_investment(
        payment_investment_id:
            payment_investment_id == _undefined || payment_investment_id == null
                ? _instance.payment_investment_id
                : (payment_investment_id as UUID),
        payment_investment_fulfilled:
            payment_investment_fulfilled == _undefined ||
                    payment_investment_fulfilled == null
                ? _instance.payment_investment_fulfilled
                : (payment_investment_fulfilled as bool),
        updated_at: updated_at == _undefined || updated_at == null
            ? _instance.updated_at
            : (updated_at as DateTime),
        created_at: created_at == _undefined || created_at == null
            ? _instance.created_at
            : (created_at as DateTime),
        bank_card_used: bank_card_used == _undefined
            ? _instance.bank_card_used
            : (bank_card_used
                as Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
        investment: investment == _undefined || investment == null
            ? _instance.investment
            : (investment as Fragment$investmentData),
      ));
  CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
      TRes> get bank_card_used {
    final local$bank_card_used = _instance.bank_card_used;
    return local$bank_card_used == null
        ? CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used
            .stub(_then(_instance))
        : CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used(
            local$bank_card_used, (e) => call(bank_card_used: e));
  }

  CopyWith$Fragment$investmentData<TRes> get investment {
    final local$investment = _instance.investment;
    return CopyWith$Fragment$investmentData(
        local$investment, (e) => call(investment: e));
  }
}

class _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
        TRes>
    implements
        CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment<
            TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment(
      this._res);

  TRes _res;

  call({
    UUID? payment_investment_id,
    bool? payment_investment_fulfilled,
    DateTime? updated_at,
    DateTime? created_at,
    Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used?
        bank_card_used,
    String? $__typename,
    Fragment$investmentData? investment,
  }) =>
      _res;
  CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
          TRes>
      get bank_card_used =>
          CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used
              .stub(_res);
  CopyWith$Fragment$investmentData<TRes> get investment =>
      CopyWith$Fragment$investmentData.stub(_res);
}

class Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used
    implements Fragment$paymentInvestmentData$bank_card_used {
  Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used({
    required this.bank_card_id,
    this.$__typename = 'bank_card',
  });

  factory Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used.fromJson(
      Map<String, dynamic> json) {
    final l$bank_card_id = json['bank_card_id'];
    final l$$__typename = json['__typename'];
    return Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used(
      bank_card_id: uuidFromJson(l$bank_card_id),
      $__typename: (l$$__typename as String),
    );
  }

  final UUID bank_card_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$bank_card_id = bank_card_id;
    _resultData['bank_card_id'] = uuidToJson(l$bank_card_id);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$bank_card_id = bank_card_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$bank_card_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$bank_card_id = bank_card_id;
    final lOther$bank_card_id = other.bank_card_id;
    if (l$bank_card_id != lOther$bank_card_id) {
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

extension UtilityExtension$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used
    on Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used {
  CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
          Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used>
      get copyWith =>
          CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
    TRes> {
  factory CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used(
    Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used
        instance,
    TRes Function(
            Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used)
        then,
  ) = _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used;

  factory CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used;

  TRes call({
    UUID? bank_card_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
        TRes>
    implements
        CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
            TRes> {
  _CopyWithImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used(
    this._instance,
    this._then,
  );

  final Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used
      _instance;

  final TRes Function(
          Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? bank_card_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used(
        bank_card_id: bank_card_id == _undefined || bank_card_id == null
            ? _instance.bank_card_id
            : (bank_card_id as UUID),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
        TRes>
    implements
        CopyWith$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used<
            TRes> {
  _CopyWithStubImpl$Query$GetAllPaymentInvestmentInvestorQuery$payment_investment$bank_card_used(
      this._res);

  TRes _res;

  call({
    UUID? bank_card_id,
    String? $__typename,
  }) =>
      _res;
}
