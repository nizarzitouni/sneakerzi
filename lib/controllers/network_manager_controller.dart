// import 'dart:async';

// import 'package:flutter/foundation.dart';

// import 'audio_controller.dart';
// import '../core/constants.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';

// class NetworkManagerController extends GetxController {
//   static NetworkManagerController instance = Get.find();
//   final audioCTR = Get.find<AudioController>();

//   //this variable 0 = No Internet, 1 = connected to WIFI ,2 = connected to Mobile Data.
//   RxInt connectionType = 0.obs;
//   //Instance of Flutter Connectivity
//   final Connectivity _connectivity = Connectivity();
//   //Stream to keep listening to network change state
//   late StreamSubscription _streamSubscription;
//   @override
//   void onInit() {
//     super.onInit();
//     getConnectionType();
//     _streamSubscription = _connectivity.onConnectivityChanged.listen(_updateState);
//   }

//   // a method to get which connection result, if you we connected to internet or no if yes then which network
//   Future<void> getConnectionType() async {
//     ConnectivityResult connectivityResult = ConnectivityResult.none;
//     try {
//       connectivityResult = await (_connectivity.checkConnectivity());
//     } on PlatformException catch (e) {
//       if (kDebugMode) {
//         print(e);
//       }
//     }
//     return _updateState(connectivityResult);
//   }

//   // state update, of network, if you are connected to WIFI connectionType will get set to 1,
//   // and update the state to the consumer of that variable.
//   void _updateState(ConnectivityResult result) {
//     switch (result) {
//       case ConnectivityResult.wifi:
//         connectionType.value = 1;
//         homeController.audioPlayer.play();
//         audioCTR.audioPlayer.play();
//         // update();
//         break;
//       case ConnectivityResult.mobile:
//         connectionType.value = 2;
//         homeController.audioPlayer.play();
//         audioCTR.audioPlayer.play();
//         // update();
//         break;
//       case ConnectivityResult.none:
//         connectionType.value = 0;
//         homeController.audioPlayer.stop();
//         audioCTR.audioPlayer.stop();
//         // update();
//         break;
//       default:
//         Get.snackbar('Network Error', 'Failed to get Network Status');
//         break;
//     }
//   }

//   @override
//   void onClose() {
//     //stop listening to network state when app is closed
//     _streamSubscription.cancel();
//   }
// }
