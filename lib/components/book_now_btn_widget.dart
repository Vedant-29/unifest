import '/backend/backend.dart';
import '/components/info_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'book_now_btn_model.dart';
export 'book_now_btn_model.dart';

class BookNowBtnWidget extends StatefulWidget {
  const BookNowBtnWidget({
    Key? key,
    this.parameter1,
  }) : super(key: key);

  final ExpandedCardRecord? parameter1;

  @override
  _BookNowBtnWidgetState createState() => _BookNowBtnWidgetState();
}

class _BookNowBtnWidgetState extends State<BookNowBtnWidget> {
  late BookNowBtnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookNowBtnModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.13, 1.31),
      child: FFButtonWidget(
        onPressed: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.viewInsetsOf(context),
                child: InfoCardWidget(
                  infoExpand: widget.parameter1!,
                ),
              );
            },
          ).then((value) => safeSetState(() {}));
        },
        text: 'INFO',
        options: FFButtonOptions(
          width: MediaQuery.sizeOf(context).width * 0.15,
          height: 28.0,
          padding: EdgeInsets.all(0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).primaryBackground,
          textStyle: FlutterFlowTheme.of(context).labelSmall.override(
                fontFamily: 'Readex Pro',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
