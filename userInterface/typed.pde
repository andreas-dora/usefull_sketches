void keyTyped(){
  for(int i = 0; i<input.length; i++){
    String ablage;
    if(input[i].isActive){
      if((int(key) == 8)&&(input[i].vorne.length()>0)){ // ------------------ BACKSPACE
     //   rgb_mode = true;       
        int j = input[i].vorne.length()-1;    
        ablage = input[i].vorne.substring(0,j);
        input[i].vorne = ablage;
        ablage = "";
      } else if((int(key) != 8)&& (input[i].vorne.length()<300)){
        input[i].vorne = input[i].vorne + key;
        input[i].valueString =  input[i].vorne + input[i].hinten;
        input[i].hinten = "";
        
      } 
    }
  }
}
