import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'profil_model.dart';
export 'profil_model.dart';

class ProfilWidget extends StatefulWidget {
  const ProfilWidget({Key? key}) : super(key: key);

  @override
  _ProfilWidgetState createState() => _ProfilWidgetState();
}

class _ProfilWidgetState extends State<ProfilWidget> {
  late ProfilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfilModel());
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Stack(
                  children: [],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.1, -1.01),
                child: Text(
                  'INDONESIA DARURAT \n   SAMPAH PLASTIK',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 25,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.25, -0.73),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/bola_dunia.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.9, -0.65),
                child: Text(
                  'Indonesia merupakan \npenghasil sampah plastik\n terbesar ke dua di dunia',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 19,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.14, 0.06),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/sampah.png',
                    width: 189,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.68, 0.05),
                child: Text(
                  'Sifat sampah plastik\n mudah terurai, proses \npengolahannya\n menimbulkan\n toksik dan bersifat\n karsinogenik\n ( zat yg menyebabkan \nkanker)',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 15,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.06, 0.94),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/bumi.jpg',
                    width: 189,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, 0.47),
                child: Text(
                  'AYO, KITA JADI\n SAHABAT BUMI !!!\n',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 19,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.88, 0.87),
                child: Text(
                  'Dengan mengurangi\n penggunaan plastik\n dan mendaur ulang\n sampah plastik dan\n sampah yg\n tidah mudah hancur\n lainnya',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 18,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
