# DigitalCircuits
 Digital Design and Simulations
 
 Around about the year 1971 I design TTL version for a double deck of cards. I started designing this mainly because I was doing a lot of thinking about digital electronics and how computers worked. CPU are just a bunch of registers, multiplexers, to move data around and the ALU to make calculations. My design almost looked like a computer, just did not have an ALU in it. So, I never built this project because the TTL ICs them self were very costly. A bit high for a high school student. I did not ask for donations, because myself and five other students were asking for a dollar per student to buy capacitors for another project that was very successful.  I kept my design for about ten years. Early on I knew the reality of building it was unlikely. The reality was set in stone when I could code a program with less than 20 lines of code on a small single board computer. While I did not have an ALU it had a very sophisticated logic circuit to keep track of what cards were given out. But did not keep track of where cards were given out to. This is where I spent most of my design time. The digital circuit used only TTL, no memory chips other that registers. I called this logic circuit the Coffee Can Logic because I redesign it using rotating drum to keep track of the cards given out.  This was my cost reduction option, but I liked the actual logic circuit much better.

I would never build such a circuit with today’s technology. Just need to use one of the many MPU or MCU and write some code. What if you want to build such a circuit?  You can if you want. Just need a breadboard a lot of logic ICs and a bunch of wire. I built a lot of circuits this way in the 80s. What I do today is Use one of the many circuit simulators and for digital circuits it would be called a logic simulator. What is a logic simulator and how do they work? Building logic circuits normally do not involve a lot of programming unless you want to talk about the software used for simulation. 

Ok then I will show some logic circuits that was tested on a simulator and then I will write some simple code two show how to simulate such circuits. Some code will be on a PC and some on Arduino.

Note:  Simulating ALU and above logic circuits gits a little redundant at this point with conventional programming languages. At this point I like to emulate things like ALUs and CPUs. Even better move to a hardware definition language (HDL) such as Verilog. The HDL can then simulate the logic or be synthesized on a FPGA to implement the logic.