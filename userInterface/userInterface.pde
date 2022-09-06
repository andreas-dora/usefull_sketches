color[] backC ={#000000, #034f67, #e6e1dc, #77212e, #373434, #9B2335, #f9423a, #4244b6,#a6966c,#3e3d3d,#f0e68c};

boolean help;
PFont mainFont;
PFont courier;
PFont dings;

int offset = 8;
int helpX;
float menuX = 0.0;
float menuW;

float menuRow, mW, m3rd, m6th;
float mRow1, mRow2, mRow3, mRow4, mRow5; 

float longSide;

int mySatur;
int myBright;

boolean showMenu = true;

// ###########################################
// ###########################################
// ###########################################

JSONObject preSet;
JSONObject fontSet;
JSONObject colorSet;
String savePath = "";
String fString ="";
String sampleStr="";
int fSize; 

float minFSize,maxFSize;
boolean isRandom = true;
int minSat, maxSat;
int minBr, maxBr; 
int minAlpha, maxAlpha;
int bC;

Btn[] btn= new Btn[1];
Btn[] cBtn = new Btn[14];
Input[] input = new Input[2];

// ###########################################
// ###########################################
// ###########################################

void setup(){
  fullScreen();
  pixelDensity(2); // nutz die Höhere Pixeldichte von Displays 
  loadPreJSON();
  

  mainFont = createFont(fString,fSize);
  
  println(fString + maxFSize);
  
  
  courier = createFont("Courier",100);
  
 // dings = createFont("Wingdings3",200);

  textAlign(CENTER,CENTER);
  colorMode(HSB,359,99,99,99);
  if(width > height){
    longSide = width;
  } else {
    longSide = height;
  }
  


  menuW = width/3;
  mW = menuW - offset*2;
  m3rd = (mW - (offset*2))/3;
  m6th = (m3rd-offset)/2;
  menuRow  = (height-2 *offset)/6;
  mRow1 = offset;
  mRow4 = menuRow*4+offset;
  mRow5 = menuRow*5+offset;
  println("menuW: " + menuW + "    menuRow: " + menuRow); 
  input[0] =new Input(fString, offset*2, 40, 260, 34);
    input[1] =new Input(sampleStr, offset*2, 180, 350, 140);

  btn[0] = new Btn("x", menuX + 440, 8, 40,26);
  cBtn[0] = new Btn("+",14, 642, 60,24); // minSat +
  cBtn[1] = new Btn("-",14, 720, 60,24);// minSat -
  cBtn[2] = new Btn("+",92, 642, 60,24); // maxSat +
  cBtn[3] = new Btn("-",92, 720, 60,24); // maxSat -
 
  cBtn[4] = new Btn("+",170, 642, 60,24); // minBr +
  cBtn[5] = new Btn("-",170, 720, 60,24);// minBr -
  cBtn[6] = new Btn("+",250, 642, 60,24); // maxBr +
  cBtn[7] = new Btn("-",250, 720, 60,24); // maxBr -
  
  cBtn[8] = new Btn("+",328, 642, 60,24); // minBr +
  cBtn[9] = new Btn("-",328, 720, 60,24);// minBr -
  cBtn[10] = new Btn("6",406, 642, 60,24); // maxBr +
  cBtn[11] = new Btn("7",406, 720, 60,24); // maxBr -
  
 cBtn[12] = new Btn("-",14, 790, 60,24); // minSat +  
 cBtn[13] = new Btn("+",92, 790, 60,24);// minSat -

 helpX = 0;  

 showMenu = true;
}


/* ###################################################*/
/* ###################################################*/
/* ###################################################*/

void draw(){
  background(backC[bC]);
  textFont(mainFont,fSize);
 // textAlign(CENTER,CENTER);
  fill(backC[6]);
 
    textAlign(LEFT,BASELINE);
      text("sampleStr: \n" + sampleStr,width/3+80,80,800,800);

  rectMode(CORNER);
  

  
  
  fill(#A0A0A0,78);
  rect(menuX, offset, menuW, height-2*offset);
  
  fill(#000000,70);
 // rect(menuX +offset*2,200,66,40);
  fill(#ffffff);
 // rect(menuX +offset*2,200,60,34);
  rect(menuX +offset*2,234,60,40);
  rect(menuX +offset*2,274,60,34);
  
  fill(backC[3]);
 
  textFont(courier,30);
  text(str(minAlpha),menuX +offset*2,234,60,40);


for(int i = 0; i < 6; i++){
  rect(menuX+offset, offset+i*((height - 2*offset)/6), menuW-2*offset,(height - 2*offset)/6);
  }
  fill(#47B498,80);
  rect(menuX+offset,mRow4,mW,menuRow);
   
  fill(#3C0067);
   rect(menuX+offset,mRow5,mW,menuRow);
  rect(menuX+offset,offset,mW,menuRow);
  rect(menuX+offset,mRow4,m3rd,menuRow);
  rect(menuX+2*offset+m3rd,mRow4,m3rd,menuRow);
  rect(menuX+3*offset+m3rd*2,mRow4,m3rd,menuRow);
  fill(#2F0150);
  rect(menuX+offset,mRow4+24,m6th,menuRow-24);
  rect(menuX+2*offset+m6th,mRow4+24,m6th,menuRow-24);
 
  textFont(courier,16);
  fill(#F7B200);
  textAlign(LEFT,TOP);
  text("Main Font",menuX+offset*2,offset*2);
  textAlign(CENTER,CENTER);
  text("SATURATION",menuX+offset+m3rd/2,mRow4+offset/2);
  text("min",menuX+2*offset+(m6th-offset)/2,mRow4+26);
  text("max",menuX+2*offset+(m6th)*1.5,mRow4+26);

  text("Brightnes",menuX+offset*2+m3rd*1.5,mRow4+offset/2);
  text("min",menuX+2*offset+m3rd*1.5-(m6th-offset)/2,mRow4+26);
    text("max",menuX+2*offset+m3rd*1.5+m6th/2,mRow4+26);

  text("Alpha",menuX+offset*2+m3rd*2.5,mRow4+offset/2);
  text("min",menuX+2*offset+m3rd*2.5-(m6th-offset)/2,mRow4+26);
  text("max",menuX+2*offset+m3rd*2.5+m6th/2,mRow4+26);

  text("BACKGROUND",menuX+offset+m3rd/2,770);

textAlign(CENTER,TOP);
  textFont(courier,34);
  text(minSat,menuX+30,678);
  text(maxSat,menuX+120,678);
  text(minBr,menuX+200,678);
  text(maxBr,menuX+280,678);
  text(minAlpha,menuX+350,678);
  text(maxAlpha,menuX+430,678);
  


 for(int i =0; i <btn.length; i++){
   btn[i].display(mouseX,mouseY);
   }

 for(int i =0; i <cBtn.length; i++){
   cBtn[i].display(mouseX,mouseY);
   }     
   
 for(int i = 0; i < input.length;i++){
   input[i].display(mouseX,mouseY);
 }  
     
  textFont(courier,40);
  fill(#000000);
  text("mouseX: " + mouseX,1100,30);
   text("mouseY: " + mouseY,1100,90);

  if(!showMenu){
    if(menuX > -500){
      menuX-=4  ;
    }
  } else if(showMenu){
    if(menuX < 0){
      menuX+=10;
      
    } else { menuX =0;
    }
  }

}


/* ###################################################*/
/* ###################################################*/
/* ###################################################*/
