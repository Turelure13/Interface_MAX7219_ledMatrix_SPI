# Interface_MAX7219_ledMatrix_SPI
This GitHub is the result of a Hardware/Software course project in 2021. The project uses two main hardware components: the altera DE0 nano SoC golden and a led Matrix with a MAX7219 driving system.

This project was produced by :
- Julien Bertieaux (Julien.BERTIEAUX@student.umons.ac.be)
- Arthur Lefebvre (Arthur.LEFEBVRE@student.umons.ac.be)

This project was realised at the University of Umons (https://web.umons.ac.be/en/) at the Faculty of engineering (https://web.umons.ac.be/fpms/en/) in the SEMI departement (https://semi.fpms.ac.be)

On this GitHub you will find in the Practical material folder:
- ultime --> it is the main folder which contains the main files needed for the project (.h file, vhd,...) 
- DE0 nano SoC golden --> this folder contains a full example including the main.c file, Makefile, top, and Platform manager for DE0 nano from our professor Dr.Ir.Carlos Alberto VALDERRAMA SAKUYAMA. This helped us verify that we were coding correctly by downloading the project and view the .v and main.c files. Watch out that the names, C and Verilog are case sensitive and that the examples do not include IO pins.
- Testbenches --> It contains our work about testbenches and was inspired by this following GitHub : https://github.com/reedaj/VHDL-MAX7219-8x8-LED-Matrix-Controller
- Ledmatrix blinking --> Inspired by https://github.com/LeHack/DE0Nano_VHDL/tree/master/src/ADC_LEDMatrix, it helped us make the ledmatrix turn on and allowed us to produce the video linked bellow 
- Documents --> These are the pdfs we used to get a better understanding on how to make the ledmatrix work
- Codes_Pic --> This folder was baseline that was given to us in order to understand how the ledmatrix can be implemented 
- Readme file completed --> This pdf file will explain in details step by step how we developped the project

The result of the project can be seen on Youtube with this link : https://www.youtube.com/watch?v=tS3sNX7nVXg
