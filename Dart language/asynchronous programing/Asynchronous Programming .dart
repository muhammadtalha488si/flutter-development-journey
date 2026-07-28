
// Future exaple 
/*
void main(){
  fetchdata();
}

void fetchdata(){
  print("fetching data.....");
  getdata().then((value){
    print('value');
  });
  print('other operation.....');
}
Future<String>getdata()async{
  await Future.delayed(Duration(seconds:5));
 return 'fetched data'; 
}    */

// Stream example

void main(){
  fetchdata();
}

void fetchdata(){
  print("fetching data.....");
  getdata().listen((value){
    print(value);
  });
  print('other operation.....');
}
Stream<int>getdata()async*{
  for(int x=1;x<=10;x++){
  await Future.delayed(Duration(seconds:3));
 yield x;
  }
}  

