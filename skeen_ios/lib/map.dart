import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:imageclassification/info.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'location_service.dart';


class Map extends StatefulWidget {
  var data;

  Map({required this.data});
  @override
  _MapState createState() => _MapState(data: data);
}

class _MapState extends State<Map> {
  var data;
  _MapState({required this.data});
  
  final TextEditingController _searchController  = TextEditingController();
  Future<Position> _getGeoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  String location = 'Null, Press Button';

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(8.026808, 98.337384),
    zoom: 10,
    
  );

  
  // Future<void> _goToPlace(Map<String,dynamic> place) async{
  //   final double lat = place['geometry']['location']['lat'];
  //   final double lng = place['geometry']['location']['lng'];
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(
  //     CameraPosition(target: LatLng(lat,lng), zoom:12.0)
  //   ));
  // }

      
  final List<Marker> _markers = <Marker>[];
  final List<LatLng> _lastlang = [
    const LatLng(7.890828289173675, 98.30424716700671), //นาในคลินิกเวชกรรม
    const LatLng(
        7.8589980064878375, 98.34332155244294), //ปัญญรัตน์ คลินิกผิวหนัง
    const LatLng(7.872644500641676, 98.38317101727453), //Dr.Pat clinic
    const LatLng(
        7.879751, 98.383170), //Dr. Pichit Clinic (Dermatologist) Skin Care
    const LatLng(7.884574407095963, 98.38104562470512), // ทัศนีย์ คลืนิก
    const LatLng(7.8858513682320375, 98.38951855056735), // Veerakiat clinic
    const LatLng(7.886074781452594, 98.38967154559724), // คลินิกนายแพทย์จิตติ
    const LatLng(
        7.8865991648803035, 98.38591315459715), // หมอณรงค์ คลินิกโรคผิวหนัง
    const LatLng(7.896799719859757, 98.38377730910281), // โรงพยาบาลวชิระภูเก็ต
    const LatLng(7.902894652991893,
        98.37846178307254), //คลินิกเฉพาะทางผิวหนัง พญ.ภรภัทร์
    const LatLng(7.909958262465762, 98.34374939962555), //คลินิกผิวหนังกะทู้
    const LatLng(7.906873482056285, 98.37215545830979), //เดอมาสลิม คลินิก
    const LatLng(
        8.037389785624184, 98.33442820813163), //ถลางรวมแพทย์ thalangpolyclinic
  ];

  List<String> clinic = [
    "นาในคลินิกเวชกรรม",
    "ปัญญรัตน์ คลินิกผิวหนัง",
    "Dr.Pat clinic",
    "Dr. Pichit Clinic (Dermatologist) Skin Care",
    "ทัศนีย์ คลืนิก",
    "Veerakiat clinic",
    "คลินิกนายแพทย์จิตติ",
    "หมอณรงค์ คลินิกโรคผิวหนัง",
    "โรงพยาบาลวชิระภูเก็ต", //รักษามะเร็งได้
    "คลินิกเฉพาะทางผิวหนัง พญ.ภรภัทร์", //รักษามะเร็งได้
    "คลินิกผิวหนังกะทู้", //รักษามะเร็งได้
    "เดอมาสลิม คลินิก",
    "ถลางรวมแพทย์ thalangpolyclinic"
  ];

  final List<LatLng> _lastlang_cancer = [
    
    const LatLng(7.896799719859757, 98.38377730910281), // โรงพยาบาลวชิระภูเก็ต
    const LatLng(7.902894652991893,
        98.37846178307254), //คลินิกเฉพาะทางผิวหนัง พญ.ภรภัทร์
    const LatLng(7.909958262465762, 98.34374939962555), //คลินิกผิวหนังกะทู้
    
  ];
  List<String> clinic_cancer = [
    "โรงพยาบาลวชิระภูเก็ต", //รักษามะเร็งได้
    "คลินิกเฉพาะทางผิวหนัง พญ.ภรภัทร์", //รักษามะเร็งได้
    "คลินิกผิวหนังกะทู้", //รักษามะเร็งได้
  ];

  @override
  void initState() {
    super.initState();
    loadData();
  } 

  @override
  void dispose(){
    
    super.dispose();
  }

    bool check() {
    String a = data;
    if (a == 'Melanocytic nevi (nv)') {
      return false;
    } else if (a == 'Melanoma (mel)') {
      return true;
    } else if (a == 'Benign keratosis-like lesions (bkl)') {
      return false;
    } else if (a == 'Basal cell carcinoma (bcc)') {
      return true;
    } else if (a == 'Actinic keratoses (akiec)') {
      return false;
    } else if (a == 'Vascular lesions (vasc)') {
      return false;
    } else {
      //Dermatofibroma (df)
      return false;
    }
  }

  loadData() {
    bool a = check();
    if(a){ 
    for (int i = 0; i < _lastlang_cancer.length; i++) {
      _markers.add(Marker(
          markerId: MarkerId(i.toString()),
          infoWindow: InfoWindow(title: clinic_cancer[i],
          //snippet: 'Hello',
          ),
          icon: BitmapDescriptor.defaultMarker,
          position: _lastlang[i],
          onTap: () {
                      
          }));
    }
    }
    else{
      for (int i = 0; i < _lastlang.length; i++) {
      _markers.add(Marker(
          markerId: MarkerId(i.toString()),
          infoWindow: InfoWindow(title: clinic[i],
          //snippet: 'Hello',
          ),
          icon: BitmapDescriptor.defaultMarker,
          position: _lastlang[i],
          onTap: () {
                      
          }));
    }
    
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 500,
      child: GoogleMap(
          //mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          // initialCameraPosition: CameraPosition(
          //   target: LatLng(...),
          //   zoom: 14.4746,
          //),
          markers: Set<Marker>.of(_markers),
           
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
          myLocationEnabled: true,
        ),
    );
  }
}
