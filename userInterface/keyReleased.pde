void keyReleased(){
  if((int(key) > 32)&&(int(key) <300)){
 /*   String myStr =str(key);
    int fontSize = (int)random(minFSize,maxFSize);
    float xPos = random(-fontSize/2,width+fontSize/2);
    float yPos = random(-fontSize/2, height+fontSize/2);
    float myAngle = random(0,TWO_PI);
    int myAlpha = (int)random(minAlpha,maxAlpha); 
    */
  //  tFr.add(new TextFrame(myStr,fontSize, xPos, yPos, myAngle, myAlpha));
 //   println(tFr.size());  
  }
    if(int(key) == 16){
  //  saveFrame(savePath + fileDate + "randomChars-######."+saveFormat);
  }
/*  if((int(key) == 26)&&(tFr.size()>=1)){  
    int z = tFr.size()-1;
    tFr.remove(z);
  } 
  if((int(key) == 14)&&(tFr.size()>=1)){  
     for(int i = tFr.size()-1; i>= 0; i--){
       tFr.remove(i);
     }    
  } */
  if(int(key) == 8){
    showMenu = true;
  }
}
