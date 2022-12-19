
double angle=0;
int count =0;
int A;
int B;
int state;
int statep=3;
void setup() {
  Serial.begin(9600);
  pinMode(2, INPUT);
  pinMode(21, INPUT);
  //interrupt pins for encoder
  attachInterrupt(0,Achange,CHANGE);
  attachInterrupt(2,Bchange,CHANGE);

}
void loop(){
  angle=count/10.36;
    Serial.println( count );
}
  
void Achange() //these functions are for finding the encoder counts
{
  A = digitalRead(2);
  B = digitalRead(21);

  if ((A==HIGH)&&(B==HIGH)) state = 1;
  if ((A==HIGH)&&(B==LOW)) state = 2;
  if ((A==LOW)&&(B==LOW)) state = 3;
  if((A==LOW)&&(B==HIGH)) state = 4;
  
  switch (state)
  {
    case 1:
    {
      //if (statep == 2) count++;
      if (statep == 4) count--;
      break;
    }
    case 2:
    {
   //   if (statep == 1) count--;
    //  if (statep == 3) count++;
      break;
    }
    case 3:
   {
   //   if (statep == 2) count --;
  //    if (statep == 4) count ++;
     break;
   }
   default:
    {
      //if (statep == 1) count++;
    //  if (statep == 3) count--;
    break;
   }
 }
 statep = state;

}

void Bchange()
{
  A = digitalRead(2);
  B = digitalRead(21);

  if ((A==HIGH)&&(B==HIGH)) state = 1;
  if ((A==HIGH)&&(B==LOW)) state = 2;
  if ((A==LOW)&&(B==LOW)) state = 3;
  if((A==LOW)&&(B==HIGH)) state = 4;
 
  switch (state)
  {
    case 1:
    {
      if (statep == 2) count++;
    //  if (statep == 4) count--;
      break;
    }
    case 2:
    {
     // if (statep == 1) count--;
     // if (statep == 3) count++;
      break;
    }
    case 3:
    {
    //  if (statep == 2) count --;
     // if (statep == 4) count ++;
      break;
    }
    case 4:
    {
    //  if (statep == 1) count++;
    //  if (statep == 3) count--;
    break;
    }
    default:
    {
      break;
      }
  }
statep = state;
  
}
