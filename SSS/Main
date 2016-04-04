// Simulation of gravitational effect v.3.d (Now with ALL THE COMMENTS!)
// Computer science project RUC spring 2016
Body[] bodieSystem;                                                //Create array for bodies
float G = 6.67408e-11;                                             //Gravitational constant (m^3 * kg * s^-2)
static int z = -240;
static int xi = 500;
static int yi = 500;

void setup() {
  size(800,600,P3D); //Size of the window
  surface.setResizable(true);
  //frameRate(10);                                                //Framerate of the simulation
  lights();
  int x0 = width/2;                                                //Width calculations
  int y0 = height/2;                                               //Hight calculations
  
  PVectorD locationA = new PVectorD(x0 + 149598023e3, y0);         // Initial location: Earth (m)
  PVectorD locationB = new PVectorD(x0 + 149598023e3+384780e3,y0); // initial location: Moon (m)
  PVectorD locationC = new PVectorD(x0, y0);                       // initial location: Sun (m)
  PVectorD locationD = new PVectorD(x0 + 227920000e3, y0);         // initial location: Mars (m)
  PVectorD locationE = new PVectorD(x0 + 57909050e3, y0);          // initial location: Mercury (m)
  PVectorD locationF = new PVectorD(x0 + 108208000e3, y0);         // initial location: Venus (m)
  PVectorD locationG = new PVectorD(x0 + 778570000e3, y0);         // initial location: Jupiter (m)
  PVectorD locationH = new PVectorD(x0 + 1433530000e3, y0);        // initial location: Saturn (m)
  PVectorD locationI = new PVectorD(x0 + 2872460000e3, y0);        // initial location: Uranus (m)
  PVectorD locationJ = new PVectorD(x0 + 4495060000e3, y0);        // initial location: Neptune (m)
  
  PVectorD speedA = new PVectorD(0, 29780);                       // Earth speed (m/s)
  PVectorD speedB = new PVectorD(0, 1022+29780);                  // Moon speed (m/s)
  PVectorD speedC = new PVectorD(0, 0);                           // Sun Speed (m/s)
  PVectorD speedD = new PVectorD(0,24077);                        // Mars speed (m/s)
  PVectorD speedE = new PVectorD(0,47362);                        // Mercury speed (m/s)
  PVectorD speedF = new PVectorD(0,35020);                        // Venus speed (m/s)
  PVectorD speedG = new PVectorD(0,13070);                        // Jupiter speed (m/s)
  PVectorD speedH = new PVectorD(0,9690);                         // Saturn speed (m/s)
  PVectorD speedI = new PVectorD(0,6800);                         // Uranus speed (m/s)
  PVectorD speedJ = new PVectorD(0,5430);                         // Neptune speed (m/s)
  
  double massA = 5.97219e24;                                       // Earth mass (kg)
  double massB = 7.34767309e22;                                    // Moon mass (kg)
  double massC = 1.988435e30;                                      // Sun mass (kg)
  double massD = 6.4171e23;                                        // Mars mass (kg)
  double massE = 3.3011e23;                                        // Mercury mass (kg)
  double massF = 4.8675e24;                                        // Venus mass (kg)
  double massG = 1.8986e27;                                        // Jupiter mass (kg)
  double massH = 5.6836e26;                                        // Saturn mass (kg)
  double massI = 8.6810e25;                                        // Uranus mass (kg)
  double massJ = 102.42e24;                                        // Neptune mass (kg)
  

  color colorA = color(10,80, 255);                                // Earth color
  color colorB = color(0, 255, 0);                                 // Moon color
  color colorC = color(255, 220, 0);                               // Sun color
  color colorD = color(255,140,0);                                 // Mars color
  color colorE = color(220,220,0);                                 // Mercury color
  color colorF = color(255,120,0);                                 // Venus color
  color colorG = color(135,100,100);                               // Jupiter color
  color colorH = color(255,220,150);                               // Saturn color
  color colorI = color(60,200,255);                                // Uranus color
  color colorJ = color(0,0,255);                                   // Neptune color
  
    //These calculate the size of the planets. nothing important here
  double sizeA = massA/6.43739332E23; float FsizeA = (float)sizeA;
  double sizeB = massB/3.43739332E22; float FsizeB = (float)sizeB;
  double sizeC = massC/6.43739332E28; float FsizeC = (float)sizeC;
  double sizeD = massD/6.43739332E22; float FsizeD = (float)sizeD;
  double sizeE = massE/6.43739332E22; float FsizeE = (float)sizeE;
  double sizeF = massF/6.43739332E23; float FsizeF = (float)sizeF;
  double sizeG = massG/6.43739332E25; float FsizeG = (float)sizeG;
  double sizeH = massH/6.43739332E25; float FsizeH = (float)sizeH;
  double sizeI = massI/6.43739332E24; float FsizeI = (float)sizeI;
  double sizeJ = massJ/6.43739332E24; float FsizeJ = (float)sizeJ;
  
  Body bodyA = new Body(locationA, speedA, massA, colorA, FsizeA);     //Values for Earth -> constructor
  Body bodyB = new Body(locationB, speedB, massB, colorB, FsizeB);     //Values for Moon -> constructor
  Body bodyC = new Body(locationC, speedC, massC, colorC, FsizeC);     //Values for Sun -> constructor
  Body bodyD = new Body(locationD, speedD, massD, colorD, FsizeD);     //Values for Mars -> constructor
  Body bodyE = new Body(locationE, speedE, massE, colorE, FsizeE);     //Values for Mercury -> constructor
  Body bodyF = new Body(locationF, speedF, massF, colorF, FsizeF);     //Values for Venus -> constructor
  Body bodyG = new Body(locationG, speedG, massG, colorG, FsizeG);     //Values for Jupiter -> constructor
  Body bodyH = new Body(locationH, speedH, massH, colorH, FsizeH);     //Values for Saturn -> constructor
  Body bodyI = new Body(locationI, speedI, massI, colorI, FsizeI);     //Values for Uranus -> constructor
  Body bodyJ = new Body(locationJ, speedJ, massJ, colorJ, FsizeJ);     //Values for Neptune -> constructor
  
  bodieSystem = new Body[10];                                       //Initialize array for bodies
  
  bodieSystem[0] = bodyA;                                          //Puts Earth in array
  bodieSystem[1] = bodyB;                                          //Puts Moon in an array
  bodieSystem[2] = bodyC;                                          //Puts Sun in an array
  bodieSystem[3] = bodyD;                                          //MARS
  bodieSystem[4] = bodyE;                                          //MURCURY
  bodieSystem[5] = bodyF;                                          //VENUS
  bodieSystem[6] = bodyG;                                          //JUPITER
  bodieSystem[7] = bodyH;                                          //SATURN
  bodieSystem[8] = bodyI;                                          //URANUS
  bodieSystem[9] = bodyJ;                                          //NEPTUNE
}
  
  animationSpeed = 200;
