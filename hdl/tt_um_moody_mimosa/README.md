![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg) ![](../../workflows/test/badge.svg) ![](../../workflows/fpga/badge.svg)

# Background

The original idea was quite simple: I wanted to design my first custom digital ASIC and implement a fun concept. Instead of developing something like an adder or encoder, I wanted to push the boundaries of what’s possible. A Tamagotchi-like, living creature — that’s the vision. A creature with an inner life, capable of interacting with the outside world, and something you can simply have fun with. 

This original idea turned out to be a rabbit hole. What if the internal model closely follows biological processes and takes neurotransmitters and hormones into account? Which neurotransmitters and hormons are relevantand what kind of emotions could emerge? How could sleep and hunger be modeled? What does the creature do? What is observable from the outside? How could illness or age (from child to adult) be incorporated? How does something like this fit on the limited space of the chip? How could it be simulated and optimized offline, or emulated on an FPGA? How could one still gain a complete view of the inner workings for debugging and testing? What might the hardware look like? How do you cheaply measure temperature, noise amplitude or illumination strength?


# Moody mimosa, my first digital ASIC

The "moody mimosa" emulates the behavior of a simple living organism. It has an internal system made up of various neurotransmitters, hormones, energy reserves, and emotions. It can be tired, hungry, ill, annoyed, bored, happy, nervous, calm, stressed, or excited. And it evolves, from a baby to an adult. 

At the beginning, only its actions can be observed. Leds indicate, what the mimosa does. Maybe it sleeps, eats, plays or cries. However, it soon learns to speak. This allows to understand more about the underlying emotion. Is it angry, nervous or excited? What could you do in order to make it feel better? Maybe it just needs some presence and interaction? Maybe it is too loud or light is too bright? And, possibly, you just can't figure it out. Why is it crying? Why won’t it be calmed down? Why doesn’t it eat or sleep? If you happen to be a parent, this may feel quite familiar to you.

Details about the implementation and technical details are contained in the documentation or comments inside the corresponding verilog modules. However, in the figure below the general architecture is illustrated. 

![](docs/figs/Mimosa_model_v1.1.png)

It is basically a collection of wildly intertwined feedback loops. The blocks with indicated reset and clock signals are sequential (mainly counters and a single state machine for the action regulator), the rest is purely combinational. There is some layering between low-level resources and processes (vital energy, nourishment, neurotransmitter), resulting emotions and observable behaviour and speech. This somehow resembles the brain structure, from brain stem and ancient structures to the limbic system (emotions) and the cortex (complex thinking and actions). However, similar to the human brain, there are feedback loops in both directions, such as for example bottom-up and top-down emotion regulation. 

There are a lot of resources involved (generally called systems) with a corresponding regulator. Such a sequantial resource consists of a counter with only few bits and the possibility to increase and decrease, slow or fast. Whether the resource value increases or decreases is defined by a resource-specific regulator as the feedback mechanism. At the end, only the upper or the upper two bits are relevant, they define a level. This allows to disginuish e.g. "very low", "moderately low", "moderately high" and "very high". While a neurotransmitter system may have a 8-bit counter with a complex regulator, for example, the emotion regulator will only need two wires, from the 7th and 8th bit of the counter. This reduced the coercion between the modules and makes it slightly simpler to route (allthough routing is still complex because there are so many feedback mechanism). 

Inputs are digital signals from either push buttons (deliberate interaction) or the output of comparators for environment sensing signals (ntc for temperature, microphone for noise and photodiodes for light sensing). The clock is generated and parametrized by a microcontroller on the custom mimosa pcb. The latter also tracks all input and outputs and sends it via uart to the host computer for logging or analysis. The actions (output) of the mimosa is indicated by on-board leds. Finally, the phrases transmitted via UART are displayed on an on-board lcd display. 

# Subprojects 

In the meantime, this project has evolved into several subprojects:

| Folder | Description |
| ------ | ----------- |
| `src`  | The digital design of the Mimosa model, including the Verilog source code and the additional information required for hardening. |
| `test` | Testing of the overall design, based on python and cocotb |
| `module_test`  | Testing of specific verilog submodules, based on python and cocotb |
| `fpga` | Additional files (tcl, xdc) for creating the FPGA design for an Artix-7 Alchitry Au board. For this part, I use the Vivado command line utilities and the Alchitry loader.|
| `simulation` | A simulation based on PyVerilator and PyQt6 with a graphical interface for optimizing the model (fine-tuning, feedback loops) and debugging the ASIC. PyVerilator uses the actual verilog sources, compiles them into a C/C++ application and allows to access it from within python. |

