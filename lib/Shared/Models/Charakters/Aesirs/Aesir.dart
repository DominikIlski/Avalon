import 'dart:math';

import '../Charakter.dart';

///
class Aesir extends Character
{
  ///
  Aesir()
  {
    var aesirVersion = 1+ Random().nextInt(2);
    super.assetPath = 
      'lib/shared/Models/charekter_assets/aesir$aesirVersion.jpg';
  }
}