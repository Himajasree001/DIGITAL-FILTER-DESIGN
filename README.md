# DIGITAL-FILTER-DESIGN

*COMPANY*: CODTECH IT SOLUTIONS

*NAME*: UPPU HIMAJASREE

*INTERN ID*: CT08DN217

*DOMAIN*: VLSI

*DURATION*: 8 WEEKS

*MENTOR*: NEELA SANTOSH

Task Name: Design and Simulation of a 3-Tap FIR Filter Using Verilog

As part of my internship, I was assigned the task of designing and simulating a Finite Impulse Response (FIR) filter using the Verilog hardware description language. The project was completed entirely on EDA Playground, an online browser-based platform that supports a wide range of Verilog and VHDL simulators such as ModelSim and Icarus Verilog. EDA Playground provides an efficient and interactive environment to write, compile, and simulate digital designs. It also allows users to visualize waveforms, which is extremely useful for verifying and debugging hardware behavior. For this task, Verilog was chosen due to its capability to model hardware in a precise, cycle-accurate way, and the simulation was performed using the waveform analysis features built into EDA Playground.

The primary goal of the project was to design a 3-tap FIR filter, a fundamental component in many digital signal processing applications. The filter was modeled using three coefficients: h0, h1, and h2, which were set as parameters so they could be easily adjusted later. These coefficients were used to multiply the current and previous input samples to produce a weighted sum, which is the essence of FIR filtering. The design maintained a small internal delay line—implemented using three registers (x_reg0, x_reg1, and x_reg2)—to store the last three input samples. On each rising edge of the clock, the input was shifted through the delay line, and the output was computed using the standard FIR equation:
y[n] = h0·x[n] + h1·x[n−1] + h2·x[n−2].
To ensure correct behavior during startup, a reset signal (rst) was used to initialize all registers to zero before any computation began.

Once the FIR filter design was implemented, I created a testbench to verify its functionality under simulation. The testbench provided a clock signal that toggled every 5 time units and also included a reset sequence at the start. After the reset, a series of predefined input values (1, 2, 3, 4, 0) were fed into the filter, with each sample applied for one clock cycle. The $dumpfile and $dumpvars system tasks were used to create a VCD (Value Change Dump) file, which enabled the examination of signal transitions and output behavior via waveform viewing tools. This allowed me to verify that the output (y_out) correctly followed the expected values as per the FIR filtering operation.

This task helped reinforce the practical understanding of how digital filters are implemented in hardware and how simulation plays a vital role in verifying design correctness before deployment on physical devices. FIR filters are widely used in real-world applications such as audio and speech processing, image enhancement, wireless communication, biomedical signal filtering, and more. The modular and parameterized nature of the design also makes it reusable and scalable for more complex filtering applications. Additionally, by completing this task, I strengthened my skills in Verilog coding, testbench development, and waveform analysis—all of which are essential competencies in digital system design and verification. In academic environments, this type of project is often used to introduce students to signal processing in hardware, and in industry, similar FIR filters are part of larger signal processing chains in FPGAs or ASICs. Overall, this task provided valuable insight into the intersection of digital logic and signal processing through hands-on learning and simulation.

*OUTPUT*

![Image](https://github.com/user-attachments/assets/f8f91033-91ff-4737-82d5-06caac72df53)




