
void mousePressed(){
  for(int i = 0; i < cBtn.length; i++){
     if(cBtn[i].mouseOver(mouseX, mouseY)){
     
       switch(i){
         case 0:
          if(minSat <maxSat){
           minSat ++;
         }
         break;
         case 1:
         if(minSat >0){
           minSat --;
         }
         break;
         case 2:
         if(maxSat < 99){
           maxSat ++;
         }
         break;
         case 3:
         if(maxSat > minSat){
         maxSat --;
         }
         break;
         case 4:
         if(minBr <maxBr){
           minBr ++;
         }
         break;
         case 5:
         if(minBr > 0){
         minBr --;
         }
         break;
         case 6:
         if(maxBr < 99){
           maxBr ++;
         }
         break;
         case 7:
         if(maxBr > minBr){
         maxBr --;
         }
         case 8:
          if(minAlpha <maxAlpha){
           minAlpha ++;
         }
         break;
         case 9:
         if(minAlpha >0){
           minAlpha --;
         }
         break;
         case 10:
         if(maxAlpha < 99){
           maxAlpha ++;
         }
         break;
         case 11:
         if(maxAlpha > minAlpha){
         maxAlpha --;
         }
         break;
         case 12:
         bC --;
         if(bC<0){
           bC = backC.length-1;   
         }
         break;
         case 13:
         bC++;
         if(bC >= backC.length){
         bC =0;
         }
       }
     }
  }
    for(int i = 0; i<input.length; i++){
    if(input[i].mouseOver(mouseX, mouseY)){
      input[i].activate(true);
      
    } else {
      input[i].activate(false);
    }
  }
}
void mouseClicked(){
  if(btn[0].mouseOver(mouseX, mouseY)){
    showMenu = !showMenu;
    println(input[0].vorne);
    savePreJSON();
  }
  /*
      if(input[0].mouseOver(mouseX, mouseY)){
      input[0].activate(true);
    }
*/  
// else { input[0].activate(false);}
  
  // for(int i = 0; i<input.length; i++){

    
    // }
}
