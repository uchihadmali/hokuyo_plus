/* 
Read optical incremental rotary encoder output.
Serial output columns:
    
    1. Absolute encoder position (pulses, integer)
    2. Change in encoder position (pulses, integer)
    3. Time since Arduino start in (microseconds, integer)
    4. Change in time (microseconds, integer)
    5. Speed (pulses per second, float)
Working well.
volatile directive is used for variables that are modified in the
interrupt service routines.
*/

// Pin definitions.
// - enc_a is ENC Signal A line (Arduino digital pin 2)
// - enc_b is ENC Signal B line (Arduino digital pin 3)
#define ENC_A  2  //yellow
#define ENC_B  21 //white

// Main loop refresh period.
#define REFRESH_MS  50

// Main serial data connection to computer.
#define BAUD_RATE   9600

// Encoder signal line states
volatile boolean state_a = 0;
volatile boolean state_b = 0;

// Encoder position
volatile int enc_pos = 0;
int enc_pos_prev = 0;
int enc_pos_change = 0;

// Timing
unsigned long micros_current = 0;
unsigned long micros_prev = 0;
long micros_change = 0;


void setup() 
{
    pinMode(ENC_A, INPUT);
    pinMode(ENC_B, INPUT); 

    state_a = (boolean) digitalRead(ENC_A);
    state_b = (boolean) digitalRead(ENC_B);

    attachInterrupt(0, interrupt_enc_a, CHANGE);
    attachInterrupt(1, interrupt_enc_b, CHANGE); 
  
    micros_prev = micros();

    Serial.begin(BAUD_RATE);
}


void loop()
{
    // Calculate elapsed time  
    micros_current = micros();
    if (micros_current < micros_prev) {
        micros_change = micros_current + (4294967295 - micros_prev);
    } else {
        micros_change = micros_current - micros_prev;
    }

    // Calculate change in encoder position.
    enc_pos_change = enc_pos - enc_pos_prev;
    enc_pos_change = abs(enc_pos_change);

    // Emit data
    Serial.print(enc_pos);
    Serial.print("\t");
    Serial.print(enc_pos_change);
    Serial.print("\t");
    Serial.print(micros_current);
    Serial.print("\t");
    Serial.print(micros_change);
    Serial.print("\t");
    Serial.print(enc_pos_change / (micros_change / 1e6));
    Serial.print("\n");

    enc_pos_prev = enc_pos;
    micros_prev = micros_current;

    delay(REFRESH_MS);
}


// Detect pulses from depth encoder.

void interrupt_enc_a()
{
    if (!state_a) {
        state_b ? enc_pos++: enc_pos--;         
    }
    state_a = !state_a;
}

void interrupt_enc_b()  
{
    state_b = !state_b;
}
