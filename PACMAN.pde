/* Elaborado por Martha Daniela Maldonado Vargas
   Fundamentos 1
*/

//Declaración de variables
int posX=40;
float posY=250;
float bocaInf=PI/4;
float bocaSup=7*PI/4;
int cambioBocaInf=0;
int cambioBocaSup=1;

void setup(){
//Tamaño y del Canvas
size(500,500);
}

void draw(){
//Fondo del Canvas
background(0);

//Cuerpo del PACMAN
noStroke();//Elimina los bordes
fill(255,255,0); // Relleno de color amarillo
arc(posX,posY,70,70,bocaInf,bocaSup); //Dibujo del PACMAN por medio de un arco

//Movimiento de la boca: las variables bocaSup y bocaInf indican el avance del ángulo de apertura y cierre.
//Las variables cambioBocaSup y cambioBocaInf indican cuándo el ángulo debe aumentar o disminuir según los
//límites que se establecen en el comando IF.
if(bocaSup<7*PI/4){
  cambioBocaSup=1;
}
if(bocaSup>2*PI){
  cambioBocaSup=0;
}
if(cambioBocaSup==0){
  bocaSup-=0.05;
}
if(cambioBocaSup==1){
  bocaSup+=0.05;
}
//bocaInf
if(bocaInf<0){
  cambioBocaInf=1;
}
if(bocaInf>PI/4){
  cambioBocaInf=0;
}
if(cambioBocaInf==0){
  bocaInf-=0.05;
}
if(cambioBocaInf==1){
  bocaInf+=0.05;
}

//Ojo del PACMAN
fill(0); 
ellipse(posX+10,posY-20,6,6);

posX++;

//Posiciona el PACMAN al comienzo cuando llega al final del Canvas y en un posición aleatoria de Y
if(posX>540){
posX=-40;
posY=random(40,460);
}

}