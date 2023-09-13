import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdatePackageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for recieverName widget.
  TextEditingController? recieverNameController;
  String? Function(BuildContext, String?)? recieverNameControllerValidator;
  // State field(s) for recieverPhone widget.
  TextEditingController? recieverPhoneController1;
  String? Function(BuildContext, String?)? recieverPhoneController1Validator;
  // State field(s) for recieverPhone widget.
  TextEditingController? recieverPhoneController2;
  String? Function(BuildContext, String?)? recieverPhoneController2Validator;
  // State field(s) for senderName widget.
  TextEditingController? senderNameController;
  String? Function(BuildContext, String?)? senderNameControllerValidator;
  // State field(s) for senderPhone widget.
  TextEditingController? senderPhoneController;
  String? Function(BuildContext, String?)? senderPhoneControllerValidator;
  // State field(s) for senderLocation widget.
  TextEditingController? senderLocationController;
  String? Function(BuildContext, String?)? senderLocationControllerValidator;
  // State field(s) for senderOffice widget.
  String? senderOfficeValue;
  FormFieldController<String>? senderOfficeValueController;
  // State field(s) for recieverOffice widget.
  String? recieverOfficeValue;
  FormFieldController<String>? recieverOfficeValueController;
  // State field(s) for packageType widget.
  String? packageTypeValue;
  FormFieldController<String>? packageTypeValueController;
  // State field(s) for breakAble widget.
  String? breakAbleValue;
  FormFieldController<String>? breakAbleValueController;
  DateTime? datePicked;
  // State field(s) for state widget.
  String? stateValue;
  FormFieldController<String>? stateValueController;
  // State field(s) for driver widget.
  String? driverValue;
  FormFieldController<String>? driverValueController;
  // State field(s) for back widget.
  TextEditingController? backController;
  String? Function(BuildContext, String?)? backControllerValidator;
  // State field(s) for notes widget.
  TextEditingController? notesController;
  String? Function(BuildContext, String?)? notesControllerValidator;
  // State field(s) for packageIdText widget.
  TextEditingController? packageIdTextController;
  String? Function(BuildContext, String?)? packageIdTextControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    recieverNameController?.dispose();
    recieverPhoneController1?.dispose();
    recieverPhoneController2?.dispose();
    senderNameController?.dispose();
    senderPhoneController?.dispose();
    senderLocationController?.dispose();
    backController?.dispose();
    notesController?.dispose();
    packageIdTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
