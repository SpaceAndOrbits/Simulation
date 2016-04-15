/** 
 * Mini PVector Class Storage for Doubles (v1.01)
 * by GoToLoop (2013/Aug)
 * 
 * http://forum.processing.org/topic/can-pvector-work-with-doubles
 */

class PVectorD {
  double x, y, z;                            //These are the only values stored in the PVectorD class

  PVectorD(double xx, double yy) {           //Constructor for 2D array
    set(xx, yy);
  }

  PVectorD(double xx, double yy, double zz) {  //Constructor for 3D array
    set(xx, yy, zz);
  }

  PVectorD(PVector p) {                      //Constructs the PVectorD from a PVector
    set(p);                                  //...By running this method
  }

  PVectorD(int[] a) {                        //Constructs the PVectorD from an int array
    set(float(a));
  }

  PVectorD(float[] a) {                      //Constructs the PVectorD from a float array
    set(a);
  }

  PVectorD(double[] a) {                     //Constructs the PVectorD from a double array
    set(a);
  }

  void clear() {                             //Clears the contents of a PVectorD object
    x = y = z = 0;
  }

  void set(double xx, double yy) {           //Simply a set command
    x = xx;
    y = yy;
  }

  void set(double xx, double yy, double zz) {   //The same. But for 3D
    x = xx;
    y = yy;
    z = zz;
  }

  void set(PVector p) {                      //The same, but using a PVector
    x = p.x;
    y = p.y;
    z = p.z;
  }

  void set(int[] a) {                        //The same, but using an int array
    set(float(a));
  }

  void set(float[] a) {                      //The same, but using a float array
    final int len = a.length;

    if (len > 0)  x = a[0];
    if (len > 1)  y = a[1];
    if (len > 2)  z = a[2];
  }

  void set(double[] a) {                     //The same, but using a double array
    final int len = a.length;

    if (len > 0)  x = a[0];
    if (len > 1)  y = a[1];
    if (len > 2)  z = a[2];
  }

  PVectorD get() {                           //Getter for the PVectorD class
    return new PVectorD(x, y, z);
  }
  
  
  //These were added by Christian Kjeldbjerg (2016, feb 18)
  //-------------------------------------   ///////////////////////////////////////////////
  void add(float[] a) {                     //These were added by me in order to get some//
    final int len = a.length;               //of the same functionality from the PVectorD//
                                            //that you would get out of the PVector.     //
    if (len > 0)  x = x+a[0];               //They simply add, substract and multiply    //
    if (len > 1)  y = y+a[1];               //using different inputs.                    //
    if (len > 2)  z = z+a[2];               //More can be added if necessary.            //
  }                                         ///////////////////////////////////////////////
    void sub(float[] a) {
    final int len = a.length;

    if (len > 0)  x = x-a[0];
    if (len > 1)  y = y-a[1];
    if (len > 2)  z = z-a[2];
  }
    void mult(float[] a) {
    final int len = a.length;

    if (len > 0)  x = x*a[0];
    if (len > 1)  y = y*a[1];
    if (len > 2)  z = z*a[2];
  }
  void add(PVector a) {
    x = x+a.x;
    y = y+a.y;
    z = z+a.z;
  }
    void sub(PVector a) {
    x = x-a.x;
    y = y-a.y;
    z = z-a.z;
  }
    void mult(PVector a) {
    x = x*a.x;
    y = y*a.y;
    z = z*a.z;
  }
    void mult(double a) {
      x = x*a;
      y = y*a;
      z = z*a;
    }
      void add(PVectorD a) {
    x = x+a.x;
    y = y+a.y;
    z = z+a.z;
  }
  //-------------------------------------
  
  
  PVector toPVector() {                                    //This returns a PVector. Use only when doubles are not necessary for calculations.
    return new PVector((float) x, (float) y, (float) z);   //Otherwise information may be lost.
  }

  double[] toArray() {                                     //To double array. Data will NOT be lost
    return new double[] {
      x, y, z
    };
  }

  String toString() {                                      //And toString ofcourse
    return "[ " + x + ", " + y + ", " + z + " ]";
  }
}
