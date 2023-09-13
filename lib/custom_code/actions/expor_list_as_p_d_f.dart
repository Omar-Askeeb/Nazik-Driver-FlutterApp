// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
import 'package:download/download.dart';
import 'dart:io';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_fonts/google_fonts.dart';
import '../../auth/firebase_auth/auth_util.dart';
import '../../backend/firebase_storage/storage.dart';
import 'dart:typed_data';

Future exporListAsPDF(List<PackagesRecord>? docs) async {
  // Add your function code here!

  docs = docs ?? [];

  // Add the company name and address as a header
  String companyName = "Nazik";
  String companyAddress = "Tripoli";
  String header = "$companyName,$companyAddress\n\n";

  String fileContent = header +
      " package_ID, package_type, receiver_location, receiver_phone, rev, sender";

  docs.asMap().forEach((index, record) => fileContent = fileContent +
      "\n" +
      record.packageId.toString() +
      "," +
      record.packageType.toString() +
      "," +
      record.receiverLocation.toString() +
      "," +
      record.receiverPhone.toString() +
      "," +
      record.rev.toString() +
      "," +
      record.senderName.toString());

  // Example of date formating thanks to Edmund Ong
  // DateFormat('dd-MM-yyyy').format(record.attendanceDate!) +
  //     "," +
  //     DateFormat('HH:mm').format(record.timeIn!) +
  //     "," +

  final fileName = "Nazik - " + DateTime.now().toString() + ".csv";

  // Encode the string as a List<int> of UTF-8 bytes
  var bytes = utf8.encode(fileContent);

  final stream = Stream.fromIterable(bytes);
  return download(stream, fileName);
}
