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
 
module n2tmux16(
    input [15:0] a,
    input [15:0] b,
    input sel,
    output [15:0] out
    );

n2tmux mux_a(.a(a[0]),.b(b[0]),.sel(sel),.out(out[0]));
n2tmux mux_b(.a(a[1]),.b(b[1]),.sel(sel),.out(out[1]));
n2tmux mux_c(.a(a[2]),.b(b[2]),.sel(sel),.out(out[2]));
n2tmux mux_d(.a(a[3]),.b(b[3]),.sel(sel),.out(out[3]));
n2tmux mux_e(.a(a[4]),.b(b[4]),.sel(sel),.out(out[4]));
n2tmux mux_f(.a(a[5]),.b(b[5]),.sel(sel),.out(out[5]));
n2tmux mux_g(.a(a[6]),.b(b[6]),.sel(sel),.out(out[6]));
n2tmux mux_h(.a(a[7]),.b(b[7]),.sel(sel),.out(out[7]));
n2tmux mux_i(.a(a[8]),.b(b[8]),.sel(sel),.out(out[8]));
n2tmux mux_j(.a(a[9]),.b(b[9]),.sel(sel),.out(out[9]));
n2tmux mux_k(.a(a[10]),.b(b[10]),.sel(sel),.out(out[10]));
n2tmux mux_l(.a(a[11]),.b(b[11]),.sel(sel),.out(out[11]));
n2tmux mux_m(.a(a[12]),.b(b[12]),.sel(sel),.out(out[12]));
n2tmux mux_n(.a(a[13]),.b(b[13]),.sel(sel),.out(out[13]));
n2tmux mux_o(.a(a[14]),.b(b[14]),.sel(sel),.out(out[14]));
n2tmux mux_p(.a(a[15]),.b(b[15]),.sel(sel),.out(out[15]));

endmodule