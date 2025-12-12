// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// To handle elements of invoice table
class VarInvoiceDatatableStruct extends FFFirebaseStruct {
  VarInvoiceDatatableStruct({
    int? invoiceId,
    String? supermarketName,
    String? branchName,
    double? totalPayment,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _invoiceId = invoiceId,
        _supermarketName = supermarketName,
        _branchName = branchName,
        _totalPayment = totalPayment,
        super(firestoreUtilData);

  // "invoice_id" field.
  int? _invoiceId;
  int get invoiceId => _invoiceId ?? 1001;
  set invoiceId(int? val) => _invoiceId = val;

  void incrementInvoiceId(int amount) => invoiceId = invoiceId + amount;

  bool hasInvoiceId() => _invoiceId != null;

  // "Supermarket_Name" field.
  String? _supermarketName;
  String get supermarketName => _supermarketName ?? 'Maxima';
  set supermarketName(String? val) => _supermarketName = val;

  bool hasSupermarketName() => _supermarketName != null;

  // "Branch_Name" field.
  String? _branchName;
  String get branchName => _branchName ?? 'Molas';
  set branchName(String? val) => _branchName = val;

  bool hasBranchName() => _branchName != null;

  // "Total_Payment" field.
  double? _totalPayment;
  double get totalPayment => _totalPayment ?? 50.0;
  set totalPayment(double? val) => _totalPayment = val;

  void incrementTotalPayment(double amount) =>
      totalPayment = totalPayment + amount;

  bool hasTotalPayment() => _totalPayment != null;

  static VarInvoiceDatatableStruct fromMap(Map<String, dynamic> data) =>
      VarInvoiceDatatableStruct(
        invoiceId: castToType<int>(data['invoice_id']),
        supermarketName: data['Supermarket_Name'] as String?,
        branchName: data['Branch_Name'] as String?,
        totalPayment: castToType<double>(data['Total_Payment']),
      );

  static VarInvoiceDatatableStruct? maybeFromMap(dynamic data) => data is Map
      ? VarInvoiceDatatableStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'invoice_id': _invoiceId,
        'Supermarket_Name': _supermarketName,
        'Branch_Name': _branchName,
        'Total_Payment': _totalPayment,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'invoice_id': serializeParam(
          _invoiceId,
          ParamType.int,
        ),
        'Supermarket_Name': serializeParam(
          _supermarketName,
          ParamType.String,
        ),
        'Branch_Name': serializeParam(
          _branchName,
          ParamType.String,
        ),
        'Total_Payment': serializeParam(
          _totalPayment,
          ParamType.double,
        ),
      }.withoutNulls;

  static VarInvoiceDatatableStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      VarInvoiceDatatableStruct(
        invoiceId: deserializeParam(
          data['invoice_id'],
          ParamType.int,
          false,
        ),
        supermarketName: deserializeParam(
          data['Supermarket_Name'],
          ParamType.String,
          false,
        ),
        branchName: deserializeParam(
          data['Branch_Name'],
          ParamType.String,
          false,
        ),
        totalPayment: deserializeParam(
          data['Total_Payment'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'VarInvoiceDatatableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VarInvoiceDatatableStruct &&
        invoiceId == other.invoiceId &&
        supermarketName == other.supermarketName &&
        branchName == other.branchName &&
        totalPayment == other.totalPayment;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([invoiceId, supermarketName, branchName, totalPayment]);
}

VarInvoiceDatatableStruct createVarInvoiceDatatableStruct({
  int? invoiceId,
  String? supermarketName,
  String? branchName,
  double? totalPayment,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VarInvoiceDatatableStruct(
      invoiceId: invoiceId,
      supermarketName: supermarketName,
      branchName: branchName,
      totalPayment: totalPayment,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VarInvoiceDatatableStruct? updateVarInvoiceDatatableStruct(
  VarInvoiceDatatableStruct? varInvoiceDatatable, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    varInvoiceDatatable
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVarInvoiceDatatableStructData(
  Map<String, dynamic> firestoreData,
  VarInvoiceDatatableStruct? varInvoiceDatatable,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (varInvoiceDatatable == null) {
    return;
  }
  if (varInvoiceDatatable.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && varInvoiceDatatable.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final varInvoiceDatatableData =
      getVarInvoiceDatatableFirestoreData(varInvoiceDatatable, forFieldValue);
  final nestedData =
      varInvoiceDatatableData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      varInvoiceDatatable.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVarInvoiceDatatableFirestoreData(
  VarInvoiceDatatableStruct? varInvoiceDatatable, [
  bool forFieldValue = false,
]) {
  if (varInvoiceDatatable == null) {
    return {};
  }
  final firestoreData = mapToFirestore(varInvoiceDatatable.toMap());

  // Add any Firestore field values
  varInvoiceDatatable.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVarInvoiceDatatableListFirestoreData(
  List<VarInvoiceDatatableStruct>? varInvoiceDatatables,
) =>
    varInvoiceDatatables
        ?.map((e) => getVarInvoiceDatatableFirestoreData(e, true))
        .toList() ??
    [];
