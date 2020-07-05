%% The source codes of RGPI and the test datasets are provided by Xiaoshuang Ma, Anhui University, 2020.
%% See the reference "A Referenceless Edge Preservation Assessment Index for SAR Filters under Bayesian Framework Based on the Ratio Gradient", IEEE TGRS.
clc
clear all

L=input('number of looks of the speckled data: ');
N=9;  % Pixel number of the patch

addpath('data');
 load x_noisy_real2
 load x_BM3D_real2
 x_noisy=x_noisy_real2;
 x_filtered =x_BM3D_real2;
%  figure,imshow(uint8(x_filtered.^0.5)); % show the filtered Terrasar-x data
 figure,imshow(x_filtered.^0.5);    % show the filtered ALOS data
        
ratio=x_noisy./x_filtered; 
figure,imshow(ratio); % show the ratio image 

RGPI_index=RGPI(x_noisy,x_filtered,L,N)   