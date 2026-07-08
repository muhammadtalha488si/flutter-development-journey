//Encapsulation concept
//how we sue getter and setter
/*
class Person {
 late String _name;
 late int _age;
 late String _country;
  set setName(String name) => _name=name;
  set setAge(int age )=>_age=age;
   set setCountry(String country)=>_country=country;

 String get getName => _name;
 int get getAge=> _age;
 String get getCountry=>_country;
}
       */

class Person {
  String? name;
  int? age;

  Person(this.name,this.age);

}