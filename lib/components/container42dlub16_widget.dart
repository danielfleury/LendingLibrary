import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'container42dlub16_model.dart';
export 'container42dlub16_model.dart';

class Container42dlub16Widget extends StatefulWidget {
  const Container42dlub16Widget({
    Key? key,
    this.location,
  }) : super(key: key);

  final LatLng? location;

  @override
  _Container42dlub16WidgetState createState() =>
      _Container42dlub16WidgetState();
}

class _Container42dlub16WidgetState extends State<Container42dlub16Widget> {
  late Container42dlub16Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Container42dlub16Model());

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
        markerColor: GoogleMarkerColor.violet,
        mapType: MapType.normal,
        style: GoogleMapStyle.silver,
        initialZoom: 14.0,
        allowInteraction: false,
        allowZoom: false,
        showZoomControls: false,
        showLocation: false,
        showCompass: false,
        showMapToolbar: false,
        showTraffic: false,
        centerMapOnMarkerTap: false,
      );
    });
  }
}
