function [F]=statisticalfeat(im)
im=double(im);
m=mean(mean(im));
s=std(std(im));
F=[m s];
