import 'package:avalon/Models/Charakter/Aesir/Aesir.dart';
import 'package:avalon/Models/Charakter/Jotun/Jotun.dart';

class Odin extends Aesir
{
  List<Jotun> enemies;

  Odin()
  {
    enemies = new List<Jotun>();
  }
}