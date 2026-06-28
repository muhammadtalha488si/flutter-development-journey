
   void main(){

  //for string

  String name = 'talha khan';
  String city = 'sakhakot';
  int age=21;

  print('name:$name    city:$city     age:$age');
   }

  // boolyan its mean true or false

  /*
  void main(){
  bool male =true;
  bool femal= false;

  print(femal); 
  print(male);
  }
  */

  // for constant value
  //it creat error 
/*
void main(){
  const a=100;
  a=199;
  print(a);
  }
  */

 //if we have no idea about data typ so we use (var)key word
 //if we wana show data typ so we use (runtimrType)it words under the print and it give data typ

 /*
 void main(){
  var x=10;
  var name='talha';
  var male=true;
  print(x.runtimeType);
  }
  */

  //if we wana change value and also change data typ so we use (dynamic)key world
 //we chanhe a int typ to string

 /*
 void main(){
  dynamic x=120;
  x='abc';
  print(x);
  }
   */

  //we use a keyword (list)for collection of data typ
/*
void main(){
  List<int> x =[1,2,3,4,5];
  List<String> name=['name 1' 'name 2' 'name3'];
  print(x);
  print(name);
}        
*/
//use of operator
//we use + operator

/*
void main(){
 int value= add(10,20);
 print(value);
}

int add(int a,int b ){
  int result=a+b;
  return result;
}
*/

//if and ifelse atatment
/*
void main(){
  int x=15;
  int z=20;

  if(x<z){
    print("true");
  }
     if(x<=z){
      print("false");
    }
}*/

//for loop
/*
void main(){
  for( int x=1;x<25;x++){
  print(x);
}
}*/

//while loop
/*
void main(){
  double x=1.3;

  do{
    print(x);
    x++;
  }
  while(x<9);
  }
    */

   //loops in list
   /*
    void main(){
      List<int> abc=[1,2,3,4,5,6,7,8,9,123,456,789];
    for(int x=0;x<12;x++){
      print(abc[x]);
    }
    }    */
