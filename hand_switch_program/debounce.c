


#include "debounce.h"



volatile uint8_t key_signal=0;

void init_keys(void) {
	KEYDDR &= ~(ACTIVE_KEYS);
	KEYPORT = ACTIVE_KEYS;
}


uint8_t key_pressed_momentary(uint8_t key_mask)
{
	return (~KEYPIN) & key_mask;
}

uint8_t key_pressed_edge(uint8_t key_mask)
{
	if(key_signal & key_mask)
	/* returns 1 if key pattern is pressed */
	{
		key_signal &= ~(key_mask);
		return 1;
	}
	return 0;
}

uint8_t read_keys(uint8_t key_mask)
{
	/* returns byte with keys pressed
	if not omitted by mask */

	if(key_signal & key_mask)
	{
		uint8_t temp = key_signal;
		key_signal &= ~(key_mask);
		return temp;
	}
	return 0;
}

void update_key_state(volatile uint8_t *port)
{
	/* surveillance of the input port,
	last states are buffered, searching for
	pattern match*/
	static uint8_t key_state[DB_CL];
	
	for(uint8_t i=(DB_CL-1); i>0;i--)
	{
		key_state[i] = key_state[i-1];
	}
	key_state[0] = ~(*port);

	key_signal = (key_state[DB_CL-1] ^ key_state[DB_CL-2]) & key_state[0]; 		 
}
