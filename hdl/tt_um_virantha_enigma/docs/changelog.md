

# Changelog

## TODO
- [x] Try to reduce to one test file
- [ ] Would be nice to always output intermediate dout to lcd for debug.  use ready to drive period
- [ ] Add some clock constraints to latch writes?
- [ ] Add FSM code to load plugboard
- [ ] Clean up old amaranth test benches
- [ ] Make a sign-of-life on the LED

## V0.5
- Updated the add/sub mod 26 functions to make it more straightforward
- Antenna/DRC/LVS clean.  Worst-case slew violation is 10ps. -2.72ns WNS

## V0.4
- Update info.yaml with pinout
- Moved tiedown on display period into lcd.py

## V0.3
- Bug fix of V0.2
    - Everything is clean now
    - Docs need cleaning up (not sure why fsm svg is messing up formatting)

## V0.2
- Second version 
    - Antenna clean
    - DRC clean
    - BUG: tried to optimize stuff and gate-level netlist fails late
- Features:
    - Plugboard limited to 3 wires
    - All 5 Rotors available (I, II, III, IV, V)
    

## V0.1
- First version commit with everything clean
   - Antenna clean
   - DRC clean (including klayout npc.2)
   - Passes tests and gate-level netlist checks
- Features:
   - Full plugboard (need to reduce this to meet bit lengths for final submission)
   - User-selectable slots for Rotors (defaults to I, II, III right to left)
   - Rotors I, II, III (IV/V omitted to save area right now)
   - Fixed Reflector B
   - LCD decoder output module on uo_out
   - Main outputs:  
       - Ready = uio_out[5]
       - Output Char = uio_out[4:0]