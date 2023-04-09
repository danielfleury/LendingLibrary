import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'container_kmhkz2mm_model.dart';
export 'container_kmhkz2mm_model.dart';

class ContainerKmhkz2mmWidget extends StatefulWidget {
  const ContainerKmhkz2mmWidget({
    Key? key,
    this.location,
  }) : super(key: key);

  final LatLng? location;

  @override
  _ContainerKmhkz2mmWidgetState createState() =>
      _ContainerKmhkz2mmWidgetState();
}

class _ContainerKmhkz2mmWidgetState extends State<ContainerKmhkz2mmWidget> {
  late ContainerKmhkz2mmModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContainerKmhkz2mmModel());

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
        showZoomControls: true,
        showLocation: false,
        showCompass: false,
        showMapToolbar: false,
        showTraffic: false,
        centerMapOnMarkerTap: true,
      );
    });
  }
}
