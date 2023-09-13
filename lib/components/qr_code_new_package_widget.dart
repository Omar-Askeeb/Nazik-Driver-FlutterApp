import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'qr_code_new_package_model.dart';
export 'qr_code_new_package_model.dart';

class QrCodeNewPackageWidget extends StatefulWidget {
  const QrCodeNewPackageWidget({
    Key? key,
    String? packageID,
  })  : this.packageID = packageID ?? '0',
        super(key: key);

  final String packageID;

  @override
  _QrCodeNewPackageWidgetState createState() => _QrCodeNewPackageWidgetState();
}

class _QrCodeNewPackageWidgetState extends State<QrCodeNewPackageWidget> {
  late QrCodeNewPackageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QrCodeNewPackageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              child: BarcodeWidget(
                data: widget.packageID,
                barcode: Barcode.qrCode(),
                width: 300.0,
                height: 300.0,
                color: FlutterFlowTheme.of(context).primaryText,
                backgroundColor: Colors.transparent,
                errorBuilder: (_context, _error) => SizedBox(
                  width: 300.0,
                  height: 300.0,
                ),
                drawText: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
