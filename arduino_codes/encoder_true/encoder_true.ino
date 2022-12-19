/* Encoder Library - TwoKnobs Example
 * http://www.pjrc.com/teensy/td_libs_Encoder.html
 *
 * This example code is in the public domain.
 */
#include <Encoder.h>

#define ENCA 2 // YELLOW
#define ENCB 21 // WHITE

// Change these pin numbers to the pins connected to your encoder.
// Best Performance: both pins have interrupt capability
// Good Performance: only the first pin has interrupt capability
// Low Performance:  neither pin has interrupt capability
Encoder myEnc(ENCA, ENCB);
//   avoid using pins with LEDs attached

void setup() {
  Serial.begin(9600);
  Serial.println("TwoKnobs Encoder Test:");
}

long pos = -999;

void loop() {
  long newPos;
  newPos = myEnc.read();
  if (newPos!= pos) {
    Serial.print("position = ");
    Serial.print(pos);
    Serial.println();
    pos = newPos;
  }
  // if a character is sent from the serial monitor,
  // reset both back to zero.
  if (Serial.available()) {
    Serial.read();
    Serial.println("Reset both knobs to zero");
    myEnc.write(0);
  }
}
