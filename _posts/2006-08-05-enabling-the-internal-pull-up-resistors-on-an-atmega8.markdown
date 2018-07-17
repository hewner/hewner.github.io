---
author: phewner
comments: true
date: 2006-08-05 04:58:44+00:00
layout: post
link: http://hewner.com/2006/08/04/enabling-the-internal-pull-up-resistors-on-an-atmega8/
slug: enabling-the-internal-pull-up-resistors-on-an-atmega8
title: Enabling the internal pull-up resistors on an ATmega8
wordpress_id: 36
categories:
- Worklogs
---

I was having a problem setting up my atmega8 for user input.  My input signal from my button (which was directly connected from my microcontroller to ground) seemed to flucuate after a change.  It seems that the problem was that the ATmega8's internal pull-up resistors weren't enabled (these resistors cause the input signals to default to 1 when connected to nothing in particular).  Figuring out how to enable these pullup resistors took a bit of doing.  I found what I needed by looking at this [example source code](http://www.mail-archive.com/avr-gcc-list@nongnu.org/msg02494.html).  Turns out you set the pullup resistor to on in avr-gcc by setting the PORT_x_ bits to 1 for your input pins.  

<!-- more -->

Here's the source code that finally did what I expected:



<blockquote>
`

>     
>     
>     //responsible for the uintN_t types
>     #include <inttypes.h>
>     
>     //responsible for PORTX DDRX registers
>     #include <avr/io.h>
>     
>     //responsible for SIGNAL macro
>     #include <avr/signal.h>
>     
>     //responsible for sei
>     #include <avr/interrupt.h>
>     
>     #include <avr/pgmspace.h>
>     
>     
>     int main(void)
>     {
>     	// Data Direction Register for Port D
>     	// 1 means output, 0 means input
>     	DDRD = 0xFF; //Set all pins to output
>     	PORTD = 0x00; // just to let us know that fun stuff is happening
>     	// Data Direction Register for Port B
>     	// 1 means output, 0 means input
>     	DDRC = 0x00; //Set all pins input!
>             PORTC = 0xFF;  //enable pull up resistor?
>     	while(1){ 
>             PINC = 0xFF; 
>     	if (~PINC & 0x01) { 
>     		   PORTD = 0xFF;
>     	}
>     		  else PORTD = 0x00; }
>     	return 1;
>     }
>     
> 
> 
`
</blockquote>



