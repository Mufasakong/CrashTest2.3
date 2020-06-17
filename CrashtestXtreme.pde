PImage Road;
ArrayList <VolvoCar> Volvos = new ArrayList <VolvoCar>();
ArrayList <SedanCar> Sedans = new ArrayList <SedanCar>(); 
boolean lane;

SedanCar Sedan; 
VolvoCar Volvo;
 
 void setup() {
size(750, 750);
Road = loadImage("Road.png");
imageMode(CENTER);
smooth();
lane = false;


 }
 
 void draw() {
 clear();
 println(lane);
 background(0, 150, 0);
 image(Road, width/2, height/2, width, height/3);
 for (VolvoCar move: Volvos) {
   move.x();
   move.movement();
 }
 for (SedanCar move: Sedans) {
   move.x();
   move.movement();
 }
 

}

void mousePressed() {
   if ((mouseY>height/2-height/6)&&(mouseY<height/2+height/6)){
     lane = !lane;
     if (lane == true){
       Volvos.add(new VolvoCar(0,mouseY, 75, 50, 10, loadImage("YellowCar.png")));
         
     }
     else if (lane == false) {
       Sedans.add(new SedanCar(width, mouseY, 75, 50, -10, loadImage("RedCar.png")));
      
    }

   }
 }
