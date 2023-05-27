import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -0.96),
                    child: Text(
                      'Banyak sekali media atau berita yang membahas tentang banyak nya sampah\n di Indonesia',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 19,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.45),
                    child: Text(
                      'https://t.me/kompascomupdate\n\nArtikel ini telah tayang di Kompas.com dengan judul \"Masalah Sampah Indonesia Ancam Target Nol Emisi, Kok Bisa?\", Klik untuk baca: https://www.kompas.com/sains/read/2021/10/29/130000623/masalah-sampah-indonesia-ancam-target-nol-emisi-kok-bisa-?page=all.\nPenulis : Ellyvon Pranita\nEditor : Gloria Setyvani Putri\n\nKompascom+ baca berita tanpa iklan: https://kmp.im/plus6\nDownload aplikasi: https://kmp.im/app6',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
