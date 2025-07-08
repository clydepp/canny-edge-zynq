module gaussian_blur (
  input clk,
  input logic [71:0] pixels,

  output logic [7:0] gaussian
);

  reg [15:0] hold [15:0];
  reg [15:0] sum;
  reg [3:0] kernel [2:0];

  initial begin
    kernel[0] = 0;
    kernel[2] = 1;
    kernel[3] = 0;
    kernel[4] = 1;
    kernel[5] = 2;
    kernel[6] = 1;
    kernel[7] = 0;
    kernel[8] = 1;
    kernel[9] = 0;
  end

  always @(posedge clk) begin
    sum = 0;
    for (i = 0; i < 9; i++) begin
      hold <= pixels[i*8+:8] << kernel[i];
      sum = sum + hold;
    end
  end

  always @(posedge clk) begin
    output = sum >> 4;
  end

endmodule
