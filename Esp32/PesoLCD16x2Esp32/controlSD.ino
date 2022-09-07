bool escribirSD(String fichero_red,String texto,bool borrar){// borraar=true o false
  File archivo;

  if (borrar){
    if (SD.exists(fichero_red.c_str())) {
      SD.remove(fichero_red.c_str());
     
      delay(1000);
      
   }
  }
  if (!SD.exists(fichero_red.c_str())) {
     archivo = SD.open(fichero_red, FILE_WRITE);
     if(not archivo){
       
          return false;
      }
//De lo contrario escribimos el texto
      else
      {
         char cabec[]="NumMuestra,TipoCono,0.0 cm,2.5 cm,5.0 cm,7.5 cm,10.0 cm,12.5 cm,15.0 cm,17.5 cm,20.0 cm,22.5 cm,25.0 cm,27.5 cm,30.0 cm,32.5 cm,35.0 cm,37.5 cm,40.0 cm,42.5 cm,45.0 cm,47.5 cm,50.0 cm, Cono\n";
         archivo.print(cabec);
         delay(500);
         archivo.close(); //Es muy importante cerrar el archivo al final
         delay(100);
         return true;
      }
   }
  
  archivo = SD.open(fichero_red, FILE_WRITE);
  if(not archivo){
      return false;
      
  }
    //De lo contrario escribimos el texto
    else
    {
       archivo.print(texto.c_str());
       delay(500);
       
       archivo.close(); //Es muy importante cerrar el archivo al final
       delay(100);
       return true;
    }
  
}




