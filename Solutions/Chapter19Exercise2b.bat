:: Objective: This batch file creates an animation .avi from a sequence of frames .png.
:: Author: Chris B. Kirov
:: Date: 01.11.2017

:: change current directory to the location of the frames.
D:
cd D:\\Matlab Projects\\Intro to MATLAB - Octave\\Ch19Ex2Frames

:: use mencoder to stitch them together into a movie stored in the directory of the frames.
mencoder mf://*.png -mf w=640 :h=480:fps=25:type=png -ovc lavc -lavcopts vcodec=mpeg4:mbd=2:trell -oac copy -o LorenzAttractorSimulation.avi

PAUSE