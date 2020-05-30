import 'dart:math';

import '../charakter.dart';
///
class Aesir extends Charakter
{
  ///
  Aesir()
  {
    var aesirVersion = 1+ Random().nextInt(2);
    super.assetPath = 
      'lib/shared/Models/charekter_assets/aesir$aesirVersion.jpg';
  }
}