close all
clear all

basis8 = [1 -1 0 0 0 0 0 0 ];
basis7 = [0 0 1 -1 0 0 0 0 ];
basis6 = [0 0 0 0 1 -1 0 0 ];
basis5 = [0 0 0 0 0 0 1 -1];
basis4 = [1 1 -1 -1 0 0 0 0];
basis3 = [0 0 0 0 1 1 -1 -1];
basis2 = [1 1 1 1 -1 -1 -1 -1];
basis1 = [1 1 1 1 1 1 1 1];

self1 = basis1*basis1';
self2 = basis2*basis2';
self3 = basis3*basis3';
self4 = basis4*basis4';
self5 = basis5*basis5';
self6 = basis6*basis6';
self7 = basis7*basis7';
self8 = basis8*basis8';

other1 = basis1*basis2';