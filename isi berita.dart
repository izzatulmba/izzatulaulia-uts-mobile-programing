import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'isiberita_model.dart';
export 'isiberita_model.dart';

class IsiberitaWidget extends StatefulWidget {
  const IsiberitaWidget({Key? key}) : super(key: key);

  @override
  _IsiberitaWidgetState createState() => _IsiberitaWidgetState();
}

class _IsiberitaWidgetState extends State<IsiberitaWidget> {
  late IsiberitaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IsiberitaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(-2.57, -0.07),
            child: Text(
              '                    INDONESIA DARURAT\n                         SAMPAH PLASTIK',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(-0.14, -0.94),
                    child: Text(
                      'Sebegini Parah Ternyata Masalah\n   Sampah Plastik di Indonesia',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 19,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.61),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/LAUT.jpeg',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.76, -0.01),
                    child: Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.52),
                    child: Text(
                      ' Masalah sampah plastik di Indonesia lagi-lagi menjadi sorotan publik. Melihat perkembangan masalah sampah plastik, agaknya pemerintah memang sudah harus mempercepat perbaikan sistem pengelolaannya.\n\nBerdasarkan penelitian yang dilakukan oleh Jenna R. Jambeck dari University of Georgia, pada tahun 2010 ada 275 juta ton sampah plastik yang dihasilkan di seluruh dunia. Sekitar 4,8-12,7 juta ton diantaranya terbuang dan mencemari laut.\n\nIndonesia memiliki populasi pesisir sebesar 187,2 juta yang setiap tahunnya menghasilkan 3,22 juta ton sampah plastik yang tak terkelola dengan baik. Sekitar 0,48-1,29 juta ton dari sampah plastik ',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Stack(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
