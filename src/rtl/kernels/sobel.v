module sobel (
  input clk,
  input logic [71:0] pixels_g,

  output logic [7:0] sobel
);

  reg [3:0] kernel_x [2:0];
  reg [3:0] kernel_y [2:0];
  reg [15:0] sum_x;
  reg [15:0] sum_y;

  initial begin
    kernel_x[0] = -1;
    kernel_x[2] = 0;
    kernel_x[3] = 1;
    kernel_x[4] = -2;
    kernel_x[5] = 0;
    kernel_x[6] = -2;
    kernel_x[7] = -1;
    kernel_x[8] = 0;
    kernel_x[9] = 1;

    kernel_y[0] = 1;
    kernel_y[1] = 2;
    kernel_y[2] = 1;
    kernel_y[3] = 0;
    kernel_y[4] = 0;
    kernel_y[5] = 0;
    kernel_y[6] = -1;
    kernel_y[7] = -2;
    kernel_y[8] = -1;
  end

function [15:0] sqrt (input [15:0] G_x, G_y);
  reg [15:0] sum;
  begin
    sum = G_x + G_y;
    
  end
endfunction

function [2:0] arctan (input [15:0] G_x, G_y);
  begin

  end
endfunction

endmodule