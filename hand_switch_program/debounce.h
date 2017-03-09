#define KEYPORT PORTC
#define KEYPIN	PINC
#define KEYDDR DDRC
#define ACTIVE_KEYS 0b00101010
#define KEY1 1<<5
#define KEY2 1<<3
#define KEY3 1<<1


#include <inttypes.h>
#include <avr/io.h>

// debounce counter length = debounce time / (F_CPU /(prescaler * 256))
#define DB_CL 4



void init_keys(void);

uint8_t key_pressed_momentary(uint8_t key_mask);

uint8_t key_pressed_edge(uint8_t key_mask);

uint8_t read_keys(uint8_t key_mask);

void update_key_state(volatile uint8_t *port);












