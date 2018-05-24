# Face-recognition-using-MATLab
Using digital image processing in MATLab a door lock is implemented

Code -

Main code

clc
clear all
close all
[fname,path]=uigetfile('.jpg','Open a face as input for training');
fname=strcat(fname,path);
im=imread(fname);
imshow(im);
title('Input face');
c=input('Enter the class(Number 1 or 2)');
F=statisticalfeat(im);
try
    load db;
    F=[F c];
    db=[db:F];
    save db.mat db;
catch
    db=[F c];
    save db.mat db;
end

%% Function for calculating statistical features

function [F]=statisticalfeat(im)
im=double(im);
m=mean(mean(im));
s=std(std(im));
F=[m s];
