
#include "HX711.h"
#include "SdFat.h"
#include <Wire.h> //5%
#include <LiquidCrystal_I2C.h> //5%
const int DOUT=2;
const int CLK=3;
//Crear el objeto lcd  dirección  0x3F y 16 columnas x 2 filas
LiquidCrystal_I2C lcd(0x27,16,2);  // 5%
////// SD//////
 SdFat SD;
//String data_file=;
const uint8_t bot_review=7;
const uint8_t bot_delete=8;
/////////sonido///////////
uint8_t screen=0; //0, principal, 1 tipo de cono,2 colocar el disp en suelo, 3 lecturas completas, 4 errores.
//////balanza////
HX711 balanza;
int A1=0;
const int EchoPin = 5;
const int TriggerPin = 6;
///////variables de muestras///////
int N=1;
float Ar=0.000518;

int n=0; // para cuando estan listas las tecturas presionando rewiew pueden ir viendo
void setup() {
  

  Serial.begin(9600);
  //sondio//
   pinMode(4, OUTPUT);
  // Inicializar el LCD
  //
  pinMode(bot_review,INPUT);
  pinMode(bot_delete,INPUT);
  lcd.init();
  
  //Encender la luz de fondo.
  lcd.backlight();
  
  // Escribimos el Mensaje en el LCD.
  
  
   // Escribimos el número de segundos trascurridos
   
  int bat=0.125*analogRead(A0);
  if(bat>100){
    bat=100;
  }
  ///tono(650);
  ///////////sd//////////////////////
   if (!SD.begin(10))
  { 
   sms("Bateria: "+String(bat)+"%","MemoriaSD:ERROR",false);
    while(true){
      delay(1000);
    }
  }
  sms("Bateria: "+String(bat)+"%","MemoriaSD:OK!",false);
  ///sensores///
  pinMode(TriggerPin, OUTPUT);
  pinMode(EchoPin, INPUT);
  balanza.begin(DOUT, CLK);
  balanza.set_scale(78835.34); // Establecemos la escala
  balanza.tare(20);  //El peso actual es considerado Tara.
  /////////////////
  char login[]="Inicio de Mediciones\n";
  escribirSD("datos.csv",login,false);
  inicio();

  
}
void inicio(){
  sms("Use Cono 1/2 in.","Cambie p/ REVIEW",true);
}
String extraer(int ext){
  //0,1,2,3
  /*
  String sal=trama;
  String pala="";
  for(int j=0;j<=ext;j++){
    int lug=sal.indexOf(",");
    pala=sal.substring(0,lug);
    sal=sal.substring(lug+1,sal.length());
  
  }
  return pala;
  */
}
void loop() {
   // Ubicamos el cursor en la primera posición(columna:0) de la segunda línea(fila:1)
  
    
    if(digitalRead(bot_review)==1){
       ///tono(100);
       if (screen==0){
            if(Ar==0.000518){
              
             //lcd.setCursor(0, 0);
             //lcd.print("Use Cono 3/4 in.");
             sms("Use Cono 3/4 in.","",false);
             Ar=0.001307;
             //trama="3/4,";
             
           
            }else{
               //trama="1/2,";
               //lcd.setCursor(0, 0);
              // lcd.print("Use Cono 1/2 in.");
               sms("Use Cono 3/4 in.","",false);
               Ar=0.000518;
              
            }
        }else if(screen==3){
           float lug=n*2.5;
           String kp=extraer(n);
           if(kp.length()==0){
            kp="---";
           }
           sms(kp+" kPa " +String(lug)+"cm","N= "+String(N),true);
           n+=1;
        }
    }else if((bot_delete)==1){
      if(screen==3){
       // trama="";
        inicio();
        screen=0;
      }
    }
   else if((A1)>=500){
        ///tono(100);
        if(screen==0){
          sms("Ponga en tierra","Presione Start",true);
          screen=1; 
        }else if(screen==1){
          start();
        }else if(screen==3){
          /*
          trama=String(N)+trama+"\n";
          inicio();
          escribirSD("datos.csv",trama.c_str(),false);
          N+=1;
          trama="1/2,";
          */
          screen=0;
        }
     }
    delay(300);
  
}
/*
 void tono( int duracion)
  {
    // Suena el tono en el zumbador
    tone(4, 392.00, duracion);
   
    // Se enciende LED_1 o LED_2 alternamente cada vez que suena un nuevo tono
  
      delay(duracion);
   
    // Para de sonar el tono en el zumbador
    noTone(4);
   
   
    // Se incrementa el contador
    
  }
  */
