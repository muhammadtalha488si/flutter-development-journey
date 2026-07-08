
import 'person.dart';

class Student extends Person{

  String? roll;
  int? marks;

  Student(String name,int age,this.roll,this.marks):super(name,age);

}