There are two related subprojects: One for a STM32 application for a microcontroller to interact with and debug the ASIC. And one for a custom pcb with in- and outputs as well as the circuitry for temperature-, light- and audio-measurement, a LCD display and the FRAM chip with the pre-loaded text and a microcontroller.


# Current state

Update 21.12.2024:

| Part   | State |
| ------ | ----------- |
| `digital design`  | Feature freeze. Main verilog modules are implemented and work as expected. Further tests will be added soon and fine-tuning of the feedback loops using the simulation is ongoing.  |
| `fpga` | Design can be run and tested on the Artix-7 Alchitry Au board. |
| `simulation` | Simulation with PyVerilator and PQt6 works and it is possible to interact with the mimosa. All interactions supported. The GUI won't win any beauty contests just yet, and the codebase still needs to be expanded and cleaned up. |
|`misc/mimosa_logger` | Minimal functionality implemented and can be built for the STM32G474. Makefile-based approach, no STM32CubeIDE needed. Will be extended soon. |
|`misc/mimosa_pcb`| Schematic finished, layout missing. Not yet part of the repository. |

Shuttle: 2 Tiles are assigned on the TT10 shuttle. 

# Open questions or further ideas

Random ideas or open questions. Feel free to contact me, if you feel like discussing any of this or if you would like to share thoughts and ideas. 

## SystemVerilog

For such a project, developing with verilog is cumbersome. Especially structured data types would be so helpful. This are my first steps in Verilog and HDL in general, so my knowledge is utterly limited. However, as far as I see, SystemVerilog would provide e.g. structured data types. Nevertheless, I did not succeed using SystemVerilog - creating basically a header file with the definitions of the structured data types, included by other modules. 

While it is possible to add the -sv option to the yosys execution command in the project.py of the tt-tools, including the header files in different modules fails. The include mechanism appears not to work properly - or it is not supported. I did not investigate it further but it would be very interesting to know whether there is a tiny tapeout project using structured datatypes with SystemVerilog (There are [SystemVerilog projects with SystemVerilog](https://github.com/yuri-panchul/tt08-adder-with-flow-control/tree/main) but they don't use structured data types). 

I know that there are tools that convert the SystemVerilog sources to Verilog (e.g. [sv2v](https://github.com/zachjs/sv2v)). However, that's not really the way I want to go...

## Additional features

I decided to reserve two tiles since I already had to increase the target density percentage to 62% to fit the current design to a single tile. Now, I am left with a lot of additional unused space and I am thinking about additional features to implement. Feel free to contact me if you have fun ideas or thoughts, by opening an issue or by mail. 

### Let the mimosa talk I

A SPI FRAM such as a [MB85RS64V](https://www.fujitsu.com/us/Images/MB85RS64-DS501-00012-5v0-E.pdf) could be added, preloaded with lots of phrases. Since there is already a microcontroller on the custom pcb board, one could use that to store phrases (even in different languages). By pre-partition the FRAM, one could relate the address region to certain emotions or physical states. The Mimosa would cyclically switch to a certain position in the FRAM address space and basically route the bytes stored there (the phrases) to e.g. UART or even a display. 

So, the main necessary components are 1. a SPI-reader (mode 0 or 3) that reads data from FRAM starting at a defined address, 2. an address encoder and 3. a boiler-plate module routing the information read from SPI to uart or to a display. Not trivial but it would probably fit on half a tile.

In this case, the input clock would be much faster than the model clock and the model clock would either have to be divided or an individual clock would be required (e.g. provided on an input pin). 

### Let the mimosa talk II

I used to play with mp3 decoder chips such as the [VLSI VS1053B](https://www.adafruit.com/product/1381). Even if I do not recall in detail how the data transfer from the SD card to the decoder chip was mediated, it would be fun to let the ASIC mediate it and add a speaker or headphones.

### Let the mimosa learn

Currently, there are only a few medium-term feedback mechanisms and no long-term feedback mechanisms. If the mimosa feels stressed for a prolonged period, the cortisol level increases and takes time to drop again. Moreover, if the mimosa is both starving and exhausted, recovery will take quite a while because the mimosa tends to sleep in while eating. However, this is not really what I'd call 'learning.' 

A long-lasting feedback mechanism would be interesting. Currently, I have only loose ideas, such as implementing 'basic trust' - Urvertrauen, a concept from childhood psychology and attachment theory. Regular feeding, not feeling alone, engaging in meaningful interactions with the caregiver, and healthy sleep should all contribute to a strengthened bond and, in the long term, lead to successful social interactions. Neglect or harmful interactions, on the other hand, should result in increasingly difficult social interactions over time. In the latter case, the mimosa could react to physical contact or conversations with unexpected harsh emotions (anger, boredom) or generally exhibit higher tendency to depressive states.