ArrayList<PVector> to = new ArrayList(); //Array donde guardamos los PVector que contienen las coordenadas de los puntos clickados por el usuario.
int value = 2; //Variable que nos indica en que estado de la aplicación estamos, se explica en el método "draw".
float x1,x2,z1,z2;  //Variables auxiliares para la hacer la rotación de coordenadas.
PShape obj;    // Objeto a dibujar.
PFont f;      //Variable para el tipo de letra.
void setup(){
   size(600,600,P3D);
   noSmooth();
   f = createFont("Arial",16,true);
}
//En el draw controlamos la ejecución de los 3 estados posibles con la variable "value"
//value == 1, la figura ya ha sido dibujada y ahora hay que representarla en 3D
//value == 0, fase en la que el usuario dibuja el sólido de revolución
//value == 2, fase incial donde se muestran las instrucciones pertinentes.
void draw() {   
    if(value==1){
      background(255);
      translate(mouseX,mouseY);
      stroke(255, 0, 0);
      line(-1000, 0, 0, 1000, 0, 0);
      stroke(0, 255, 0);
      line(0, -1000, 0, 0, 1000, 0);
      shape(obj);   
    }else if(value==0){
      background(255);
      for(int i = 0; i< to.size();i++){
          if(to.size() > 1 &&i>0){
            linePV(to.get(i-1),to.get(i));
          }
      }
    }else{
      background(255);
      textFont(f);
      fill(0);
      text("Pulsa la tecla 'espacio' para empezar",width/2-130,200);
      text("Pulsa la tecla 'P' para terminar de dibujar", width/2-130, 230);
      text("Pulsa la tecla 'R' para reiniciar la aplicación", width/2-130, 260);
      text("El eje sobre el cual girará la figura es la parte", width/2-130,290);
      text("izquierda de la pantalla, es decir, el borde izquierdo.",width/2-130,320);
    }
}
//Método para añadir los puntos clickados por el usario
void mousePressed() {
  if(value==0){
     to.add (new PVector (mouseX, mouseY));
  }
}
//Método para detectar las teclas pulsadas y así cambiar los estados previamente mencionados.
void keyPressed() {
  if(key == 'p'&& value==0){
     obj=createShape();
     obj.beginShape();
     obj.noFill();
     for(PVector x : to){
       x1=x.x;
       z1=0;
       x2=0;
       z2=0;
       for(int i = 0;i < 37;i++){
           obj.vertex(x1/2,(x.y-300)/2,z1/2);
           x2 = x1*cos(radians(10))-z1*sin(radians(10));
           z2 = x1*sin(radians(10))+z1*cos(radians(10));
           x1 = x2;
           z1 = z2;
       }
     }
    for(int i = 0;i< 37;i++){  
      for(PVector x : to){  
           x1=0;
           z1=0;
           x1 = x.x*cos(radians(i*10))-z1*sin(radians(i*10));
           z1 = x.x*sin(radians(i*10))+z1*cos(radians(i*10));
           obj.vertex(x1/2,(x.y-300)/2,z1/2);
      }
    }
     obj.endShape();
     shape(obj);
     value=1;
  }
  if(key == 'r'){
    to = new ArrayList();
    value = 2;
    background(255);
  }
  if(key == ' '){
    value = 0;
  }
}
//Método encargado de dibujar las líneas dados 2 PVectors
void linePV ( PVector pv1, PVector pv2) {
  line(pv1.x, pv1.y, 
    pv2.x, pv2.y);
}
