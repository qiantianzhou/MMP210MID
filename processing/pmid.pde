import controlP5.*;
import processing.serial.*;

//Serial port;

ControlP5 cp5;

Serial myPort;

void setup(){
  
  size(800,300);
  
  println(Serial.list());
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600);
  
  
  //portName = Serial.list()[2];
  //printArray(Serial.list());
  //port = new Serial(this,"0",9600);     // 111111111
  
  
  cp5 = new ControlP5(this);
  //font = createFont("calibri light", 20);
  
  cp5.addButton("redon")
     .setPosition(100,50)
     .setSize(100,70)
     //.setFont(font)
     ;
  cp5.addButton("redoff")
     .setPosition(100,150)
     .setSize(100,70)
     //.setFont(font)
     ;
   
   cp5.addButton("yellowon")
     .setPosition(250,50)
     .setSize(100,70)
     //.setFont(font)
     ; 
   cp5.addButton("yellowoff")
     .setPosition(250,150)
     .setSize(100,70)
     //.setFont(font)
     ; 
  
  cp5.addButton("blueon")
     .setPosition(400,50)
     .setSize(100,70)
     //.setFont(font)
     ;
  cp5.addButton("blueoff")
     .setPosition(400,150)
     .setSize(100,70)
     //.setFont(font)
     ;
   
     
     
  cp5.addButton("alloff")
     .setPosition(550,50)
     .setSize(100,70)
     //.setFont(font)
     ;
     
  cp5.addButton("allon")
     .setPosition(550,150)
     .setSize(100,70)
     //.setFont(font)
     ;
     

}

void draw(){
  
  background(80, 116, 235);
  fill(0,255,0);
  //textFont(font);
  text("CONTRIL", 100, 30);

}

void redon(){
  myPort.write('r');
}
void blueon(){
  myPort.write('b');
}
void yellowon(){
  myPort.write('y');
}
void alloff(){
  myPort.write('f');
}
void redoff(){
  myPort.write('c');
}
void blueoff(){
  myPort.write('v');
}
void yellowoff(){
  myPort.write('z');
}
void allon(){
  myPort.write('O');
}
