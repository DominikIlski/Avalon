import 'package:uuid/uuid.dart';

import 'Characters/Character.dart';

class Player
{
  String playerID;
  String name;
  String ip;
  Character role;

  Player({this.name, this.ip})
  {
    var uuid = Uuid();
    playerID = uuid.v4();
  }

  set setRole(Character Character)
  {
    this.role = Character;
  }

  String get getRoleName
  {
    Type roleClass = role.runtimeType;

    return roleClass.toString();
  }
}