// // ignore_for_file: constant_identifier_names

// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';


// const LatLng SOURCE_LOCATION = LatLng(42.7477863, -71.1699932);
// const LatLng DEST_LOCATION = LatLng(42.6871386, -71.2143403);
// const double CAMERA_ZOOM = 16;
// const double CAMERA_TILT = 80;
// const double CAMERA_BEARING = 30;

// class MapPage extends StatefulWidget {
//   const MapPage({super.key});

//   @override
//   State<MapPage> createState() => _MapPageState();
// }

// class _MapPageState extends State<MapPage> {
//   final Completer<GoogleMapController> _controller = Completer();
//   late BitmapDescriptor _sourceIcon;
//   late BitmapDescriptor _destinationIcon;

//   final Set<Marker> _markers = <Marker>{};

//   late LatLng currentLocation;
//   late LatLng destinationLocation;

//   @override
//   void initState() {
//     super.initState();
//     setInitialLocation();

//     setSourceAndDestinationIcons();
//   }

//   void setSourceAndDestinationIcons() async {
//     _sourceIcon = await BitmapDescriptor.fromAssetImage(
//         const ImageConfiguration(devicePixelRatio: 2.5),
//         'assets/images/driving_pin.png');
//     _destinationIcon = await BitmapDescriptor.fromAssetImage(
//         const ImageConfiguration(devicePixelRatio: 2.5),
//         'assets/images/destination_map_marker.png');
//   }

//   void setInitialLocation(){
//     currentLocation = LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);
//     destinationLocation = LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
//   }

  

//   @override
//   Widget build(BuildContext context) {

//     CameraPosition initialCameraPosition = const CameraPosition(
//       zoom: CAMERA_ZOOM,
//       tilt: CAMERA_TILT,
//       bearing: CAMERA_BEARING,
//       target: SOURCE_LOCATION,
//     );

//     return  Scaffold(
//       body: Container(
//         child: GoogleMap(myLocationButtonEnabled: true,
//           compassEnabled: true,
//           tiltGesturesEnabled: false,
//           markers: _markers,
//           mapType: MapType.normal,
//           initialCameraPosition: initialCameraPosition,
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);

//           },
//         ),
//       ),
//     );
//   }
// }
