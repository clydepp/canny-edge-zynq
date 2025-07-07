# canny-edge-zynq
## Overview
Using HDMI and a Arty Z7-20 FPGA, a canny-edge detector is implemented, with the hardware design pipelined into multiple stages. Each stage applies kernel convolution with different parameters to the image, refining and improving the display of edges. A continuous stream of frames coming from the HDMI input will be used as the preprocessed data, in order to have a real-time stream from HDMI OUT.
## Optimisations
- [ ] Pipelining the stages of the edge detection
- [ ] Using shifts in kernel convolution where possible
- [ ] Multiple engines working simultaneously for each stage
- [ ] Reducing/removing divisions from logic
- [ ] Perform each index within a kernel in parallel
- [ ] Choosing a fixed (small) kernel size
  
## Stages
### Structure
![image](https://github.com/user-attachments/assets/cc722a40-0d79-4991-baf0-44e507c2ab9b)
The processing pipeline can be seen above, each of which having 3x3 kernels which perform alterations to the pixel values, based on relations to neighbouring pixels and kernel coefficients.

### Pre/post-processing
Before sending the frames to the FPGA, frames should be sent in monochrome, with each pixel of value 0-255, representing their intensities. At the output, for frame-by-frame loading, the pipeline implemented could be batch-processed and flushed.

## Motivation
Following my year at university, I had some time using FPGAs, but I felt as if I could leverage the compute power in other ways, apart from using the gyro and end-to-end communication. This serves as a mini-project for me to get to grips with core FPGA concepts such as PL and PS, as well as getting used to the Zynq-7000 processors, all before a larger personal project with a market maker/live risk analyser. Below are some other motivations I have:
* Testing/verification using Verilator
* Practise writing testbenches
* Increasing proficiency in Verilog
* Problem solving: finding implementations best suited to the FPGAs
* Understanding memory/resource management
* Find optimistations such as parallelisation
