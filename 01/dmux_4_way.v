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

module dmux_4_way(
    input       in,
    input [1:0] sel,
    output      a,
    output      b,
    output      c,
    output      d
);

    wire a1;
    wire b1;
    dmux dmux_step1(in, sel[0], a1, b1);
    dmux dmux_ab(a1, sel[1], a, c);
    dmux dmux_cd(b1, sel[1], b, d);
endmodule