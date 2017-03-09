
#define UART_BAUD_RATE 9600
#define F_CPU 1e6

#define LED3 PC0
#define LED2 PC2
#define LED1 PC4
#define LEDPORT PORTC
#define LEDDDR  DDRC


#include <inttypes.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <util/delay.h>


// #include "uart.c"
#include "rfm70.c"
#include "debounce.h"


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



void set_leds(uint8_t state){
  
    if(state == 1){
      LEDPORT|=(1<<LED1);
    }else{
      LEDPORT&=~(1<<LED1);
    }
    if(state == 2){
      LEDPORT|=(1<<LED2);
    }else{
      LEDPORT&=~(1<<LED2);
    }
    if(state == 3){
      LEDPORT|=(1<<LED3);
    }else{
      LEDPORT&=~(1<<LED3);
    }
  
}


int main()
{
//   uint8_t test[20]={0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,0x78,0x06,0x11,0x99};
  uint8_t buffer[8];
  buffer[0]='T';
  buffer[1]='O';
  buffer[2]='B';
  buffer[3]=0;
//   uint8_t c;
//   char buffer[10];
// 
  uint8_t state = 0;
  uint8_t transmit = 0;
  uint8_t counter = 0;
  sei();
  init_keys();

  _delay_ms(1000);
  Begin();

  setMode(0);// set mode t
  setChannel(8);
  
// for pushbutton thingy  

  
// // for receiver thingy  
// #define LED3 PD7
// #define LED2 PD5
// #define LED1 PD3
  LEDDDR|=(1<<LED1)|(1<<LED2)|(1<<LED3);
  
//   while(1){
//     
//     LEDPORT^=(1<<LED1);
//     LEDPORT^=(1<<LED2);
//     LEDPORT^=(1<<LED3);
//     _delay_ms(2000);
//   }

  while (1)
  {
    transmit = 0;
    _delay_ms(20);
    update_key_state(&KEYPIN);
    
    
    if(key_pressed_edge(KEY1)){
      transmit = 1;
      if(state == 1){
	state = 0;
      } else {
	state = 1;
      }
    }
    else if(key_pressed_edge(KEY2)){
      transmit = 1;
      if(state == 2){
	state = 0;
      } else {
	state = 2;
      }
    }
    else if(key_pressed_edge(KEY3)){
      transmit = 1;
      if(state == 3){
	state = 0;
      } else {
	state = 3;
      }
    }
    
    counter = (counter+1)%20;
    if(counter == 0){
      transmit = 1;
    }
    
    set_leds(state);
    buffer[3]=state;
    
    if(transmit){
      sendPayload(buffer,4, 0);
    }
//     
//     sendPayload("H",1, 0);
//     _delay_ms(333);
// sendPayload("&",1, 0);
//     _delay_ms(333);
// sendPayload("M",1, 0);
//     _delay_ms(333);

/*
    //sendPayload(test,20, 0);
    _delay_ms(500);
    sendPayload("hallo   ",8, 0);
    _delay_ms(500);
    sendPayload("Vera    ",8, 0);
    _delay_ms(500);
    sendPayload("ich     ",8, 0);
    _delay_ms(500);
    sendPayload("habs    ",8, 0);
    _delay_ms(500);
    sendPayload("geschfft",8, 0);
*/



  
  }
}
