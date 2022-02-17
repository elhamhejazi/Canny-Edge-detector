clear;clc;

Org_Img = imread('lena.bmp');
image01= edge(Org_Img,'canny');

%canny with different threshols
%canny edge detector Thresh=0.04
Tresh1 = edge(Org_Img,'canny',0.04); 
%canny edge detector Thresh=0.14
Tresh2=edge(Org_Img,'canny',0.14); 
%canny edge detector Thresh=0.7
Tresh3=edge(Org_Img,'canny',0.7); 
%canny edge detector Thresh=0.96
Tresh4=edge(Org_Img,'canny',0.96); 

%Canny with Thresh=0.1 and different Sigmas
%sigma=0.2
Sigma1=edge(Org_Img,'canny',0.1,0.2);
%sigma=1.6
Sigma2=edge(Org_Img,'canny',0.1,1.6);
%sigma=6
Sigma3=edge(Org_Img,'canny',0.1,6);
%sigma=14
Sigma4=edge(Org_Img,'canny',0.1,14); 

figure;
subplot(2,3,1); imshow(image01)
title('canny');
subplot(2,3,2); imshow(Tresh1); title('Thresh=0.04');
subplot(2,3,3); imshow(Tresh2); title('Thresh=0.14');
subplot(2,3,4); imshow(Tresh3); title('Thresh=0.7');
subplot(2,3,6); imshow(Tresh4); title('Thresh=0.96');
figure;
subplot(2,3,1); imshow(image01); title('canny');
subplot(2,3,2); imshow(Sigma1); title('Thresh=0.1 , Sigma1=0.2');
subplot(2,3,3); imshow(Sigma2); title('Thresh=0.1 , Sigma1=1.6');
subplot(2,3,4); imshow(Sigma3); title('Thresh=0.1 , Sigma1=6');
subplot(2,3,6); imshow(Sigma4); title('Thresh=0.1 , Sigma1=14');