void draw() {                                                    //Draw function calls itself over and over
  background(0,0,50,5);                                                 //Background, omit to see tails of bodies
  Move();
  
  for (int i = 0; i < animationSpeed; i++) {
    for (int j = 0; j < bodieSystem.length; j++){                    //For loop that goes throughh all bodies
       bodieSystem[j].updateLocation();                              //Update location for all bodies
      bodieSystem[j].drawBody();                                    //Draw all bodies in the window
    }
  }
  println("Framerate: "+frameRate);
  println("Earth Position:" + bodieSystem[0].location);
  if (bodieSystem[0].location.y < 0 && testet == 0) {
    testet = 2;
  }
  if (bodieSystem[0].location.y > 0 && testet == 2) {
    year++;
    testet = 0;
  }
    
  println("Year: " + year);
  //println(bodieSystem[2].location.toPVector().z);
}
int testet = 0; //Needs to change name of variable and possibly change to boolean
int year = 0; //Also needs to be moved to body class for obvious reasons

void Move() {
  if (keyPressed == true && key == '4') xi+=10;
  if (keyPressed == true && key == '6') xi-=10;
  if (keyPressed == true && key == '8') yi+=10;
  if (keyPressed == true && key == '2') yi-=10;
  if (keyPressed == true && key == 'b') background(0);
  if (keyPressed == true && key == '+') z+=10;
  if (keyPressed == true && key == '-') z-=10;
  if (keyPressed == true && key == '*') {
    animationSpeed += 50;
  }
  if (keyPressed == true && key == '/' && animationSpeed > 0) {
    animationSpeed -= 50;
  }
 }
