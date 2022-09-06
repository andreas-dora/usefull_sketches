 
void keyPressed(){
  for(int i = 0; i<input.length; i++){
    String ablage;
    if(input[i].isActive){
      if((keyCode == 37)&&(input[i].vorne.length()>0)){
        int j = input[i].vorne.length()-1;    
        int k = input[i].vorne.length();
        ablage = input[i].vorne.substring(j, k);
        input[i].hinten =  ablage + input[i].hinten;
        input[i].vorne = input[i].vorne.substring(0, j);
        ablage = "";
      }
       if((keyCode == 39)&&(input[i].hinten.length()>0)){
         int j = input[i].hinten.length();    
        input[i].vorne = input[i].vorne + input[i].hinten.substring(0,1);
        input[i].hinten = input[i].hinten.substring(1,j);
      }
    if((keyCode == 9)|| (keyCode == 10)){
      int temp_v = int(input[i].vorne + input[i].hinten);}
    /*  if(temp_v <=.maxVal){
        input[i].update(temp_v);
        rgbMixer.slider[i].value_update(temp_v);   
        input[i].hinten = "";
        input[i].activate(false);
      } else {
        println("ERROR VALUE Must between 0 and " + input[i].max_val);
      } */
     if(keyCode == 9){
       if(i < input.length-1){
         i ++;
       } else {
         i = 0;
       }
       input[i].activate(true);
      }    
    }
    }
  }  
