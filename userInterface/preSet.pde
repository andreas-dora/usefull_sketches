void loadPreJSON(){

  preSet = loadJSONObject("data/charRotoPre.json"); //.getJSONObject("presets");
  savePath = preSet.getString("savePath");
  fontSet = preSet.getJSONObject("fontSet");
 
  colorSet = preSet.getJSONObject("colorSet").getJSONObject("randomCSet");
  
  
  fString = fontSet.getString("fontname");
  fSize = fontSet.getInt("size"); 
  minFSize = fontSet.getInt("minFSize"); 
  maxFSize = fontSet.getInt("maxFSize"); 
  sampleStr = fontSet.getString("sampleStr");
  
  minSat = colorSet.getInt("minSat");
  maxSat = colorSet.getInt("maxSat");
  minBr = colorSet.getInt("minBr"); 
  maxBr= colorSet.getInt("maxBr");
  minAlpha = colorSet.getInt("minAlpha");
  maxAlpha = colorSet.getInt("maxAlpha");
  
  bC = colorSet.getInt("backC");
}


void savePreJSON(){
 
  fontSet.setString("fontname",input[0].vorne);
 //  fontSet.setString("sampleStr",input[1].vorne);
 fontSet.setInt("size",74); 
//  fontSet.setInt("minFSize",(int)minFSize); 
//  fontSet.setInt("maxFSize",(int)maxFSize); 
 
 // fontSet.setString("sampleStr","Fuchs ist müde"); 
  
  colorSet.setInt("minSat",minSat);
  colorSet.setInt("maxSat",maxSat);
  colorSet.setInt("minBr",minBr); 
  colorSet.setInt("maxBr",maxBr);
  colorSet.setInt("minAlpha",minAlpha);
  colorSet.setInt("maxAlpha",maxAlpha); 
  
  colorSet.setInt("backC", bC);
  
  saveJSONObject(preSet, "data/charRotoPre.json");
}
