/*-----------------------------------------------------------------
File name     : packet_data.sv
Developers    : Brian Dickinson
Created       : 01/08/19
Description   : lab1 packet data item 
Notes         : From the Cadence "Essential SystemVerilog for UVM" training
-------------------------------------------------------------------
Copyright Cadence Design Systems (c)2019
-----------------------------------------------------------------*/

// Follow instructions in lab book
  
// add print and type policies here
typedef enum {ANY, SINGLE, MULTICAST, BROADCAST} packet_type_t;
typedef enum {HEX, DEC, BIN}
// packet class
class packet;

  // add properties here
  local string name;
  bit[3:0] target;
  bit[3:0] source;
  bit[7:0] data;
  packet_type_t ptype;

  // add constructor to set instance name and source by arguments and packet type
  function new (string name, int port)
    this.name = name;
    this.source = 4'b0001 << port;
    this.ptype = ANY;
  endfunction

  function string gettype() 
    return this.ptype.name();
  endfunction
 // add print with policy
 
endclass

