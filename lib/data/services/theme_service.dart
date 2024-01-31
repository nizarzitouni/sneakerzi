// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// // A class to manage the app's theme
// class ThemeService {
//   // Initializing GetStorage instance to store the theme mode
//   final _getStorage = GetStorage();
//   // A key to identify the stored theme mode
//   final _storageKey = 'ThemeMode';
//   // A static instance of the class, following the Singleton pattern
//   static ThemeService instance = ThemeService._();

//   // Private constructor to prevent multiple instances of the class
//   ThemeService._();

//   // A setter to change the app's theme mode and store it in GetStorage
//   set themeMode(ThemeMode themeMode) {
//     // If the selected theme mode is system default, remove the stored theme mode
//     if (themeMode == ThemeMode.system) {
//       _getStorage.remove(_storageKey);
//     } else {
//       // Otherwise, store the selected theme mode as boolean value (true for dark, false for light)
//       _getStorage.write(_storageKey, themeMode == ThemeMode.dark);
//     }
//     // Change the app's theme mode using the GetX library
//     Get.changeThemeMode(themeMode);
//   }

//   // A getter to retrieve the stored theme mode from GetStorage
//   ThemeMode get themeMode {
//     switch (_getStorage.read(_storageKey)) {
//       // If the stored theme mode is true, return ThemeMode.dark
//       case true:
//         return ThemeMode.dark;
//       // If the stored theme mode is false, return ThemeMode.light
//       case false:
//         return ThemeMode.light;
//       // If there is no stored theme mode, return ThemeMode.system (default)
//       default:
//         return ThemeMode.system;
//     }
//   }
// }
