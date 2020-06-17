class car {
  float x ;
  float y ;
  float a ;
  float b ;
  float spd;
  PImage car; 
  
  car(float x, float y, float a, float b, float spd, PImage car) {
  this.x = x;
  this.y = y;
  this.a = a;
  this.b = b;
  this.spd = spd;
  this.car = car;
  
  }

  float x() {
   return x=x+spd;
      } 
  
  float y() {
   return y;
  }
  
  void movement() {
    image(car, x, y, a, b);
  }
}

class SedanCar extends car {
  SedanCar(float x, float y, float a, float b, float spd, PImage car) {
   super(x, y, a, b, spd, car);
  }
}

class VolvoCar extends car {
  VolvoCar(float x, float y, float a, float b, float spd, PImage car) {
   super(x, y, a, b, spd, car);
  }
}
