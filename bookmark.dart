import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'bookmark_model.dart';
export 'bookmark_model.dart';

class BookmarkWidget extends StatefulWidget {
  const BookmarkWidget({Key? key}) : super(key: key);

  @override
  _BookmarkWidgetState createState() => _BookmarkWidgetState();
}

class _BookmarkWidgetState extends State<BookmarkWidget> {
  late BookmarkModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookmarkModel());
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
          title: Text(
            '        Bookmark tentang sampah\n                di indonesia',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              Stack(
                children: [
                  Text(
                    'Pendekatan ‘kumpul-angkut-buang’ yang diterapkan selama ini di Indonesia, telah mengakibatkan seluruh sampah terpusat di Tempat Pembuangan Akhir (TPA) sampah.\n\nIronisnya, TPAS yang sejatinya menjadi lokasi pengolahan sampah akhir secara berwawasan lingkungan, pelaksanaannya saat ini masih jauh panggang dari api. Hampir semua TPAS yang terdapat di Kabupaten/ Kota seluruh Indonesia, lebih layak disebut sebagai tempat penimbunan akhir sampah (TPA, Red) daripada tempat pengolahan sampah akhir sampah (TPAS).\n\nAkibatnya sampah semakin menumpuk di TPAS, bahkan menggunung.\n\n \n\nTimbulah berbagai dampak negatif terhadap lingkungan hidup, baik berupa bau tidak sedap, pencemaran tanah oleh limbah cair sampah akibat air lindi, dan menimbulkan emisi gas rumah kaca berupa gas Metana dari timbunan sampah organik, serta sumber penyebaran penyakit. Bahkan, sampai mengakibatkan kerusuhan sosial yang menimbulkan korban jiwa, seperti yang pernah terjadi di Bojong Jawa Barat.',
                    style: FlutterFlowTheme.of(context).bodyMedium,
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
