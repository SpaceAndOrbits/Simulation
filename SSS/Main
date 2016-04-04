// Simulation of gravitational effect v.3.d (Now with ALL THE COMMENTS!)
// Computer science project RUC spring 2016
Body[] bodieSystem;                                                //Create array for bodies
float G = 6.67408e-11;                                             //Gravitational constant (m^3 * kg * s^-2)
static int z = -240;
static int xi = 500;
static int yi = 500;
static int calculationSpeed = 100000;
int year = 0;

void setup() {
  size(800,600,P3D); //Size of the window
  surface.setResizable(true);
  //frameRate(10);                                                //Framerate of the simulation
  lights();
  int x0 = width/2;                                                //Width calculations
  int y0 = height/2;                                               //Hight calculations
  
  PVectorD locationA = new PVectorD(x0   -2.521092863852298E10, y0 +1.449279195712076E11, 0);         // Initial location: Earth (m)
  PVectorD locationB = new PVectorD(x0 -2.552857888050620E10, y0 +1.446860363961675E11); // initial location: Moon (m)
  PVectorD locationC = new PVectorD(x0, y0);                       // initial location: Sun (m)
  PVectorD locationD = new PVectorD(x0 + 2.079950549908331e11, y0 - 3.143009561106971e9, 0);         // initial location: Mars (m)
  PVectorD locationE = new PVectorD(x0 -2.105262111032039E10, y0 - 6.640663808353403E10);          // initial location: Mercury (m)
  PVectorD locationF = new PVectorD(x0 - 1.075055502695123E11, y0 - 3.366520720591562E9);         // initial location: Venus (m)
  PVectorD locationG = new PVectorD(x0 + 5.989091594973032E11, y0 + 4.391225931530510E11);         // initial location: Jupiter (m)
  PVectorD locationH = new PVectorD(x0 + 9.587063368200246E11, y0 + 9.825652109121954E11);        // initial location: Saturn (m)
  PVectorD locationI = new PVectorD(x0 +2.158774703477132E12, y0 - 2.054825231595053E12);        // initial location: Uranus (m)
  PVectorD locationJ = new PVectorD(x0 + 2.514853420151505E12, y0 - 3.738847412364252E12);        // initial location: Neptune (m)

  PVectorD speedA = new PVectorD(-2.983983333368269E4, -5.207633918704476E3);                       // Earth speed (m/s)
  PVectorD speedB = new PVectorD(-2.927904627038706E4, -6.007566180814270E3);                  // Moon speed (m/s)
  PVectorD speedC = new PVectorD(0, 0);                           // Sun Speed (m/s)
  PVectorD speedD = new PVectorD(1.295003532851602E3, 2.629442067068712E4);                        // Mars speed (m/s)
  PVectorD speedE = new PVectorD(3.665298706393840E4, -1.228983810111077E4);                        // Mercury speed (m/s)
  PVectorD speedF = new PVectorD(8.891598046362434E2, -3.515920774124290E4);                        // Venus speed (m/s)
  PVectorD speedG = new PVectorD( -7.901937610713569E3, 1.116317695450082E4);                        // Jupiter speed (m/s)
  PVectorD speedH = new PVectorD(-7.428885683466339E3, 6.738814237717373E3);                         // Saturn speed (m/s)
  PVectorD speedI = new PVectorD(4.637648411798584E3, 4.627192877193528E3);                         // Uranus speed (m/s)
  PVectorD speedJ = new PVectorD(4.465799984073191E3, 3.075681163952201E3);                         // Neptune speed (m/s)
  
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
  time = time + 1 + calculationSpeed;
  if(time > 31556926) {
  time = time - 31556926;
  year++;
  }
  println("we have simulated for" + year + "years(by time)");    
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
