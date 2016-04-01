class Body {
  PVectorD location;                                    //Location doubles vector
  PVectorD speed;                                       //Speed doubles vector
  PVectorD accelleration;                               //Acceleration doubles vector
  double mass;                                          //Mass (double) of body
  color c;                                              //Color of body
  float size;                                           //Size of the body (Not to scale)
 
 
  Body(PVectorD location, PVectorD speed,       //Constructor for any body
  double mass, color c,  float size) {          //"this" here refers to the current body object
    this.location = location;
    this.speed = speed;
    this.mass = mass;
    this.c = c;
    this.size = size; 
  }
  
  void drawBody() {
    float scale = 20000;                        //Used for scaling the universe
    
    strokeWeight(0.5);//This defines the size of the outline of the ellipses                                               //////////////////////////////////////////////////////////////////
    fill(c);                                    //Decides the color                                                        //Here the location of the Moon is calculated.                  //
    if(c == color(0, 255, 0)){                  //Checks if the color matches that of the Moon object                      //We do this by adding the location of the Moon and substracting//
      float x = location.toPVector().x/scale + (location.toPVector().x - bodieSystem[0].location.toPVector().x)*40/scale;  //the location of the Earth, then multiplying by a factor to see//
      float y = location.toPVector().y/scale + (location.toPVector().y - bodieSystem[0].location.toPVector().y)*40/scale;  //in order to see the change in our window.                     //
      x= 1.618 * x/scale;                                                                                                  //////////////////////////////////////////////////////////////////
      y= 0.618 * y/scale;
      pushMatrix();
      stroke(color(255,255,255,128));
      //fill (c);// add depth
      translate(x + xi, y +yi, z);
      sphere(size);
    popMatrix();    
      
      //ellipse(x + 500, y + 500, size, size);
    }
    else {
      float x = location.toPVector().x/scale;       //The toPevector method takes a PVectorD and returns a PVector.
      float y = location.toPVector().y/scale;       //We need to divide by alot here to make sure we can see the objects.
      //x= x/scale;
      //y= y/scale;
      x= 1.618 * x/scale;
      y= 0.618 * y/scale;
      pushMatrix();
      stroke(color(255,255,255,128));
      //fill (c);// add depth
      translate(x + xi, y + yi, z);
      sphere(size);
    popMatrix();    
      //ellipse(x + 500, y + 500, size, size);      //This simply draws an ellipse at location.
    }
  }
  
  public void updateLocation() {
    updateMySpeed();                              //Updates speed before speed is inserted    
    for (int i = 0; i<animationSpeed;i++) {                 //This for loop can be run more times to speed up the program. Just remember that it comes at the cost of precision.
      location.add(speed);       //This adds the speed PVectorD to the location PVectorD
      ;
  }
 }
   
  private void updateMySpeed() {
    updateMyAccelleration();                      //Updates acceleration before acceleration is inserted  
for (int i = 0; i<animationSpeed;i++) {                     //Just like the above. Just remember that both have to have the same iteration number.
    speed.add(accelleration);
}
   }

  private void updateMyAccelleration() {
    accelleration = new PVectorD(0,0);                                         //Acceleration is reset
    for (int i = 0; i < bodieSystem.length; i++) {                             //Check all bodies for their contribution
      if(bodieSystem[i] != this){                                              //...Unless its oneself
        accelleration.add(bodieSystem[i].contributionToAccelerationOf(this));  //Now add to acceleration the output from the method below
      }
    }  
  }
  
  PVectorD contributionToAccelerationOf(Body otherBody) {                                     
    PVector contribution = PVector.sub(location.toPVector(), otherBody.location.toPVector()); //Substract locations of the two bodies to find the distance between them
    float r = contribution.mag();                                                            //Calculate magnitude of vector (This is why we are using PVectors for this. Can be changed later
    contribution.normalize();                                                               //Makes contribution unitary. Ie it gets the length (magnitude) 1.
    PVectorD tempContribution = new PVectorD(0, 0);                                        //Now we make a PVectorD so we can handle the big values below
    tempContribution.set(contribution);                                                   //And makes it the same as contribution
    double force = (G * mass * otherBody.mass)/(r * r);                                  //Then calculate the force the other body excerts on the body using Newton's law of universal gravitation
    tempContribution.mult(force/otherBody.mass);                                        //Then multiply the contribution by F/m_2 (which comes from f=ma <=> a=f/m)
    return tempContribution;
  }
}
