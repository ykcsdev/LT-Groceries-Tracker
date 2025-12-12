import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'file_upload_process_screen_widget.dart'
    show FileUploadProcessScreenWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FileUploadProcessScreenModel
    extends FlutterFlowModel<FileUploadProcessScreenWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataKop = false;
  FFUploadedFile uploadedLocalFile_uploadDataKop =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadReceiptAPI)] action in Button widget.
  ApiCallResponse? apiResulthpq7;
  bool isDataUploading_uploadDataEoh = false;
  FFUploadedFile uploadedLocalFile_uploadDataEoh =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadReceiptAPI)] action in Button widget.
  ApiCallResponse? apiResulthpq5;
  bool isDataUploading_uploadDataLl3 = false;
  FFUploadedFile uploadedLocalFile_uploadDataLl3 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadReceiptAPI)] action in Button widget.
  ApiCallResponse? apiResulthpq8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
