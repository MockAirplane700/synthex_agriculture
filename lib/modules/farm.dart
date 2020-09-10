class Farm
{
  String name;
  String address;
  String information;
  String photoPath;
  Farm()
  {
    name="";
    address="";
    information="";
  }
  Farm.detailed(String name,String address, String information)
  {
    this.name=name;
    this.address=address;
    this.information=information;
  }
  String get farmName
  {
    return name;
  }

  String get farmAddress
  {
    return address;
  }

  String get farmInfo
  {
    return information;
  }
   set changeFarmName( String name)
  {
    this.name=name;
  }
}