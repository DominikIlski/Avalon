import 'package:uuid/uuid.dart';
import 'Charakters/Charakter.dart';

class Player
{
  String playerID;
  String name;
  String ip;
  Charakter role;

  Player({this.name, this.ip})
  {
    var uuid = Uuid();
    playerID = uuid.v4();
  }

  set setRole(Charakter charakter)
  {
    this.role = charakter;
  }

  String get getRoleName
  {
    Type roleClass = role.runtimeType;

    return roleClass.toString();
  }
}