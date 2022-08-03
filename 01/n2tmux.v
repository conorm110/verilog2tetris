/**
Copyright 2022 Conor Mika

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
**/
/*
 * Mux - Multiplexor. If sel==1 then out=b else out=a.
 *
 * IN a, b, sel;
 * OUT out;
 */

module n2tmux(
    input a,
    input b,
    input sel,
    output out
    );
wire nsel;
wire aansel;
wire basel;

assign nsel = ~sel;
assign aansel = a & nsel;
assign basel = b & sel;
assign out = aansel | basel;
endmodule