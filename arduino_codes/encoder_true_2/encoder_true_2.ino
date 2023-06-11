//çalışan encoder dan veri alma kodu (tek encoder)
#include <Encoder.h>

#define ENCA 2 // YELLOW
#define ENCB 21 // WHITE
#define ENCA2 19 // YELLOW
#define ENCB2 20 // WHITE

Encoder myEnc(ENCA, ENCB);
Encoder myEnc2(ENCA2, ENCB2);

void setup() {
  Serial.begin(9600);
  Serial.println("Encoder Reading:");
}

long pos = -999;

long pos2 = -999;

void loop() {
  long newPos;
  long newPos2;
  newPos = myEnc.read();
  newPos2 = myEnc2.read();
  if (newPos!= pos) {
    Serial.print("position 1 = ");
    Serial.print(pos);
    Serial.println();
    pos = newPos;
  }
  if (newPos2!= pos2) {
    Serial.print("position 2 = ");
    Serial.print(pos2);
    Serial.println();
    pos2 = newPos2;
  }
  // if a character is sent from the serial monitor,
  // reset both back to zero.
  if (Serial.available()) {
    Serial.read();
    Serial.println("Reset encoders");
    myEnc.write(0);
  }
}
