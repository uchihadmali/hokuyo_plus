//çalışan encoder dan veri alma kodu (tek encoder)
#include <Encoder.h>

#define ENCA 19 // YELLOW
#define ENCB 20 // WHITE

Encoder myEnc(ENCA, ENCB);

void setup() {
  Serial.begin(9600);
  Serial.println("Encoder Reading:");
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
    Serial.println("Reset encoders");
    myEnc.write(0);
  }
}
