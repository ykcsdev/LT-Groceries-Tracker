import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'edit_product_screen_widget.dart' show EditProductScreenWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProductScreenModel extends FlutterFlowModel<EditProductScreenWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for productField widget.
  FocusNode? productFieldFocusNode;
  TextEditingController? productFieldTextController;
  String? Function(BuildContext, String?)? productFieldTextControllerValidator;
  String? _productFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a Name';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for Quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Quantity is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for UnitPrice widget.
  FocusNode? unitPriceFocusNode;
  TextEditingController? unitPriceTextController;
  String? Function(BuildContext, String?)? unitPriceTextControllerValidator;
  String? _unitPriceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter Price per unit value';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for Discount widget.
  FocusNode? discountFocusNode;
  TextEditingController? discountTextController;
  String? Function(BuildContext, String?)? discountTextControllerValidator;
  // State field(s) for wholePrice widget.
  FocusNode? wholePriceFocusNode;
  TextEditingController? wholePriceTextController;
  String? Function(BuildContext, String?)? wholePriceTextControllerValidator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? form1val;
  // Stores action output result for [Backend Call - API (updateProductDetails)] action in Button widget.
  ApiCallResponse? apiResultfsx;

  @override
  void initState(BuildContext context) {
    productFieldTextControllerValidator = _productFieldTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
    unitPriceTextControllerValidator = _unitPriceTextControllerValidator;
  }

  @override
  void dispose() {
    productFieldFocusNode?.dispose();
    productFieldTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    unitPriceFocusNode?.dispose();
    unitPriceTextController?.dispose();

    discountFocusNode?.dispose();
    discountTextController?.dispose();

    wholePriceFocusNode?.dispose();
    wholePriceTextController?.dispose();
  }
}
