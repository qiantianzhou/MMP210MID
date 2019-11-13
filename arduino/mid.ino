

void setup(){
  pinMode(10, OUTPUT);  //blue led
  pinMode(11, OUTPUT);  //red led
  pinMode(12, OUTPUT);  //yellow led


  Serial.begin(9600);
}


void loop(){



  if(Serial.available()){

    char val = Serial.read();

    if(val == 'r'){
      
      digitalWrite(11,HIGH); //turn on red led
    }



    
    if(val == 'b'){
      
      digitalWrite(10,HIGH); //turn on blue led
    }
    if(val == 'y'){
      
      digitalWrite(12,HIGH); //turn on yellow led
    }

    
    if(val == 'c'){

      digitalWrite(11,LOW); // turn off red led
    }

    if(val == 'v'){

      digitalWrite(10,LOW); // turn off blue led
    }
    if(val == 'z'){

      digitalWrite(12,LOW); // turn off yellow led
    }

    if(val == 'f'){
      
      digitalWrite(10,LOW); 
      digitalWrite(11,LOW); 
      digitalWrite(12,LOW);  // turn off all the led

    }

    if(val == 'O'){
      
      digitalWrite(10,HIGH); 
      digitalWrite(11,HIGH); 
      digitalWrite(12,HIGH); // turn on all the led

    }
  }
}
