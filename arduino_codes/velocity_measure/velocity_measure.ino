//velocity measurement plot kodu(tek encoder)
#include <Encoder.h>

#define ENCA 2 // YELLOW
#define ENCB 21 // WHITE

Encoder myEnc(ENCA, ENCB);
long currT=0;
float deltaT=0;
long prevT=0;
void setup() {
  Serial.begin(9600);
}

long pos = 0;
long old_pos = 0;
float vel=0;
float vel_f=0;
float veln=0;
float vel_fn=0;

void loop() {
  //time calculation
  currT = micros();
  deltaT = ((float) (currT - prevT))/( 1.0e6 );
  prevT= currT;

  //velocity calculation
  pos = myEnc.read();
  vel=(pos-old_pos)/deltaT; //count per second analysis
  old_pos=pos;

  //apply filter and plot both results
  //vel_f=0.939*vel_fn+0.0304*vel+0.0304*veln; //10 HZ
  vel_f=0.910*vel_fn+0.045*vel+0.045*veln; //15 HZ
  //vel_f=0.882*vel_fn+0.059*vel+0.059*veln; //20 HZ
  //vel_f=0.777*vel_fn+0.112*vel+0.112*veln; //40 HZ
  //send both variables to the plotter
  Serial.print(vel);      //the first variable for plotting
  Serial.print(",");              //seperator
  Serial.println(vel_f); 
  Serial.print(",");    
  //Serial.print(vel);
  //Serial.print(",");
  //Serial.print(vel_f);
  //delay(1);

  //store velocity past values
  veln=vel;
  vel_fn=vel_f;
}
