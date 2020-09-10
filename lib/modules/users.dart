library users;

import 'package:users/farm.dart';

abstract class  User {
  String firstName;
  String lastName;
  String userName;
  String address;
  String pickupAddress;
  DateTime accountCreated;

  User()
  {
    firstName="";
    lastName="";
    address="";
    pickupAddress="";
    accountCreated= DateTime.now();
  }
  User.detailedConstructor(String firstName,String lastName,String address ,String pickupAddress)
  {
    this.firstName=firstName;
    this.lastName=lastName;
    this.address=address;
    this.pickupAddress=pickupAddress;
  }
  set modifyUserName(String userName)
  {
    this.userName=userName;
  }
}

class Admin extends User{

}
class Farmer extends User
{
  Farm farm;
  Farmer()
  {
    farm=null;
  }
  Farmer.detailedConstructored(String firstName,String lastName,String address ,String pickupAddress,String farmName)
  {

  }
}
