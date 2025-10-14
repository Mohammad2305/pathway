String numberFormDate(int number){
  if(number<10){
    return "0$number";
  }
  else{
    return "$number";
  }
}

int textToInt(String number){
  if(number[0]=="0"){
    return int.tryParse(number)??0;
  }
  else{
    return int.tryParse(number)??0;
  }
}