void sms(String l1, String l2, bool borrar){// borrar 0 
  if(borrar){
  lcd.clear();
  }
  if(l1.length()>0){
    lcd.setCursor(0, 0);
    lcd.print(l1);
  }
  if(l2.length()>0){
  lcd.setCursor(0, 1);
  lcd.print(l2);
  }
}
bool ValidarDist(){
  float cm = ping();
  
  if (cm<80.0){
    if(cm<=5){
      return false;
    }else{
      return true;
   }
  }
  return false;
    
}

String carga(bool e){// false se muestra solo pa presin
     uint8_t a=balanza.get_units(10);
     int P=a*9.8/(Ar*1000);
      //myNex.writeNum("n1.val",P);
      String s="";
      if(P<10){
           s="000"+String(P);
      }else if(P<100){
            s="00"+String(P);
      }else{
        s=String(P);
      }
     return s;
     
}

void start(){
  //float vel_no=2.5; //velocidad nominal
  String trama="";
  uint8_t hol=1; //holgura para determinar que existio un interferenci en la distancia
  int d_ini=80; // distancia maxima para indica que el dispositivo esta sobre el plato
  float d_out=2.5+1; // distancia que indica que se esta sacando y que pare el muestrreo
//int val_dist_t=3;
  float dist_t=2.5; // distancia de cada muestra
  sms("0000 kPa  00 cm","      N="+String(N),true);
  float d2=0.0;
  String Pr; 
  //int i=0;
  /*
  do{
    Pr=carga(true);
  }while(Pr<1);
  */
  
  float d0v = ping();
  float d0=d0v;
  unsigned long timein=millis();
  trama=Pr+",";
  //i+=1;
 
  while(true){
     //Pr=carga(true);
     unsigned long timeA=millis();
     if((timeA-timein)>=1000){
        
   
        timein=millis();
        float d1 = ping();
        Pr=String(d1);//carga(true);
        float d=d0v-d1;
        if (d<=0.5){
          d=0.0;
        }
        if(d>=2.5){
          //muy rapido
          
          //myNex.writeStr("t2.txt",String(d)+" cm/s");
        }else{
          
         
          // error_s=true;
          // return;
        }
        
        
        d0v=d1;
        
      d2=(d0-d1);
      if(d2<=0.0){
        d2=0.0;
      }
      String text="";
      if(d2<10){
        text="0"+String(round(d2));
      }else{
        text=String(round(d2));
      }
      text=Pr+"kPa "+text+" cm";
      sms(text,"",false);
     if(d2>=dist_t ){
      trama=trama+String(Pr)+",";
      //i+=1;
      dist_t+=2.5;
     }else if(d2>(dist_t+hol)){//error en la profundidad
       //error_s=true;
       //return;
     }
     //sacando la sonda
    if(d2<(dist_t-d_out)){
     
      dist_t=2.5;
      
      sms("Lectura Completa","--Modo Review--",true);
      screen=3;
      return;
    }
      
     }
    
       
    
  }
}
float ping() {
   long duration=0;
   float distanceCm=0;
   int cont=0;
   while(cont<=20){
     cont+=1;
     digitalWrite(TriggerPin, LOW);  //para generar un pulso limpio ponemos a LOW 4us
     delayMicroseconds(4);
     digitalWrite(TriggerPin, HIGH);  //generamos Trigger (disparo) de 10us
     delayMicroseconds(10);
     digitalWrite(TriggerPin, LOW);
     
     duration = pulseIn(EchoPin, HIGH);  //medimos el tiempo entre pulsos, en microsegundos
     
     distanceCm =distanceCm + (duration * 10.0 / 292.0/ 2.0);     //convertimos a distancia, en cm
     delay(10);
   }
   float distance=distanceCm/cont;
   return distance;
}


