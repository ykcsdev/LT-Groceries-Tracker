// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VarListStruct extends FFFirebaseStruct {
  VarListStruct({
    List<VarInvoiceDatatableStruct>? fieldListOfInvoices,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fieldListOfInvoices = fieldListOfInvoices,
        super(firestoreUtilData);

  // "field_List_of_invoices" field.
  List<VarInvoiceDatatableStruct>? _fieldListOfInvoices;
  List<VarInvoiceDatatableStruct> get fieldListOfInvoices =>
      _fieldListOfInvoices ?? const [];
  set fieldListOfInvoices(List<VarInvoiceDatatableStruct>? val) =>
      _fieldListOfInvoices = val;

  void updateFieldListOfInvoices(
      Function(List<VarInvoiceDatatableStruct>) updateFn) {
    updateFn(_fieldListOfInvoices ??= []);
  }

  bool hasFieldListOfInvoices() => _fieldListOfInvoices != null;

  static VarListStruct fromMap(Map<String, dynamic> data) => VarListStruct(
        fieldListOfInvoices: getStructList(
          data['field_List_of_invoices'],
          VarInvoiceDatatableStruct.fromMap,
        ),
      );

  static VarListStruct? maybeFromMap(dynamic data) =>
      data is Map ? VarListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'field_List_of_invoices':
            _fieldListOfInvoices?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'field_List_of_invoices': serializeParam(
          _fieldListOfInvoices,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static VarListStruct fromSerializableMap(Map<String, dynamic> data) =>
      VarListStruct(
        fieldListOfInvoices: deserializeStructParam<VarInvoiceDatatableStruct>(
          data['field_List_of_invoices'],
          ParamType.DataStruct,
          true,
          structBuilder: VarInvoiceDatatableStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'VarListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is VarListStruct &&
        listEquality.equals(fieldListOfInvoices, other.fieldListOfInvoices);
  }

  @override
  int get hashCode => const ListEquality().hash([fieldListOfInvoices]);
}

VarListStruct createVarListStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VarListStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VarListStruct? updateVarListStruct(
  VarListStruct? varList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    varList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVarListStructData(
  Map<String, dynamic> firestoreData,
  VarListStruct? varList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (varList == null) {
    return;
  }
  if (varList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && varList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final varListData = getVarListFirestoreData(varList, forFieldValue);
  final nestedData = varListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = varList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVarListFirestoreData(
  VarListStruct? varList, [
  bool forFieldValue = false,
]) {
  if (varList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(varList.toMap());

  // Add any Firestore field values
  varList.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVarListListFirestoreData(
  List<VarListStruct>? varLists,
) =>
    varLists?.map((e) => getVarListFirestoreData(e, true)).toList() ?? [];
