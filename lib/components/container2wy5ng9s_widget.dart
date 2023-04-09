import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'container2wy5ng9s_model.dart';
export 'container2wy5ng9s_model.dart';

class Container2wy5ng9sWidget extends StatefulWidget {
  const Container2wy5ng9sWidget({
    Key? key,
    this.location,
  }) : super(key: key);

  final LatLng? location;

  @override
  _Container2wy5ng9sWidgetState createState() =>
      _Container2wy5ng9sWidgetState();
}

class _Container2wy5ng9sWidgetState extends State<Container2wy5ng9sWidget> {
  late Container2wy5ng9sModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Container2wy5ng9sModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(builder: (context) {
      final _googleMapMarker = widget.location;
      return FlutterFlowGoogleMap(
        controller: _model.googleMapsController,
        onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
        initialLocation: _model.googleMapsCenter ??= widget.location!,
        markers: [
          if (_googleMapMarker != null)
            FlutterFlowMarker(
              _googleMapMarker.serialize(),
              _googleMapMarker,
            ),
        ],
        markerColor: GoogleMarkerColor.red,
        mapType: MapType.normal,
        style: GoogleMapStyle.silver,
        initialZoom: 14.0,
        allowInteraction: false,
        allowZoom: true,
        showZoomControls: false,
        showLocation: false,
        showCompass: false,
        showMapToolbar: false,
        showTraffic: false,
        centerMapOnMarkerTap: true,
      );
    });
  }
}
