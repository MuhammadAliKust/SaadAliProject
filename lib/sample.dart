void main(){
  List<int> myList = [];

  print(myList);
  for(int i = 0;i<20;i++){
    if(i%2 == 0){
      myList.add(i);
    }
  }
  print(myList);
  for(int i = 0; i<myList.length; i++){
    if(myList[i]%5 == 0){
      print(myList[i]);
      myList.remove(myList[i]);
    }
  }

  print(myList);


}