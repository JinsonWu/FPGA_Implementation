# FPGA_Implementation
Field programmable gate array (FPGA) board is now commonly-used in the industry to implement primary logics or testing. Powerful FPGA board is able to handle tasks like the general personal computer. Here, I presented several small projects and a cross-platform project concerning analogue-to-digital and digital-to-analogue (ADDA) on FPGA. Since the content about simple FPGA codes are everywhere on the internet, I will mainly focus on the description on the ADDA final project (Music Mixer). 

## Music Mixer
We attempted to devise a self-made music mixer based on Xilinx Nexys 4 board (not actually a pretty good one now lol). Below is the brief flow chart about the music mixer. At the outset, input signal from guitar would be transmitted to analog amplifier for better usage in the following sections. Then, analogue-to-digital converter on the FPGA port processed the amplified signal into the board. Later on, we duplicated the signals and designed several functions, e.g. echoing and voice effect, through verilog and matlab. Digital-to-analogue converter brings out the processed signals, followed by is class-D amplifier since we realized that the output signal was influenced to be too small. Eventually, our self-made music mixer was completed with tons of efforts. Details will be introduced in the succeeding parts.

<img src="./Final_Project_Music_Mixer/Flow-Chart.png" width="600" heigh="300">

*This is a small trailer of our music mixer: https://www.youtube.com/watch?v=UJXtSgm3TtA*

### Analog Amplifier
Our analog amplifier is referred to a classic model, BOSS DS1. Input signal has preliminary filtering and amplified here. The clean signal then transmits to FPGA board through ADDA IP provided by the board. 

<img src="./Final_Project_Music_Mixer/BOSS_DS1.jpg" width="900" height="250">


### ADDA Transform
We did ADDA transform twice in this project. The first one utilized fast fourier transform (FFT) based on discrete fourier transform (DFT) to produce desired signal. The sampling bit was set to be 12. The other one cascading after the FPGA board applied pulse-width modulation (PWM) to output digital signal. We split a cycle into 512 (9-bit) and configured the values. However, we realized the intrinsic ADDA IP had some problems that drew a negative impact on the signal. Thus, following signal filtering was required after each ADDA transform.


### Signal Filtering and Voice Effect
Digital signal filtering and voice effect production were performed on the Xilinx FPGA board. It should fetch the sound in the interval of frequency that audible by human ears. Subsequently, we designed a finite impulse response (FIR) according to the parameters acquired by matlab, succeeded by voice effects. There were echos, volume increase or decrease, and some metal-like effects. 


### Class-D Amplifier
This class-D amplifier was to better present the signal after PWM since singal passed through FPGA ports would be "corrupted". It was necessary to concatenate a filtering amplifier at the final stage.


## Contact Info
Author: Chun-Sheng Wu, MS student in Computer Engineering @ Texas A&M University  
Email: jinsonwu@tamu.edu  
LinkedIn: https://www.linkedin.com/in/chunshengwu/
  
*This project was in collaboration with Yu-Chen Luo in National Chiao Tung University, 2019*
