
#define UART_BAUD_RATE 9600
// #define F_CPU 12e6
#define F_CPU 1e6 // deactivate resonator, save battery

// #define LED3 PC0
// #define LED2 PC2
// #define LED1 PC4
// #define LEDPORT PORTC
// #define LEDDDR  DDRC

// for pushbutton thingy  

  
// for receiver thingy  
#define FSDDR DDRD
#define FSPORT PORTD
#define FSPIN  PIND
#define FS3 PD7
#define FS2 PD5
#define FS1 PD3
#define SENSE3 PD6
#define SENSE2 PD4
#define SENSE1 PD2


#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>


// #include "uart.c"
#include "rfm70.c"


void my_uitoa(uint32_t zahl, char* string) {
  int8_t i;                             // schleifenzähler
 
  string[8]='\0';                       // String Terminator
  for(i=7; i>=0; i--) {
    string[i]=(zahl % 10) +'0';         // Modulo rechnen, dann den ASCII-Code von '0' addieren
    zahl /= 10;
  }
}

void my_uitobar(uint8_t zahl, char* string) {
	string[8]='\0';
	for(uint8_t i=0; i<=8; i++) {
		if (i<zahl+1) {
			string[i]='#';
		} else {
			string[i]=' ';
		}
		//if (zahl==0) {
		//	string[i]=' ';
		//}
	}

}



void set_sansamp(uint8_t state){
  
  static uint8_t state_mem = 0;
  
  if(state_mem == state){
    FSPORT&=~((1<<FS1)|(1<<FS2)|(1<<FS3));
    state_mem = state;
    return;
  }
  
  switch(state){
    case 1:
//       if(state_mem != 1)
      if( FSPIN & (1<<SENSE1) ) // check if the channel
	//is not already selected
	FSPORT|=(1<<FS1);
      break;
    case 2:
      if( FSPIN & (1<<SENSE2) )
	FSPORT|=(1<<FS2);
      break;
    case 3:
      if( FSPIN & (1<<SENSE3) )
	FSPORT|=(1<<FS3);
      break;
    default:// for example also 0
      if((FSPIN & (1<<SENSE1)) == 0){ // is channel 1 on?
	FSPORT|=(1<<FS1); // turn off
      }else if((FSPIN & (1<<SENSE2)) == 0){ // is channel 2 on?
	FSPORT|=(1<<FS2); // turn off
      }else if((FSPIN & (1<<SENSE3)) == 0){ // is channel 3 on?
	FSPORT|=(1<<FS3); // turn off
      }
      break;
  }
  state_mem = state;
  _delay_ms(20);

}


int main()
{
  uint8_t buffer[8];
  uint8_t target_state = 0;
  sei();

  _delay_ms(1000);
  Begin();

  setMode(1);// set mode r
//   setMode(0);// set mode t
  setChannel(8);
  

//   FSPORT&=~((1<<FS1)|(1<<FS2)|(1<<FS3));
  FSPORT= 0;
  FSDDR|=(1<<FS1)|(1<<FS2)|(1<<FS3);
  FSDDR&=~((1<<SENSE1)|(1<<SENSE2)|(1<<SENSE3));
// // debug
//   while(1){
//     _delay_ms(1000);
//     buffer[0] = FSPIN;
//     sendPayload(buffer,1,0);
//   }
  
  while(1){
    if (receivePayload(buffer)){
      if (buffer[0]=='T' && buffer[1]=='O' && buffer[2]=='B' && (buffer[3]<4)){
        target_state = buffer[3];
      }
    }
    set_sansamp(target_state);
  }

  
}
