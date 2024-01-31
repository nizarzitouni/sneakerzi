import 'package:sneakers_shop/controllers/products_controller.dart';

ProductsController productsCTR = ProductsController.instance;

class AssetsConstants {
  static const String _assetImagePath = 'assets/images/';
  static const String _assetIconPath = 'assets/icons/';
  static const String _assetSvgPath = 'assets/svgs/';
  static const String _assetSoundPath = 'assets/sounds/';

  static const String _png = '.png';
  static const String _svg = '.svg';
  static const String _jpg = '.jpj';

//~~~~~~~~~~~~~~Images~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  static const String logoImg = '${_assetImagePath}peak$_png';
  static const String airJorden1Img = '${_assetImagePath}air_jorden_01$_png';
  static const String airJorden2Img = '${_assetImagePath}air_jorden_02$_png';
  static const String airJorden3Img = '${_assetImagePath}air_jorden_03$_png';
  static const String airJorden4Img = '${_assetImagePath}air_jorden_04$_png';
//~~~~~~~~~~~~~~Icons~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static const String appDrawerImageIcon = '${_assetIconPath}app_drawer$_png';
//~~~~~~~~~~~~~~SVGS~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// static const String addClientSvg = '${_assetSvgPath}add_client$_svg';

//~~~~~~~~~~~~~~Audio~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  // static const String localSound = '${_assetSoundPath}ccc.mp3';
}

class StringConstatns {
  static const youtubeApiKey = "";
  static const vidoId = "";

  static const String vidAuthor = "";
  static const String vidDuration = "";
  static const String vidTitle = "";
  static const String vidThumbnail = "";
}
