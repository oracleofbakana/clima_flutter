import 'package:geolocator/geolocator.dart';

class Location{
  double latitude;
  double longitude;


  // ignore: missing_return
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
       longitude =  position.longitude;
       latitude = position.latitude;

    }
    catch(e){
      print(e);
    }
  }


}