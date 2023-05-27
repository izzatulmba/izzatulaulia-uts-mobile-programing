import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'trending_model.dart';
export 'trending_model.dart';

class TrendingWidget extends StatefulWidget {
  const TrendingWidget({Key? key}) : super(key: key);

  @override
  _TrendingWidgetState createState() => _TrendingWidgetState();
}

class _TrendingWidgetState extends State<TrendingWidget> {
  late TrendingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrendingModel());
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
            '             Trending topik sampah\n                   di indonesia',
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
                children: [
                  Stack(
                    children: [],
                  ),
                  Text(
                    ' Permasalahan sampah di Indonesia seolah belum pernah terlihat ujungnya. Selain mencemari lingkungan, ternyata persoalan sampah juga mengancam target nol emisi.\n\nBerdasarkan data Indonesia National Plastic Action Partneship yang dirilis April 2020, sebanyak 67,2 juta ton sampah Indonesia masih menumpuk setiap tahunnya, dan 9 persennya atau sekitar 620 ribu ton masuk ke sungai, danau dan laut.\n\nDi Indonesia diperkirakan sebanyak 85.000 ton sampah dihasilkan per harinya, dengan perkiraan kenaikan jumlah mencapai 150.000 ton per hari pada tahun 2025. \n\nJumlah ini didominasi oleh sampah yang berasal dari rumah tangga, yang berkisar antara 60 hingga 75 persen',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                  Text(
                    'Ironisnya, penumpukan ini diperkirakan akan bertambah dua kali lipat pada tahun 2050. Kenaikan dua kali lipat ini sangat mungkin terjadi apabila tidak ada kebijakan tegas untuk sampah plastik yang berakibat pada pencemaran ekosistem dan lingkungan. Seperti diketahui, dampak dari persoalan sampah terhadap lingkungan ini sangatlah jelas. Mulai dari pencemaran laut, pencemaran sungai, menghambat proses air tanah, pencemaran tanah dan membuat air serta tanah menjadi tidak sehat bagi manusia dan makhluk hidup lainnya. Tidak hanya itu, saat sampah berada di darata dan kemudian dibakar, banyak yang tidak menyadarinya bahwa hal itu ternyata juga menimbulkan kerusakan lingkungan yang baru.\n\nArtikel ini telah tayang di Kompas.com dengan judul \"Masalah Sampah Indonesia Ancam Target Nol Emisi, Kok Bisa?\", Klik untuk baca: https://www.kompas.com/sains/read/2021/10/29/130000623/masalah-sampah-indonesia-ancam-target-nol-emisi-kok-bisa-?page=all.\nPenulis : Ellyvon Pranita\nEditor : Gloria Setyvani Putri\n\nKompascom+ baca berita tanpa iklan: https://kmp.im/plus6\nDownload aplikasi: https://kmp.im/app6',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
              Stack(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
