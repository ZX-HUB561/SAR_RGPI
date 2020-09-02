%% The source codes of RGPI are provided by Xiaoshuang Ma, Anhui University, ChinaÅC 2020.
%% See the reference "A Referenceless Edge Preservation Assessment Index for SAR Filters under Bayesian Framework Based on the Ratio Gradient", IEEE TGRS.
clc
clear all
close all
L=input('nominal number of looks of the speckled data: ');
w=9;  % pixel number of the patch

 addpath('data/Building','data/TerraSAR','data/ALOS','data/AirSAR');
 %% load the speckled and filtered SAR data, all in intensity format
 load ALOS_noisy
 load ALOS_BM3D
 x_noisy=ALOS_noisy; x_filtered =ALOS_BM3D;

 figure,imshow(x_filtered.^0.5);  
ratio=x_noisy./x_filtered; 
figure,imshow(ratio); 

tic
RGPI_value=RGPI(x_noisy,x_filtered,L,w)   
toc