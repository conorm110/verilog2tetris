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

module dmux_8_way(
    input       in,
    input [2:0] select,
    output      a,
    output      b,
    output      c,
    output      d,
    output      e,
    output      f,
    output      g,
    output      h
);
    wire low, high;
    dmux split(in, select[2], low, high);
    dmux_4_way dmux_low_nibble(low, select[1:0], a, b, c, d);
    dmux_4_way dmux_high_nibble(high, select[1:0], e, f, g, h);

endmodule